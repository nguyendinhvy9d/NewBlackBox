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

#define LOG(...) __android_log_print(ANDROID_LOG_ERROR, "XJHOOK", __VA_ARGS__)

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

// thay the cho Binder.getCallingUid() (duong Java, qua GOT libandroid_runtime)
static __thread int g_in_gcu = 0;   // chong tai-nhap (re-entrancy) tren cung thread
static int my_getCallingUid(void* thiz) {
    int uid = real_gcu ? real_gcu(thiz) : -1;
    // Neu da o trong my_getCallingUid tren thread nay (vi fetch_myuid -> Process.myUid
    // -> ART -> binder -> getCallingUid quay lai), tra uid that NGAY, khong lam JNI nua
    // -> cat vong lap/ngan crash.
    if (g_in_gcu) return uid;
    if (!self_is_gms()) return uid;        // process khong phai GMS -> nguyen ban
    if (!real_gcp) return uid;
    int pid = real_gcp(thiz);
    if (pid == g_mypid) return uid;        // cung process (hiem) -> giu nguyen
    if (!pid_is_gms(pid)) return uid;      // caller khac (TikTok...) -> uid that (GIU attribution)
    // GMS->GMS: tra faked myUid de bqxj.a getCallingUid()==myUid() PASS.
    // Lay LAZY vi luc nativeInit uid chua bi fake (con = host). O runtime da fake dung.
    if (g_buid < 10000) {
        g_in_gcu = 1;
        int m = fetch_myuid();
        g_in_gcu = 0;
        if (m >= 10000) { g_buid = m; LOG("gcu: lazy buid=%d (GMS self-trust ON)", m); }
    }
    return (g_buid >= 10000) ? g_buid : uid;
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

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* r) { g_vm = vm; return JNI_VERSION_1_6; }

JNIEXPORT void JNICALL Java_io_vanta_fake_XJProfile_nativeInit(
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
    // CHI cai o process guest-app that (uid >= 10000). Cac process he thong/helper cua
    // GMS (vd content-provider host ":p1" voi uid=0) KHONG cai: trong do my_getCallingUid
    // chay tren thread binder lam JNI call (fetch_myuid -> Process.myUid) luc ART chua
    // san sang -> ART WalkStack dung lop JNI-hook engine (libvanta) -> SIGSEGV null+4 ->
    // chet process host provider chimera -> LINE dang ky Google that bai im lang.
    // Process guest that (uid>=10000) JNI an toan nen giu nguyen hook (GMS self-trust).
    if (uid >= 10000) {
        if (!g_vm) (*env)->GetJavaVM(env, &g_vm);
        g_mypid = getpid();
        LOG("gcu: pid=%d uid=%d -> cai GOT hook", (int) g_mypid, uid);
        install_gcu_hook();
    } else {
        LOG("gcu: pid=%d uid=%d < 10000 -> BO QUA hook (tranh crash host provider)",
            (int) getpid(), uid);
    }
}
