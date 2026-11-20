package io.vanta.fake;

import java.lang.reflect.Field;
import java.security.MessageDigest;

/**
 * XJProfile - mot MAY AO HOAN CHINH, DONG BO cho moi o (container).
 * MOI gia tri tinh MOT LAN roi CACHE (static) -> hook tra ve tuc thi,
 * khong block main thread (tranh ANR). Moi tien trinh guest = 1 o rieng.
 */
public final class XJProfile {

    // Cot: {brand, manufacturer, model, device, product, platform, soc, TAC(idx7)}.
    // NGUYEN TAC: moi pool khoa theo ro.board.platform THAT cua may; moi may trong pool
    // PHAI dung dung SoC do -> ro.board.platform / ro.hardware.chipname (giu THAT) van khop,
    // KHONG bao gio tao mau thuan. Plat la -> poolFor tra null -> KHONG spoof model (giu that).

    // Snapdragon 855 (SM8150 / msmnile / Adreno 640)
    private static final String[][] POOL_SM8150 = {
        {"samsung","samsung","SM-G973U","beyond1q","beyond1que","msmnile","qcom","35316310"},   // Galaxy S10
        {"samsung","samsung","SM-G975U","beyond2q","beyond2que","msmnile","qcom","35316410"},   // Galaxy S10+
        {"Xiaomi","Xiaomi","MI 9","cepheus","cepheus","msmnile","qcom","86891103"},             // Mi 9
        {"OnePlus","OnePlus","GM1900","OnePlus7","OnePlus7","msmnile","qcom","86044204"},        // OnePlus 7
        {"OPPO","OPPO","CPH1919","CPH1919","CPH1919","msmnile","qcom","86234704"},               // Reno 10x Zoom
        {"asus","asus","ASUS_I01WD","I01WD","WW_I01WD","msmnile","qcom","35709111"},             // ZenFone 6
    };
    // Snapdragon 865 / 865+ / 870 (kona / Adreno 650)
    private static final String[][] POOL_KONA = {
        {"samsung","samsung","SM-G981U","x1q","x1qsqw","kona","qcom","35316320"},     // Galaxy S20 5G
        {"samsung","samsung","SM-G986U","y2q","y2qsqw","kona","qcom","35316420"},     // Galaxy S20+ 5G
        {"samsung","samsung","SM-G988U","z3q","z3qsqw","kona","qcom","35466520"},     // Galaxy S20 Ultra 5G
        {"OnePlus","OnePlus","IN2015","instantnoodle","instantnoodle","kona","qcom","86044210"}, // OnePlus 8
        {"Xiaomi","Xiaomi","M2001J2G","umi","umi_global","kona","qcom","86891110"},   // Mi 10
    };
    // Snapdragon 888 / 888+ (lahaina / Adreno 660)
    private static final String[][] POOL_LAHAINA = {
        {"samsung","samsung","SM-G991U","o1q","o1qsqw","lahaina","qcom","35316330"},  // Galaxy S21 5G
        {"samsung","samsung","SM-G996U","t2q","t2qsqw","lahaina","qcom","35316430"},  // Galaxy S21+ 5G
        {"samsung","samsung","SM-G998U","p3q","p3qsqw","lahaina","qcom","35466530"},  // Galaxy S21 Ultra 5G
        {"OnePlus","OnePlus","LE2115","lemonade","lemonade","lahaina","qcom","86044220"}, // OnePlus 9
    };
    // Snapdragon 8 Gen 1 (taro / Adreno 730)
    private static final String[][] POOL_TARO = {
        {"samsung","samsung","SM-S901U","r0q","r0qsqw","taro","qcom","35316340"},     // Galaxy S22 5G
        {"samsung","samsung","SM-S906U","g0q","g0qsqw","taro","qcom","35316440"},     // Galaxy S22+ 5G
        {"samsung","samsung","SM-S908U","b0q","b0qsqw","taro","qcom","35466540"},     // Galaxy S22 Ultra 5G
        {"OnePlus","OnePlus","NE2215","negroni","negroni","taro","qcom","86044230"},  // OnePlus 10 Pro
    };
    // Snapdragon 8 Gen 2 (kalama / Adreno 740)
    private static final String[][] POOL_KALAMA = {
        {"samsung","samsung","SM-S911U","dm1q","dm1qsqw","kalama","qcom","35316350"}, // Galaxy S23
        {"samsung","samsung","SM-S916U","dm2q","dm2qsqw","kalama","qcom","35316450"}, // Galaxy S23+
        {"samsung","samsung","SM-S918U","dm3q","dm3qsqw","kalama","qcom","35466550"}, // Galaxy S23 Ultra
        {"OnePlus","OnePlus","CPH2449","salami","salami","kalama","qcom","86044240"}, // OnePlus 11
    };
    // Snapdragon 8 Gen 3 (pineapple / Adreno 750)
    private static final String[][] POOL_PINEAPPLE = {
        {"samsung","samsung","SM-S921U","e1q","e1qsqw","pineapple","qcom","35316360"},// Galaxy S24
        {"samsung","samsung","SM-S926U","e2q","e2qsqw","pineapple","qcom","35316460"},// Galaxy S24+
        {"samsung","samsung","SM-S928U","e3q","e3qsqw","pineapple","qcom","35466560"},// Galaxy S24 Ultra
        {"OnePlus","OnePlus","CPH2581","waffle","waffle","pineapple","qcom","86044250"}, // OnePlus 12
    };
    // Google Tensor (Pixel) - brand/manufacturer = Google
    private static final String[][] POOL_TENSOR_G1 = { // Tensor G1 (gs101) - Pixel 6
        {"google","Google","Pixel 6","oriole","oriole","gs101","google","35758108"},
        {"google","Google","Pixel 6 Pro","raven","raven","gs101","google","35758118"},
        {"google","Google","Pixel 6a","bluejay","bluejay","gs101","google","35758128"},
    };
    private static final String[][] POOL_TENSOR_G2 = { // Tensor G2 (gs201) - Pixel 7
        {"google","Google","Pixel 7","panther","panther","gs201","google","35161407"},
        {"google","Google","Pixel 7 Pro","cheetah","cheetah","gs201","google","35161417"},
        {"google","Google","Pixel 7a","lynx","lynx","gs201","google","35161427"},
    };
    private static final String[][] POOL_TENSOR_G3 = { // Tensor G3 (zuma) - Pixel 8
        {"google","Google","Pixel 8","shiba","shiba","zuma","google","35837713"},
        {"google","Google","Pixel 8 Pro","husky","husky","zuma","google","35837723"},
    };
    // Samsung Exynos (quoc te). Chuoi platform co the khac may -> neu khong khop se tu bo (an toan).
    private static final String[][] POOL_EXY990 = { // Exynos 990 (S20 quoc te)
        {"samsung","samsung","SM-G980F","x1s","x1sxxx","exynos9830","samsung","35316325"}, // S20
        {"samsung","samsung","SM-G985F","y2s","y2sxxx","exynos9830","samsung","35316425"}, // S20+
        {"samsung","samsung","SM-G988B","z3s","z3sxxx","exynos9830","samsung","35466525"}, // S20 Ultra
    };
    private static final String[][] POOL_EXY2200 = { // Exynos 2200 (S22 quoc te)
        {"samsung","samsung","SM-S901B","r0s","r0sxxx","s5e9925","samsung","35316345"},    // S22
        {"samsung","samsung","SM-S908B","b0s","b0sxxx","s5e9925","samsung","35466545"},    // S22 Ultra
    };
    // Snapdragon 720G/732G tam trung (atoll). KHONG dua model may THAT (vd OPPO CPH2159)
    // vao pool: spoof thanh chinh host = vo nghia + lo may that + 2 o de trung. Chi dung
    // cac may atoll KHAC, deu bao ro.board.platform=atoll (khop SoC that cua host atoll).
    private static final String[][] POOL_ATOLL = {
        {"Xiaomi","Xiaomi","M2003J6B2G","miatoll","miatoll","atoll","qcom","86891120"},     // Redmi Note 9 Pro (720G)
        {"Xiaomi","Xiaomi","M2007J20CG","surya","surya","atoll","qcom","86891130"},         // POCO X3 NFC (732G)
        {"Xiaomi","Xiaomi","M2007J20CI","karna","karna","atoll","qcom","86891160"},         // POCO X3 (732G)
        {"realme","realme","RMX2061","RMX2061","RMX2061","atoll","qcom","86606204"},         // realme 6 Pro (720G)
        {"Xiaomi","Xiaomi","M2003J6B1I","excalibur","excalibur","atoll","qcom","86891180"}, // Redmi Note 9 Pro Max (720G)
        {"Xiaomi","Xiaomi","M2003J6CI","gram","gram","atoll","qcom","86891190"},            // POCO M2 Pro (720G)
    };
    // MediaTek Dimensity 1200 (mt6893). Chuoi platform MTK co the khac may -> sai = pool nghi (an toan).
    private static final String[][] POOL_MT6893 = {
        {"OnePlus","OnePlus","DN2103","DN2103","DN2103","mt6893","mediatek","86044260"},    // OnePlus Nord 2 5G
        {"realme","realme","RMX3031","RMX3031","RMX3031","mt6893","mediatek","86891140"},   // realme X7 Max / GT Neo
        {"Xiaomi","Redmi","M2012K10C","ares","ares","mt6893","mediatek","86891150"},        // Redmi K40 Gaming / POCO F3 GT
    };

    // map ro.board.platform(THAT) -> pool cung SoC. Plat la / chua co -> null (giu model that).
    private static String[][] poolFor(String plat) {
        if (plat == null) return null;
        switch (plat) {
            case "msmnile":    return POOL_SM8150;    // SD855
            case "kona":       return POOL_KONA;      // SD865/865+/870
            case "lahaina":    return POOL_LAHAINA;   // SD888/888+
            case "taro":       return POOL_TARO;      // 8 Gen 1
            case "kalama":     return POOL_KALAMA;    // 8 Gen 2
            case "pineapple":  return POOL_PINEAPPLE; // 8 Gen 3
            case "gs101":      return POOL_TENSOR_G1; // Pixel 6
            case "gs201":      return POOL_TENSOR_G2; // Pixel 7
            case "zuma":       return POOL_TENSOR_G3; // Pixel 8
            case "exynos9830": return POOL_EXY990;    // Exynos 990 (S20)
            case "s5e9925":    return POOL_EXY2200;   // Exynos 2200 (S22)
            case "atoll":      return POOL_ATOLL;     // SD720G/732G tam trung
            case "mt6893":     return POOL_MT6893;    // Dimensity 1200
            default:           return null;           // SoC la -> KHONG spoof model (giu that, nhat quan)
        }
    }
    private static boolean sSpoofModel;
    private static String realProp(String k) {
        try {
            Class<?> c = Class.forName("android.os.SystemProperties");
            return String.valueOf(c.getMethod("get", String.class).invoke(null, k));
        } catch (Throwable t) { return ""; }
    }
    // mccmnc(5), networkOperatorName, simOperatorName, countryIso
    private static final String[][] CARRIERS = {
        {"44010","NTT DOCOMO","docomo","jp"},
        {"44020","SoftBank","SoftBank","jp"},
        {"44051","au","au","jp"},
        {"44011","Rakuten","Rakuten","jp"},
    };

    // ---- cache ----
    private static volatile boolean sInit;
    private static int sUid;
    private static String sHost;
    private static String sSalt = "";   // salt per-o: trong -> ho so GOC (cu); co -> ho so moi
    private static String[] sDev, sCar;
    private static String sImei, sImsi, sIccid, sLine1, sMeid, sSerial, sMccmnc, sNetName, sSimName, sIso;

    // ---- salt channel ----
    // File /storage/emulated/0/.xjsalt/<uid> (ngoai Android/data -> KHONG bi IO-redirect cua guest).
    // Ca host (launcher) lan guest (container) deu co MANAGE_EXTERNAL_STORAGE nen doc/ghi truc tiep.
    // Rong/khong co file -> salt "" -> cong thuc seed = BAN CU (o dang login giu nguyen identity).
    private static final String SALT_DIR = "/storage/emulated/0/.xjsalt/";
    static String readSalt(int uid) {
        try {
            java.io.File f = new java.io.File(SALT_DIR + uid);
            if (!f.exists()) return "";
            byte[] buf = new byte[64];
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            int n = in.read(buf); in.close();
            if (n <= 0) return "";
            String s = new String(buf, 0, n, "UTF-8").trim();
            StringBuilder b = new StringBuilder();
            for (int i = 0; i < s.length(); i++) {
                char c = s.charAt(i);
                if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) b.append(c);
            }
            return b.toString();
        } catch (Throwable t) { return ""; }
    }
    private static String sufOf(String salt) {
        return (salt == null || salt.length() == 0) ? "" : ("_" + salt);
    }

    private static int rawUid() {
        try {
            Class<?> c = Class.forName("io.vanta.VantaCore");
            Object r = c.getMethod("getUserId").invoke(null);
            return ((Integer) r).intValue();
        } catch (Throwable t) { return 0; }
    }
    private static String rawHost() {
        try {
            Class<?> c = Class.forName("io.vanta.VantaCore");
            Object r = c.getMethod("getHostPkg").invoke(null);
            return String.valueOf(r);
        } catch (Throwable t) { return "host"; }
    }
    private static byte[] md5(String s) {
        try { return MessageDigest.getInstance("MD5").digest(s.getBytes("UTF-8")); }
        catch (Throwable t) { return new byte[16]; }
    }
    private static String hex(byte[] b) {
        StringBuilder sb = new StringBuilder();
        for (byte x : b) {
            int v = x & 0xff;
            sb.append(Character.forDigit(v >> 4, 16));
            sb.append(Character.forDigit(v & 0xf, 16));
        }
        return sb.toString();
    }
    private static long seed(String tag) {
        byte[] m = md5(sHost + "_" + tag + "_" + sUid + sufOf(sSalt));
        long v = 0;
        for (int i = 0; i < 6; i++) v = (v << 8) | (m[i] & 0xffL);
        return v & 0x7fffffffffffffffL;
    }
    private static int[] digits(String tag, int n) {
        byte[] m = md5(sHost + "_" + tag + "_" + sUid + sufOf(sSalt));
        int[] d = new int[n];
        for (int i = 0; i < n; i++) d[i] = (m[i % 16] & 0xff) % 10;
        return d;
    }
    private static char luhn(String num) {
        int sum = 0; boolean alt = true;
        for (int i = num.length() - 1; i >= 0; i--) {
            int n = num.charAt(i) - '0';
            if (alt) { n *= 2; if (n > 9) n -= 9; }
            sum += n; alt = !alt;
        }
        return (char) ('0' + ((10 - (sum % 10)) % 10));
    }

    private static synchronized void ensure() {
        if (sInit) return;
        sUid = rawUid();
        sHost = rawHost();
        sSalt = readSalt(sUid);   // doc salt per-o (rong -> ho so goc cu)
        String plat = realProp("ro.board.platform"); // doc THAT (hook chua cai)
        String[][] pool = poolFor(plat);
        // +sUid lam offset: chon model TAT DINH theo uid, nhung md5(dev_0) va md5(dev_1)
        // co the DONG DU mod len -> uid 0,1 luon trung model o moi co pool (da gap thuc te).
        // Cong uid de uid lien tiep rai khac index -> 2-3 o dau KHONG trung model.
        if (pool != null) {
            sDev = pool[(int) ((seed("dev") + sUid) % pool.length)];
            sSpoofModel = true;
        } else {
            // SoC la -> khong spoof model (nhat quan tren moi may), chi lay TAC
            sDev = POOL_SM8150[(int) ((seed("dev") + sUid) % POOL_SM8150.length)];
            sSpoofModel = false;
        }
        sCar = CARRIERS[(int) (seed("car") % CARRIERS.length)];
        sMccmnc = sCar[0];
        sNetName = sCar[1];
        sSimName = sCar[2];
        sIso = sCar[3];
        // IMEI = TAC(8) + 6 + luhn
        int[] di = digits("imei", 6);
        StringBuilder bi = new StringBuilder(sDev[7]);
        for (int i = 0; i < 6; i++) bi.append(di[i]);
        bi.append(luhn(bi.toString()));
        sImei = bi.toString();
        // IMSI = mccmnc + 10
        int[] dm = digits("imsi", 10);
        StringBuilder bm = new StringBuilder(sMccmnc);
        for (int i = 0; i < 10; i++) bm.append(dm[i]);
        sImsi = bm.toString();
        // ICCID = 8981 + mnc(2) + 13 + luhn
        int[] dc = digits("iccid", 13);
        StringBuilder bc = new StringBuilder("8981");
        bc.append(sMccmnc.substring(3));
        for (int i = 0; i < 13; i++) bc.append(dc[i]);
        bc.append(luhn(bc.toString()));
        sIccid = bc.toString();
        // line1 = 0X0XXXXXXXX
        int[] dl = digits("line1", 8);
        int[] pre = {7, 8, 9};
        StringBuilder bl = new StringBuilder("0");
        bl.append(pre[(int) (seed("pre") % 3)]).append("0");
        for (int i = 0; i < 8; i++) bl.append(dl[i]);
        sLine1 = bl.toString();
        sMeid = hex(md5(sHost + "_meid_" + sUid + sufOf(sSalt))).substring(0, 14).toUpperCase();
        sSerial = hex(md5(sHost + "_sn_" + sUid + sufOf(sSalt))).substring(0, 12).toUpperCase();
        sInit = true;
    }

    public static String imei()      { ensure(); return sImei; }
    public static String imsi()      { ensure(); return sImsi; }
    public static String iccid()     { ensure(); return sIccid; }
    public static String line1()     { ensure(); return sLine1; }
    public static String meid()      { ensure(); return sMeid; }
    public static String mccmnc()    { ensure(); return sMccmnc; }
    public static String netName()   { ensure(); return sNetName; }
    public static String simName()   { ensure(); return sSimName; }
    public static String countryIso(){ ensure(); return sIso; }
    public static String serial()    { ensure(); return sSerial; }

    public static void applyBuild() {
        try {
            ensure();
            if (!sSpoofModel) { set("SERIAL", sSerial); return; } // SoC la: chi serial, giu model that
            set("BRAND", sDev[0]);
            set("MANUFACTURER", sDev[1]);
            set("MODEL", sDev[2]);
            set("DEVICE", sDev[3]);
            set("PRODUCT", sDev[4]);
            // KHONG set BOARD/HARDWARE -> giu THAT (khop SoC/cpuinfo/GPU/board native)
            long inc = 1000000L + (seed("inc") % 8000000L);
            String fp = sDev[0] + "/" + sDev[4] + "/" + sDev[3]
                    + ":12/SP1A.210812.016/" + inc + ":user/release-keys";
            set("FINGERPRINT", fp);
            set("SERIAL", sSerial);
        } catch (Throwable t) { /* an toan */ }
    }

    private static void set(String name, String val) {
        try {
            Field f = android.os.Build.class.getField(name);
            f.setAccessible(true);
            try {
                Field af = Field.class.getDeclaredField("accessFlags");
                af.setAccessible(true);
                af.setInt(f, f.getModifiers() & ~0x10);
            } catch (Throwable ignore) {}
            f.set(null, val);
        } catch (Throwable t) { /* bo qua tung truong */ }
    }

    // ---------- Settings.Secure spoof: android_id + bluetooth_address ----------

    /** true neu args la mot GET_secure cho key minh spoof (android_id / bluetooth_address) */
    public static boolean xjSecure(Object[] args) {
        if (args == null) return false;
        boolean get = false, key = false;
        for (Object a : args) {
            if (a instanceof String) {
                String s = (String) a;
                if ("GET_secure".equals(s)) get = true;
                else if ("android_id".equals(s) || "bluetooth_address".equals(s)) key = true;
            }
        }
        return get && key;
    }

    /** ghi de Bundle "value" bang gia tri gia theo tung key, giu nguyen android_id cu */
    public static Object xjPatchSecure(Object result, Object[] args) {
        try {
            if (args == null || !(result instanceof android.os.Bundle)) return result;
            boolean get = false; String which = null;
            for (Object a : args) {
                if (a instanceof String) {
                    String s = (String) a;
                    if ("GET_secure".equals(s)) get = true;
                    else if ("android_id".equals(s)) which = "android_id";
                    else if ("bluetooth_address".equals(s)) which = "bluetooth_address";
                }
            }
            if (!get || which == null) return result;
            ensure();
            String val;
            if ("bluetooth_address".equals(which)) val = btMac();
            else val = hex(md5(sHost + "_aid_" + sUid + sufOf(sSalt))).substring(0, 16);
            ((android.os.Bundle) result).putString("value", val);
        } catch (Throwable t) { /* an toan */ }
        return result;
    }

    /** BT MAC gia per-o, dinh dang XX:XX:XX:XX:XX:XX */
    public static String btMac() {
        ensure();
        byte[] m = md5(sHost + "_bt_" + sUid + sufOf(sSalt));
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            if (i > 0) sb.append(':');
            int v = m[i] & 0xff;
            sb.append(Character.forDigit(v >> 4, 16));
            sb.append(Character.forDigit(v & 0xf, 16));
        }
        return sb.toString().toUpperCase();
    }

    // ---------- Native hook (A): spoof ro.product.* / ro.serialno... ----------
    public static native void nativeInit(int uid, String host, String[] keys, String[] values);

    private static volatile boolean sNativeDone;
    public static void loadNative() {
        if (sNativeDone) return;
        try {
            ensure();
            // --- (A0) Dia-ly NHAT: timezone + locale, LUON spoof (doc lap sSpoofModel) ---
            // Chong "soi ra Viet Nam": IP Nhat nhung may khai +07 / vi = co do mismatch.
            try { java.util.TimeZone.setDefault(java.util.TimeZone.getTimeZone("Asia/Tokyo")); } catch (Throwable t) {}
            try { java.util.Locale.setDefault(java.util.Locale.JAPAN); } catch (Throwable t) {}
            try { // android.icu rieng voi java.util tren Android
                Class<?> ic = Class.forName("android.icu.util.TimeZone");
                Object tz = ic.getMethod("getTimeZone", String.class).invoke(null, "Asia/Tokyo");
                ic.getMethod("setDefault", ic).invoke(null, tz);
            } catch (Throwable t) {}
            System.loadLibrary("xjhook");
            // Native prop JP (bat duong SystemProperties/__system_property_get: bionic tzset, ICU)
            final String[] GEO_K = {
                "persist.sys.timezone", "persist.sys.locale",
                "ro.product.locale", "ro.product.locale.language", "ro.product.locale.region"
            };
            final String[] GEO_V = {
                "Asia/Tokyo", "ja-JP",
                "ja-JP", "ja", "JP"
            };
            String[] keys, vals;
            if (sSpoofModel) {
                // KHONG spoof ro.product.board / ro.*.platform / ro.hardware -> giu THAT (khop SoC)
                long inc = 1000000L + (seed("inc") % 8000000L);
                String fp = sDev[0] + "/" + sDev[4] + "/" + sDev[3]
                        + ":12/SP1A.210812.016/" + inc + ":user/release-keys";
                String[] mk = new String[] {
                    "ro.product.model", "ro.product.brand", "ro.product.manufacturer",
                    "ro.product.device", "ro.product.name",
                    "ro.product.vendor.model", "ro.product.vendor.brand", "ro.product.vendor.manufacturer",
                    "ro.product.vendor.device", "ro.product.vendor.name",
                    "ro.product.system.model", "ro.product.system.brand", "ro.product.system.manufacturer",
                    "ro.product.odm.model", "ro.product.odm.brand", "ro.product.odm.manufacturer",
                    "ro.build.product", "ro.build.fingerprint", "ro.bootimage.build.fingerprint",
                    "ro.vendor.build.fingerprint", "ro.system.build.fingerprint", "ro.odm.build.fingerprint"
                };
                String[] mv = new String[] {
                    sDev[2], sDev[0], sDev[1],
                    sDev[3], sDev[4],
                    sDev[2], sDev[0], sDev[1],
                    sDev[3], sDev[4],
                    sDev[2], sDev[0], sDev[1],
                    sDev[2], sDev[0], sDev[1],
                    sDev[4], fp, fp,
                    fp, fp, fp
                };
                keys = cat(GEO_K, mk); vals = cat(GEO_V, mv);
            } else {
                keys = GEO_K;
                vals = GEO_V;
            }
            nativeInit(sUid, sHost, keys, vals);
            applyBuild(); // Build.MODEL == ro.product.model (nhat quan, het tamper)
            sNativeDone = true;
        } catch (Throwable t) { /* an toan, khong crash guest */ }
    }

    // Noi 2 mang String (dia-ly JP + model), tranh phu thuoc java.util.Arrays.
    private static String[] cat(String[] a, String[] b) {
        String[] r = new String[a.length + b.length];
        System.arraycopy(a, 0, r, 0, a.length);
        System.arraycopy(b, 0, r, a.length, b.length);
        return r;
    }

    // ================= DEVICE INFO (goi tu launcher qua reflection) =================
    // describe(uid): tinh ho so cho MOT uid bat ky, THUAN (khong cache, khong hook,
    // khong dong vao Build). Phai dung CUNG cong thuc voi ensure() de khop container.
    // Tra ve JSON string.

    private static String resolveHost() {
        String h = null;
        try {
            Class<?> c = Class.forName("io.vanta.VantaCore");
            h = String.valueOf(c.getMethod("getHostPkg").invoke(null));
        } catch (Throwable t) {}
        if (h == null || h.length() == 0 || h.equals("host") || h.equals("null")) {
            try {
                Class<?> c = Class.forName("top.niunaijun.blackbox.BlackBoxCore");
                h = String.valueOf(c.getMethod("getHostPkg").invoke(null));
            } catch (Throwable t) {}
        }
        if (h == null || h.length() == 0 || h.equals("null")) h = "com.rekoo.pubgm";
        return h;
    }

    private static long seedP(String tag, String host, int uid, String suf) {
        byte[] m = md5(host + "_" + tag + "_" + uid + suf);
        long v = 0;
        for (int i = 0; i < 6; i++) v = (v << 8) | (m[i] & 0xffL);
        return v & 0x7fffffffffffffffL;
    }
    private static int[] digitsP(String tag, String host, int uid, int n, String suf) {
        byte[] m = md5(host + "_" + tag + "_" + uid + suf);
        int[] d = new int[n];
        for (int i = 0; i < n; i++) d[i] = (m[i % 16] & 0xff) % 10;
        return d;
    }
    private static String btMacFor(String host, int uid, String suf) {
        byte[] m = md5(host + "_bt_" + uid + suf);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            if (i > 0) sb.append(':');
            int v = m[i] & 0xff;
            sb.append(Character.forDigit(v >> 4, 16));
            sb.append(Character.forDigit(v & 0xf, 16));
        }
        return sb.toString().toUpperCase();
    }
    private static String esc(String s) {
        if (s == null) return "";
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '"' || c == '\\') b.append('\\').append(c);
            else if (c == '\n') b.append("\\n");
            else b.append(c);
        }
        return b.toString();
    }

    /** JSON ho so cua o uid. Goi tu launcher: XJProfile.describe(userId). */
    public static String describe(int uid) {
        try {
            String host = resolveHost();
            String salt = readSalt(uid);
            String suf = sufOf(salt);   // doc salt cua o -> khop container
            String plat = realProp("ro.board.platform");
            String[][] pool = poolFor(plat);
            boolean spoof = pool != null;
            String[][] pp = (pool != null) ? pool : POOL_SM8150;
            String[] dev = pp[(int) ((seedP("dev", host, uid, suf) + uid) % pp.length)]; // +uid: khop ensure(), chong 2 o trung model
            String[] car = CARRIERS[(int) (seedP("car", host, uid, suf) % CARRIERS.length)];
            String mccmnc = car[0];

            int[] di = digitsP("imei", host, uid, 6, suf);
            StringBuilder bi = new StringBuilder(dev[7]);
            for (int i = 0; i < 6; i++) bi.append(di[i]);
            bi.append(luhn(bi.toString()));
            String imei = bi.toString();

            int[] dm = digitsP("imsi", host, uid, 10, suf);
            StringBuilder bm = new StringBuilder(mccmnc);
            for (int i = 0; i < 10; i++) bm.append(dm[i]);
            String imsi = bm.toString();

            int[] dc = digitsP("iccid", host, uid, 13, suf);
            StringBuilder bc = new StringBuilder("8981");
            bc.append(mccmnc.substring(3));
            for (int i = 0; i < 13; i++) bc.append(dc[i]);
            bc.append(luhn(bc.toString()));
            String iccid = bc.toString();

            int[] dl = digitsP("line1", host, uid, 8, suf);
            int[] pre = {7, 8, 9};
            StringBuilder bl = new StringBuilder("0");
            bl.append(pre[(int) (seedP("pre", host, uid, suf) % 3)]).append("0");
            for (int i = 0; i < 8; i++) bl.append(dl[i]);
            String line1 = bl.toString();

            String meid = hex(md5(host + "_meid_" + uid + suf)).substring(0, 14).toUpperCase();
            String serial = hex(md5(host + "_sn_" + uid + suf)).substring(0, 12).toUpperCase();
            String aid = hex(md5(host + "_aid_" + uid + suf)).substring(0, 16);
            String bt = btMacFor(host, uid, suf);
            long inc = 1000000L + (seedP("inc", host, uid, suf) % 8000000L);
            String fp = dev[0] + "/" + dev[4] + "/" + dev[3]
                    + ":12/SP1A.210812.016/" + inc + ":user/release-keys";

            String[] k = {
                "model", "brand", "manufacturer", "device", "product",
                "board", "soc", "fingerprint",
                "imei", "imsi", "iccid", "line1", "meid",
                "serial", "androidId", "btMac",
                "carrier", "mccmnc", "country"
            };
            String[] v = {
                spoof ? dev[2] : realProp("ro.product.model"),
                spoof ? dev[0] : realProp("ro.product.brand"),
                spoof ? dev[1] : realProp("ro.product.manufacturer"),
                spoof ? dev[3] : realProp("ro.product.device"),
                spoof ? dev[4] : realProp("ro.product.name"),
                realProp("ro.board.platform"),
                realProp("ro.hardware.chipname"),
                spoof ? fp : realProp("ro.build.fingerprint"),
                imei, imsi, iccid, line1, meid,
                serial, aid, bt,
                car[1], mccmnc, car[3]
            };
            StringBuilder j = new StringBuilder("{");
            for (int i = 0; i < k.length; i++) {
                if (i > 0) j.append(',');
                j.append('"').append(k[i]).append("\":\"").append(esc(v[i])).append('"');
            }
            j.append(",\"uid\":").append(uid);
            j.append(",\"spoofModel\":").append(spoof);
            j.append(",\"salt\":\"").append(esc(salt)).append('"');
            j.append('}');
            return j.toString();
        } catch (Throwable t) {
            return "{\"error\":\"" + esc(String.valueOf(t)) + "\"}";
        }
    }

    private XJProfile() {}
}
