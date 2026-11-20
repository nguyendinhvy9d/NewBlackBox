package io.vanta.fake;

import java.lang.reflect.Field;
import java.security.MessageDigest;

/**
 * XJProfile - mot MAY AO HOAN CHINH, DONG BO cho moi o (container).
 * MOI gia tri tinh MOT LAN roi CACHE (static) -> hook tra ve tuc thi,
 * khong block main thread (tranh ANR). Moi tien trinh guest = 1 o rieng.
 */
public final class XJProfile {

    // brand, manufacturer, model, device, product, board, hardware, TAC(8)
    private static final String[][] DEVICES = {
        {"samsung","samsung","SC-51C","r0q","r0qjxx","r0q","qcom","35316396"},
        {"samsung","samsung","SCG13","g0q","g0qjxx","g0q","qcom","35472915"},
        {"samsung","samsung","SM-A536E","a53x","a53xnsxx","s5e8825","s5e8825","35847917"},
        {"sony","Sony","SO-53C","pdx223","SO-53C","pdx223","qcom","35815511"},
        {"sony","Sony","A203SO","pdx225","A203SO","pdx225","qcom","35238717"},
        {"sharp","SHARP","SH-54C","SG-SH54C","SH-54C","lahaina","qcom","86072905"},
        {"google","Google","Pixel 7","panther","panther","panther","panther","35161616"},
        {"google","Google","Pixel 6a","bluejay","bluejay","bluejay","bluejay","35404516"},
    };
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
    private static String[] sDev, sCar;
    private static String sImei, sImsi, sIccid, sLine1, sMeid, sSerial, sMccmnc, sNetName, sSimName, sIso;

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
        byte[] m = md5(sHost + "_" + tag + "_" + sUid);
        long v = 0;
        for (int i = 0; i < 6; i++) v = (v << 8) | (m[i] & 0xffL);
        return v & 0x7fffffffffffffffL;
    }
    private static int[] digits(String tag, int n) {
        byte[] m = md5(sHost + "_" + tag + "_" + sUid);
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
        sDev = DEVICES[(int) (seed("dev") % DEVICES.length)];
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
        sMeid = hex(md5(sHost + "_meid_" + sUid)).substring(0, 14).toUpperCase();
        sSerial = hex(md5(sHost + "_sn_" + sUid)).substring(0, 12).toUpperCase();
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
            set("BRAND", sDev[0]);
            set("MANUFACTURER", sDev[1]);
            set("MODEL", sDev[2]);
            set("DEVICE", sDev[3]);
            set("PRODUCT", sDev[4]);
            set("BOARD", sDev[5]);
            set("HARDWARE", sDev[6]);
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

    private XJProfile() {}
}
