package top.niunaijun.blackbox.fake.service;

import android.content.ComponentName;
import android.content.Intent;

import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.utils.Slog;

/**
 * XJLINE DIAG — lớp chẩn đoán TẠM cho lỗi "TikTok login bằng LINE". Gỡ sau khi tìm xong.
 * Đặt riêng 1 class (KHÔNG bị overlay bbdec2 trong rebuild_robust) để log sống qua build.
 */
public class XjLineDiag {

    public static boolean smellsLikeLine(Intent intent) {
        if (intent == null) return false;
        try {
            String pkg = intent.getPackage();
            ComponentName c = intent.getComponent();
            String cp = c != null ? c.getPackageName() : null;
            String act = intent.getAction();
            String data = intent.getDataString();
            String s = ("" + pkg + "|" + cp + "|" + act + "|" + data).toLowerCase();
            return s.contains("naver.line") || s.contains("linecorp") || s.contains("lineauth")
                    || s.contains("line.sdk") || s.contains("line3rd") || s.contains("jp.naver");
        } catch (Throwable t) {
            return false;
        }
    }

    public static void xjLineLog(String where, Intent intent, Object result) {
        try {
            if (!smellsLikeLine(intent)) return;
            String comp = intent.getComponent() != null ? intent.getComponent().flattenToShortString() : "null";
            String res = (result == null) ? "NULL"
                    : (result instanceof java.util.List ? ("List(" + ((java.util.List<?>) result).size() + ")")
                    : result.getClass().getSimpleName());
            Slog.e("XJLINE", where
                    + " pkg=" + intent.getPackage()
                    + " act=" + intent.getAction()
                    + " data=" + intent.getDataString()
                    + " comp=" + comp
                    + " caller=" + safeCaller()
                    + " => result=" + res);
        } catch (Throwable t) {
            Slog.e("XJLINE", where + " logerr " + t);
        }
    }

    private static String safeCaller() {
        try {
            return BActivityThread.getAppPackageName();
        } catch (Throwable t) {
            return "?";
        }
    }
}
