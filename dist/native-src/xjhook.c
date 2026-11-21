#include <jni.h>
#include <android/log.h>
#include <string.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <fcntl.h>
#include <elf.h>
#include <link.h>
#include <pthread.h>
#include <sys/syscall.h>
#include <stdarg.h>
#include <errno.h>

// XJ_LOG_ENABLED=0 cho bản SHIP khách (gỡ mọi chuỗi log khỏi .so -> hết lộ cơ chế +
// chuỗi tiếng Việt/XJHOOK/maps-scrub trong strings). =1 khi cần debug.
#ifndef XJ_LOG_ENABLED
#define XJ_LOG_ENABLED 0
#endif
#if XJ_LOG_ENABLED
#define LOG(...) __android_log_print(ANDROID_LOG_ERROR, "XJHOOK", __VA_ARGS__)
#else
#define LOG(...) ((void)0)
#endif

// ============================================================================
// XJ getCallingUid GOT-hook (fix GMS bqxj.a "Caller is not trusted" trong ao hoa)
// ----------------------------------------------------------------------------
// Van de: trong cell ao, Binder.getCallingUid() (-> IPCThreadState::getCallingUid)
// tra uid HOST that (vd 10389) vi KHONG duoc engine ao hoa cho binder GMS->GMS,
// nhung Process.myUid() da bi engine fake thanh buid (vd 10002). GMS bqxj.a check
// getCallingUid()==myUid() => 10389!=10002 => throw SecurityException.
//
// Fix: hook GOT slot cua getCallingUid trong libandroid_runtime.so (chi anh huong
// duong Java Binder.getCallingUid(), KHONG dong toi C++ noi bo libbinder/engine).
// Khi caller la process GMS-family (cmdline bat dau "com.google.android.gms") =>
// tra buid da fake (== Process.myUid()) de self-check PASS. Caller khac (vd TikTok
// com.zhiliaoapp.musically) => tra uid that => GIU attribution package<->uid.
// Chi cai trong process GMS-family.
// ============================================================================
#define GMS_PREFIX "com.google.android.gms"
#define SYM_GCU "_ZNK7android14IPCThreadState13getCallingUidEv"
#define SYM_GCP "_ZNK7android14IPCThreadState13getCallingPidEv"

#define HOST_PREFIX "com.rekoo.pubgm"   // ten process giai doan dau (truoc setArgV0)

static JavaVM* g_vm = 0;
static int   g_buid = -1;          // faked uid (== Process.myUid()); lay LAZY luc chay
static pid_t g_mypid = 0;
static int   g_self_gms = -1;      // -1 chua quyet dinh, 0 khong phai, 1 la GMS
static int  (*real_gcu)(void*) = 0; // IPCThreadState::getCallingUid(this)
static int  (*real_gcp)(void*) = 0; // IPCThreadState::getCallingPid(this)

// Lay faked Process.myUid() qua JNI (luc nativeInit chua fake xong nen phai lazy o runtime).
static int fetch_myuid() {
    if (!g_vm) return -1;
    JNIEnv* env = 0;
    int attached = 0;
    if ((*g_vm)->GetEnv(g_vm, (void**) &env, JNI_VERSION_1_6) != JNI_OK || !env) {
        if ((*g_vm)->AttachCurrentThread(g_vm, &env, 0) != JNI_OK || !env) return -1;
        attached = 1;
    }
    int r = -1;
    jclass pc = (*env)->FindClass(env, "android/os/Process");
    if (pc) {
        jmethodID m = (*env)->GetStaticMethodID(env, pc, "myUid", "()I");
        if (m) r = (*env)->CallStaticIntMethod(env, pc, m);
        (*env)->DeleteLocalRef(env, pc);
    }
    if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
    if (attached) (*g_vm)->DetachCurrentThread(g_vm);
    return r;
}

// doc /proc/<pid>/cmdline vao buf (NUL-term). Tra do dai, 0 neu that bai.
static int read_cmdline(pid_t pid, char* buf, int cap) {
    char path[64];
    if (pid == 0) snprintf(path, sizeof(path), "/proc/self/cmdline");
    else snprintf(path, sizeof(path), "/proc/%d/cmdline", (int) pid);
    int fd = open(path, O_RDONLY);
    if (fd < 0) return 0;
    ssize_t n = read(fd, buf, cap - 1);
    close(fd);
    if (n <= 0) return 0;
    buf[n] = 0; // argv0 da NUL-term; buf = ten process
    return (int) n;
}

#define STARTS(b,p) (strncmp((b),(p),sizeof(p)-1)==0)

static int pid_is_gms(pid_t pid) {
    char buf[128];
    if (!read_cmdline(pid, buf, sizeof(buf))) return 0;
    return STARTS(buf, GMS_PREFIX);
}

// self co phai process GMS? Luu y: nativeInit chay TRUOC setArgV0, nen luc dau
// cmdline con la ten host (com.rekoo.pubgm). Chi CHOT (cache) khi ten ao da duoc dat.
static int self_is_gms() {
    if (g_self_gms >= 0) return g_self_gms;      // da chot
    char buf[128];
    if (!read_cmdline(0, buf, sizeof(buf))) return 0;
    if (STARTS(buf, HOST_PREFIX)) return 0;      // con giai doan host -> chua chot
    g_self_gms = STARTS(buf, GMS_PREFIX) ? 1 : 0; // ten ao da dat -> chot vinh vien
    return g_self_gms;
}

// Thread nen lay faked Process.myUid() MOT LAN, luu vao g_buid. CHAY TREN THREAD RIENG
// (khong phai thread binder) nen JNI an toan - KHAC voi goi JNI ngay trong hook getCallingUid
// tren thread binder (lam ART WalkStack dung lop hook engine libvanta -> SIGSEGV).
// Phat hien uid DA fake: Process.myUid() (faked, vd 10002) KHAC getuid() (host that, vd 10325).
static void* buid_fetcher(void* arg) {
    (void) arg;
    int real = (int) syscall(__NR_getuid);   // uid HOST that, khong qua ham getuid da patch
    for (int i = 0; i < 200; i++) {          // toi da ~30s cho engine fake xong uid
        int m = fetch_myuid();
        if (m >= 10000 && m != real) {
            g_buid = m;
            LOG("gcu: bg buid=%d (real=%d) -> GMS self-trust ON", m, real);
            return 0;
        }
        usleep(150000);
    }
    LOG("gcu: bg buid khong khac real uid sau ~30s (real=%d) -> khong bat self-trust", real);
    return 0;
}

// thay the cho Binder.getCallingUid() (duong Java, qua GOT libandroid_runtime)
// KHONG lam JNI o day (chay tren thread binder): chi DOC g_buid da duoc buid_fetcher cache.
static int my_getCallingUid(void* thiz) {
    int uid = real_gcu ? real_gcu(thiz) : -1;
    if (g_buid < 10000) return uid;        // buid chua san sang -> uid that
    if (!self_is_gms()) return uid;        // process khong phai GMS -> nguyen ban
    if (!real_gcp) return uid;
    int pid = real_gcp(thiz);
    if (pid == g_mypid) return uid;        // cung process (hiem) -> giu nguyen
    if (!pid_is_gms(pid)) return uid;      // caller khac (TikTok...) -> uid that (GIU attribution)
    return g_buid;                          // GMS->GMS: tra faked myUid de self-check PASS
}

// ghi con tro moi vao 1 GOT slot (xu ly RELRO bang mprotect)
static int got_write(void** slot, void* val) {
    long ps = sysconf(_SC_PAGESIZE);
    uintptr_t s = (uintptr_t) slot & ~((uintptr_t) ps - 1);
    if (mprotect((void*) s, ps, PROT_READ | PROT_WRITE) != 0) return -1;
    *slot = val;
    mprotect((void*) s, ps, PROT_READ); // RELRO lai (best-effort)
    return 0;
}

// callback dl_iterate_phdr: tim libandroid_runtime.so, parse JMPREL, hook slot getCallingUid
static int phdr_cb(struct dl_phdr_info* info, size_t size, void* data) {
    const char* nm = info->dlpi_name;
    if (!nm || !strstr(nm, "libandroid_runtime.so")) return 0;
    uintptr_t base = (uintptr_t) info->dlpi_addr;

    // tim PT_DYNAMIC
    const Elf64_Dyn* dyn = 0;
    for (int i = 0; i < info->dlpi_phnum; i++) {
        if (info->dlpi_phdr[i].p_type == PT_DYNAMIC) {
            dyn = (const Elf64_Dyn*) (base + info->dlpi_phdr[i].p_vaddr);
            break;
        }
    }
    if (!dyn) return 1;

    const Elf64_Sym* symtab = 0;
    const char* strtab = 0;
    const Elf64_Rela* jmprel = 0;
    size_t pltrelsz = 0;
    for (const Elf64_Dyn* d = dyn; d->d_tag != DT_NULL; d++) {
        switch (d->d_tag) {
            case DT_SYMTAB:  symtab = (const Elf64_Sym*) (base + d->d_un.d_ptr); break;
            case DT_STRTAB:  strtab = (const char*)      (base + d->d_un.d_ptr); break;
            case DT_JMPREL:  jmprel = (const Elf64_Rela*) (base + d->d_un.d_ptr); break;
            case DT_PLTRELSZ: pltrelsz = (size_t) d->d_un.d_val; break;
            default: break;
        }
    }
    if (!symtab || !strtab || !jmprel || !pltrelsz) { LOG("gcu: dyn thieu"); return 1; }

    // Tim CA 2 slot: getCallingUid (se hook) va getCallingPid (chi doc de lay ham that).
    // GOT da resolve san (BIND_NOW) nen gia tri slot CHINH LA dia chi ham that trong
    // libbinder -> khoi can dlsym/dlopen (bi chan boi namespace trong sandbox).
    size_t n = pltrelsz / sizeof(Elf64_Rela);
    void** gcu_slot = 0;
    for (size_t i = 0; i < n; i++) {
        uint32_t si = (uint32_t) ELF64_R_SYM(jmprel[i].r_info);
        const char* name = strtab + symtab[si].st_name;
        void** slot = (void**) (base + jmprel[i].r_offset);
        if (strcmp(name, SYM_GCU) == 0) { gcu_slot = slot; real_gcu = (int (*)(void*)) *slot; }
        else if (strcmp(name, SYM_GCP) == 0) { real_gcp = (int (*)(void*)) *slot; }
    }
    if (!gcu_slot || !real_gcu || !real_gcp) {
        LOG("gcu: thieu slot gcu=%p real_gcu=%p real_gcp=%p", (void*) gcu_slot, (void*) real_gcu, (void*) real_gcp);
        return 1;
    }
    if (got_write(gcu_slot, (void*) my_getCallingUid) == 0)
        LOG("gcu: GOT hooked slot=%p real_gcu=%p real_gcp=%p base=%lx",
            (void*) gcu_slot, (void*) real_gcu, (void*) real_gcp, (unsigned long) base);
    else
        LOG("gcu: mprotect FAIL slot=%p", (void*) gcu_slot);
    return 1; // stop
}

static void install_gcu_hook() {
    dl_iterate_phdr(phdr_cb, 0);
}

// ============================================================================
// XJ uid-match: khop getuid()/geteuid() NATIVE voi Process.myUid() (JAVA, da faked).
// Van de: app anti-fraud doc CHEO getuid()[native] vs myUid()[java]; trong o,
// getuid()=uid HOST that (vd 10325) khac myUid()=buid faked (vd 10002) -> co ao hoa.
// Fix: inline-patch getuid/geteuid tra g_buid (== myUid faked). Khi g_buid chua san
// sang -> tra uid THAT qua raw syscall (tranh de quy chinh ham da patch).
//
// AN TOAN ENGINE (khong doan mu): patch getuid la TOAN CUC trong process, se dong
// toi CA libvanta (engine) goi getuid native. Neu engine can uid HOST that (lam viec
// file/binder that) ma nhan buid faked -> hong. Vi vay LOC THEO RETURN-ADDRESS:
// caller nam trong libvanta.so -> luon tra uid THAT; chi .so cua app khach (TikTok,
// anti-fraud) moi nhan buid faked. Engine KHONG BAO GIO bi dung toi.
// ============================================================================
static int inline_patch(void* fn, void* hook);     // dinh nghia ben duoi (forward decl)
static uintptr_t g_vanta_lo = 0, g_vanta_hi = 0;   // [base,end) cua libvanta.so trong bo nho

// callback dl_iterate_phdr: tim libvanta.so, tinh khoang PT_LOAD [lo,hi)
static int vanta_range_cb(struct dl_phdr_info* info, size_t size, void* data) {
    (void) size; (void) data;
    const char* nm = info->dlpi_name;
    if (!nm || !strstr(nm, "libvanta.so")) return 0;
    uintptr_t base = (uintptr_t) info->dlpi_addr;
    uintptr_t lo = (uintptr_t) -1, hi = 0;
    for (int i = 0; i < info->dlpi_phnum; i++) {
        if (info->dlpi_phdr[i].p_type != PT_LOAD) continue;
        uintptr_t s = base + info->dlpi_phdr[i].p_vaddr;
        uintptr_t e = s + info->dlpi_phdr[i].p_memsz;
        if (s < lo) lo = s;
        if (e > hi) hi = e;
    }
    if (hi > lo) { g_vanta_lo = lo; g_vanta_hi = hi; }
    return 1; // stop
}

// true neu dia chi goi (return-address) nam trong libvanta.so -> caller la ENGINE
static inline int ra_in_vanta(void* ra) {
    uintptr_t a = (uintptr_t) ra;
    return (g_vanta_hi > g_vanta_lo) && a >= g_vanta_lo && a < g_vanta_hi;
}

static int my_getuid(void) {
    if (ra_in_vanta(__builtin_return_address(0))) return (int) syscall(__NR_getuid); // engine -> that
    if (self_is_gms()) return (int) syscall(__NR_getuid);   // GMS nhay uid -> giu uid that
    if (g_buid >= 10000) return g_buid;
    return (int) syscall(__NR_getuid);
}
static int my_geteuid(void) {
    if (ra_in_vanta(__builtin_return_address(0))) return (int) syscall(__NR_geteuid); // engine -> that
    if (self_is_gms()) return (int) syscall(__NR_geteuid);
    if (g_buid >= 10000) return g_buid;
    return (int) syscall(__NR_geteuid);
}
static void install_uid_hook() {
    dl_iterate_phdr(vanta_range_cb, 0);            // chot khoang libvanta TRUOC khi patch
    if (g_vanta_hi > g_vanta_lo)
        LOG("uid: vanta range [%lx,%lx)", (unsigned long) g_vanta_lo, (unsigned long) g_vanta_hi);
    else
        LOG("uid: WARN khong thay libvanta.so -> engine khong duoc mien (van an toan: chi fake khi g_buid san sang)");
    void* gu = dlsym(RTLD_DEFAULT, "getuid");
    void* ge = dlsym(RTLD_DEFAULT, "geteuid");
    if (gu) { if (inline_patch(gu, (void*) my_getuid) == 0) LOG("uid: patched getuid"); else LOG("uid: getuid FAIL"); }
    if (ge) { if (inline_patch(ge, (void*) my_geteuid) == 0) LOG("uid: patched geteuid"); else LOG("uid: geteuid FAIL"); }
}

// ---- bang spoof tu Java ----
#define MAXK 48
static char g_keys[MAXK][64];
static char g_vals[MAXK][160];
static int  g_n = 0;

static const char* spoof_lookup(const char* name) {
    if (!name) return 0;
    for (int i = 0; i < g_n; i++)
        if (strcmp(g_keys[i], name) == 0) return g_vals[i];
    return 0;
}

typedef const void prop_info;
typedef void (*pcb_t)(void*, const char*, const char*, uint32_t);

// fallback cho __system_property_get: dung find + public read_callback
static const prop_info* (*g_find)(const char*) = 0;
static void (*g_pub_rcb)(const prop_info*, pcb_t, void*) = 0;

// fallback cho read_callback: goi THANG SystemProperties::ReadCallback(this, pi, cb, cookie)
typedef void (*sysrcb_t)(void*, const prop_info*, pcb_t, void*);
static sysrcb_t g_sysReadCb = 0;
static void*    g_sysObj = 0;

// ---- my __system_property_get ----
struct cbd { char* out; int len; };
static void read_cb(void* c, const char* n, const char* v, uint32_t s) {
    struct cbd* d = (struct cbd*) c; strcpy(d->out, v); d->len = (int) strlen(v);
}
static int my_spg(const char* name, char* value) {
    const char* sp = spoof_lookup(name);
    if (sp) { strcpy(value, sp); return (int) strlen(sp); }
    if (g_find && g_pub_rcb) {
        const prop_info* pi = g_find(name);
        if (!pi) { value[0] = 0; return 0; }
        struct cbd d = { value, 0 };
        g_pub_rcb(pi, read_cb, &d);
        return d.len;
    }
    value[0] = 0; return 0;
}

// ---- my __system_property_read_callback ----
struct wrap { pcb_t cb; void* cookie; };
static void wrap_cb(void* c, const char* name, const char* value, uint32_t serial) {
    struct wrap* w = (struct wrap*) c;
    const char* sp = spoof_lookup(name);
    w->cb(w->cookie, name, sp ? sp : value, serial);
}
static void my_rcb(const prop_info* pi, pcb_t cb, void* cookie) {
    if (g_sysReadCb && g_sysObj) {
        struct wrap w = { cb, cookie };
        g_sysReadCb(g_sysObj, pi, wrap_cb, &w);
    }
}

// ---- decode arm64 ----
static uint64_t dec_adrp_add(uintptr_t pc_adrp, uint32_t adrp, uint32_t add) {
    int64_t immlo = (adrp >> 29) & 0x3;
    int64_t immhi = (adrp >> 5) & 0x7FFFF;
    int64_t imm = (immhi << 2) | immlo;
    if (imm & (1LL << 20)) imm |= ~((1LL << 21) - 1);
    uint64_t base = (pc_adrp & ~0xFFFULL) + (uint64_t)(imm << 12);
    uint64_t addimm = (add >> 10) & 0xFFF;
    return base + addimm;
}
static uintptr_t dec_b(uintptr_t pc_b, uint32_t b) {
    int64_t imm = b & 0x3FFFFFF;
    if (imm & (1LL << 25)) imm |= ~((1LL << 26) - 1);
    return pc_b + (uintptr_t)(imm << 2);
}

static int inline_patch(void* fn, void* hook) {
    uint32_t* p = (uint32_t*) fn;
    int w = (p[0] == 0xd503245f) ? 1 : 0;
    uint32_t* patch = p + w;
    uint32_t code[4];
    code[0] = 0x58000050; // ldr x16,#8
    code[1] = 0xd61f0200; // br x16
    uint64_t a = (uint64_t) hook;
    memcpy(&code[2], &a, 8);
    long ps = sysconf(_SC_PAGESIZE);
    uintptr_t s = (uintptr_t) patch & ~((uintptr_t) ps - 1);
    uintptr_t e = ((uintptr_t) patch + 16 + ps - 1) & ~((uintptr_t) ps - 1);
    if (mprotect((void*) s, e - s, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) return -1;
    memcpy(patch, code, 16);
    __builtin___clear_cache((char*) patch, (char*) patch + 16);
    mprotect((void*) s, e - s, PROT_READ | PROT_EXEC);
    return 0;
}

static void install() {
    void* spg = dlsym(RTLD_DEFAULT, "__system_property_get");
    void* src = dlsym(RTLD_DEFAULT, "__system_property_read_callback");
    g_find    = (const prop_info* (*)(const char*)) dlsym(RTLD_DEFAULT, "__system_property_find");
    g_pub_rcb = (void (*)(const prop_info*, pcb_t, void*)) src;

    if (src) {
        // decode obj + ReadCallback tu prologue (truoc khi patch)
        uint32_t* p = (uint32_t*) src;
        int w = (p[0] == 0xd503245f) ? 1 : 0;
        // adrp @ p[w], add @ p[w+1], b @ ... tim lenh b (0x14 << 26 == 0x05000000)
        g_sysObj = (void*) dec_adrp_add((uintptr_t)(p + w), p[w], p[w + 1]);
        for (int i = w + 2; i < w + 10; i++) {
            if ((p[i] & 0xFC000000) == 0x14000000) { // unconditional B
                g_sysReadCb = (sysrcb_t) dec_b((uintptr_t)(p + i), p[i]);
                break;
            }
        }
        LOG("rcb obj=%p ReadCallback=%p", g_sysObj, (void*) g_sysReadCb);
        if (g_sysObj && g_sysReadCb) {
            if (inline_patch(src, (void*) my_rcb) == 0) LOG("patched read_callback");
            else LOG("patch read_callback FAIL");
        }
    }
    if (spg) {
        if (inline_patch(spg, (void*) my_spg) == 0) LOG("patched spg keys=%d", g_n);
        else LOG("patch spg FAIL");
    }
}

// ============================================================================
// XJ maps-scrub: che /proc/self/maps (+smaps) khoi lo libxjhook.so/libvanta.so +
// path host com.rekoo.pubgm. Hook openat/open qua GOT trong cac .so app khach.
// Khi app doc maps -> tra 1 memfd chua ban DA LOC. KHONG dung inline-patch (tranh
// ABI variadic); GOT-write chi doi con tro (giong getCallingUid da chay on dinh).
// ============================================================================
#ifndef __NR_memfd_create
#define __NR_memfd_create 279
#endif
// real = raw syscall (KHONG goi ham da inline-patch -> het de quy), tra fd / -1+errno.
static int raw_openat(int dirfd, const char* path, int flags, mode_t mode) {
    long r = syscall(__NR_openat, dirfd, path, flags, mode);
    if (r < 0) { errno = (int) -r; return -1; }
    return (int) r;
}
static char g_guestpkg[160] = {0};
static int  g_gpk_done = 0;

static int xj_is_maps(const char* p) {
    if (!p || !strstr(p, "/proc/")) return 0;
    size_t L = strlen(p);
    if (L >= 5 && strcmp(p + L - 5, "/maps") == 0) return 1;
    if (L >= 6 && strcmp(p + L - 6, "/smaps") == 0) return 1;
    return 0;
}
static char* xj_read_all(int fd, size_t* outlen) {
    size_t cap = 1 << 16, len = 0;
    char* buf = (char*) malloc(cap);
    if (!buf) return 0;
    for (;;) {
        if (len + 4096 + 1 > cap) { cap <<= 1; char* nb = (char*) realloc(buf, cap); if (!nb) { free(buf); return 0; } buf = nb; }
        ssize_t r = read(fd, buf + len, 4096);
        if (r <= 0) break;
        len += (size_t) r;
    }
    buf[len] = 0;
    if (outlen) *outlen = len;
    return buf;
}
// bo dong co libxjhook/libvanta; thay com.rekoo.pubgm -> guest pkg.
static char* xj_filter_maps(const char* in) {
    size_t cap = strlen(in) + 256, o = 0;
    char* out = (char*) malloc(cap);
    if (!out) return 0;
    const char* line = in;
    while (*line) {
        const char* nl = strchr(line, '\n');
        size_t llen = nl ? (size_t)(nl - line + 1) : strlen(line);
        int drop = 0;
        for (size_t i = 0; i + 9 <= llen; i++) if (memcmp(line + i, "libxjhook", 9) == 0) { drop = 1; break; }
        if (!drop) for (size_t i = 0; i + 8 <= llen; i++) if (memcmp(line + i, "libvanta", 8) == 0) { drop = 1; break; }
        if (!drop) {
            for (size_t i = 0; i < llen; ) {
                int rep = (g_guestpkg[0] && i + 15 <= llen && memcmp(line + i, "com.rekoo.pubgm", 15) == 0);
                size_t need = rep ? strlen(g_guestpkg) : 1;
                if (o + need + 2 > cap) { cap = (o + need + llen + 256) * 2; char* nb = (char*) realloc(out, cap); if (!nb) { free(out); return 0; } out = nb; }
                if (rep) { size_t gl = strlen(g_guestpkg); memcpy(out + o, g_guestpkg, gl); o += gl; i += 15; }
                else out[o++] = line[i++];
            }
        }
        line += llen;
    }
    out[o] = 0;
    return out;
}
static int xj_maps_memfd(int dirfd, const char* path, int flags) {
    if (!xj_is_maps(path) || (flags & (O_WRONLY | O_RDWR))) return -1;
    // Doc ten goi GUEST (sau setArgV0 moi khac com.rekoo.pubgm) -> cache khi da doi.
    if (g_guestpkg[0] == 0 || strncmp(g_guestpkg, "com.rekoo.pubgm", 15) == 0) {
        char tmp[160] = {0};
        read_cmdline(0, tmp, sizeof(tmp));
        if (tmp[0] && strncmp(tmp, "com.rekoo.pubgm", 15) != 0) {
            strncpy(g_guestpkg, tmp, sizeof(g_guestpkg) - 1);
            g_guestpkg[sizeof(g_guestpkg) - 1] = 0;
        }
    }
    int rfd = raw_openat(dirfd, path, O_RDONLY, 0);
    if (rfd < 0) return -1;
    size_t len = 0;
    char* buf = xj_read_all(rfd, &len);
    close(rfd);
    if (!buf) return -1;
    char* filt = xj_filter_maps(buf);
    free(buf);
    if (!filt) return -1;
    int mfd = (int) syscall(__NR_memfd_create, "m", 0);
    if (mfd >= 0) { size_t fl = strlen(filt); ssize_t w = write(mfd, filt, fl); (void) w; lseek(mfd, 0, SEEK_SET); }
    free(filt);
    return mfd;
}
static int my_openat(int dirfd, const char* path, int flags, ...) {
    mode_t mode = 0;
    if (flags & O_CREAT) { va_list ap; va_start(ap, flags); mode = (mode_t) va_arg(ap, int); va_end(ap); }
    int mfd = xj_maps_memfd(dirfd, path, flags);
    if (mfd >= 0) return mfd;
    return raw_openat(dirfd, path, flags, mode);
}
static int my_open(const char* path, int flags, ...) {
    mode_t mode = 0;
    if (flags & O_CREAT) { va_list ap; va_start(ap, flags); mode = (mode_t) va_arg(ap, int); va_end(ap); }
    int mfd = xj_maps_memfd(AT_FDCWD, path, flags);
    if (mfd >= 0) return mfd;
    return raw_openat(AT_FDCWD, path, flags, mode);
}
#if XJ_LOG_ENABLED
static void maps_selftest_delayed(void) {
    int tfd = openat(AT_FDCWD, "/proc/self/maps", O_RDONLY);
    if (tfd < 0) return;
    char* buf = xj_read_all(tfd, 0);
    close(tfd);
    if (!buf) return;
    int cx = 0, cv = 0, cr = 0; char* p;
    for (p = buf; (p = strstr(p, "libxjhook")); p += 9) cx++;
    for (p = buf; (p = strstr(p, "libvanta")); p += 8) cv++;
    for (p = buf; (p = strstr(p, "com.rekoo.pubgm")); p += 15) cr++;
    LOG("maps-scrub SELFTEST(tre): libxjhook=%d libvanta=%d rekoo=%d guestpkg=%s", cx, cv, cr, g_guestpkg);
    free(buf);
}
static void* selftest_thread(void* a) { (void) a; sleep(4); maps_selftest_delayed(); return 0; }
#endif

static void install_openat_hook() {
    // inline-patch openat + open (libc public symbol) -> toan cuc, bat ca .so nap SAU
    // (anti-cheat TikTok nap tre). real = raw syscall (khong goi ham da patch).
    void* fo  = dlsym(RTLD_DEFAULT, "openat");
    void* fop = dlsym(RTLD_DEFAULT, "open");
    int a = fo  ? inline_patch(fo,  (void*) my_openat) : -1;
    int b = fop ? inline_patch(fop, (void*) my_open)   : -1;
    LOG("maps-scrub: patch openat=%d open=%d (fo=%p fop=%p)", a, b, fo, fop);
#if XJ_LOG_ENABLED
    // SELF-TEST (chi khi debug): doc /proc/self/maps qua openat da patch -> phai 0 libxjhook/libvanta
    int tfd = openat(AT_FDCWD, "/proc/self/maps", O_RDONLY);
    if (tfd >= 0) {
        char* buf = xj_read_all(tfd, 0);
        close(tfd);
        if (buf) {
            int cx = 0, cv = 0, cr = 0; char* p;
            for (p = buf; (p = strstr(p, "libxjhook")); p += 9) cx++;
            for (p = buf; (p = strstr(p, "libvanta")); p += 8) cv++;
            for (p = buf; (p = strstr(p, "com.rekoo.pubgm")); p += 15) cr++;
            LOG("maps-scrub SELFTEST: libxjhook=%d libvanta=%d rekoo=%d (rekoo>0 o nativeInit la binh thuong-chua setArgV0)", cx, cv, cr);
            free(buf);
        }
    }
    pthread_t tst;
    if (pthread_create(&tst, 0, selftest_thread, 0) == 0) pthread_detach(tst);
#endif
}

// XJ: ham init KHONG export symbol "Java_io_vanta_..." (an dau vet trong .so).
// Dang ky DONG qua RegisterNatives trong JNI_OnLoad -> llvm-nm chi thay JNI_OnLoad.
static void xj_native_init(JNIEnv* env, jclass c, jint uid, jstring host,
        jobjectArray keys, jobjectArray vals);

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* r) {
    g_vm = vm;
    JNIEnv* env = 0;
    if ((*vm)->GetEnv(vm, (void**) &env, JNI_VERSION_1_6) == JNI_OK && env) {
        jclass c = (*env)->FindClass(env, "io/vanta/fake/XJProfile");
        if (c) {
            JNINativeMethod m;
            m.name = "nativeInit";
            m.signature = "(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V";
            m.fnPtr = (void*) xj_native_init;
            (*env)->RegisterNatives(env, c, &m, 1);
            if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
            (*env)->DeleteLocalRef(env, c);
        } else if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
    }
    return JNI_VERSION_1_6;
}

static void xj_native_init(
        JNIEnv* env, jclass c, jint uid, jstring host,
        jobjectArray keys, jobjectArray vals) {
    jsize n = (*env)->GetArrayLength(env, keys);
    if (n > MAXK) n = MAXK;
    g_n = 0;
    for (jsize i = 0; i < n; i++) {
        jstring jk = (jstring)(*env)->GetObjectArrayElement(env, keys, i);
        jstring jv = (jstring)(*env)->GetObjectArrayElement(env, vals, i);
        const char* k = (*env)->GetStringUTFChars(env, jk, 0);
        const char* v = (*env)->GetStringUTFChars(env, jv, 0);
        strncpy(g_keys[g_n], k, 63);
        strncpy(g_vals[g_n], v, 159);
        g_n++;
        (*env)->ReleaseStringUTFChars(env, jk, k);
        (*env)->ReleaseStringUTFChars(env, jv, v);
        (*env)->DeleteLocalRef(env, jk);
        (*env)->DeleteLocalRef(env, jv);
    }
    LOG("nativeInit uid=%d keys=%d", uid, g_n);
    install();

    // --- XJ getCallingUid hook ---
    // Cai o MOI process (nhu ban goc). KHONG gate theo uid: moi tien trinh GMS trong o
    // deu nhan nativeInit uid=0, gate uid se LAM MAT fix caller-trust o TAT CA GMS.
    // Crash cu (SIGSEGV @0x4 trong tien trinh GMS :p1 host provider chimera) la do DE QUY:
    // my_getCallingUid -> fetch_myuid (JNI Process.myUid) -> engine hook -> getCallingUid
    // (GOT slot) -> my_getCallingUid ... moi tang 1 StackVisitor::WalkStack -> stack overflow.
    // Da chan bang __thread g_in_gcu guard trong my_getCallingUid (tai-nhap tra uid that ngay,
    // khong goi lai fetch_myuid) -> het de quy, giu nguyen hook caller-trust.
    if (!g_vm) (*env)->GetJavaVM(env, &g_vm);
    g_mypid = getpid();
    LOG("gcu: pid=%d uid=%d -> cai GOT hook", (int) getpid(), uid);
    install_gcu_hook();
    // Lay faked myUid tren thread nen (JNI an toan, khong phai thread binder).
    pthread_t th;
    if (pthread_create(&th, 0, buid_fetcher, 0) == 0) pthread_detach(th);
    else LOG("gcu: pthread_create buid_fetcher FAIL");

    // --- XJ uid-match hook (getuid/geteuid == myUid faked) ---
    install_uid_hook();

    // --- XJ maps-scrub: che /proc/self/maps khoi lo libxjhook/libvanta/com.rekoo.pubgm ---
    install_openat_hook();

    // --- XJ native timezone JST (bionic localtime/tzset uu tien TZ env truoc prop;
    //     Java da setDefault Asia/Tokyo, nhung native localtime() can TZ env cho khop) ---
    setenv("TZ", "JST-9", 1);
    tzset();
}
