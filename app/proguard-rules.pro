# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-keep class top.niunaijun.blackbox.** {*; }
-keep class top.niunaijun.jnihook.** {*; }
-keep class mirror.** {*; }
-keep class android.** {*; }
-keep class com.android.** {*; }

# ==== XjangJu Pha 2 (R8): chỉ xáo LAUNCHER, giữ nguyên MỌI thứ khác ====
# Engine ảo hóa KHÔNG chỉ ở io.vanta — framework reflection (@BlackClass/@BlackStrClass),
# mirror, lớp proxy sinh ra... nằm rải rác. R8 xáo bất kỳ cái nào -> vỡ clone + pipeline
# swap (overlay file engine tên-gốc lên engine-đã-xáo không khớp). Nên GIỮ tất cả trừ
# launcher của mình -> chỉ top.niunaijun.blackboxa.** bị xáo (gồm cổng license).
-keep class !top.niunaijun.blackboxa.**,** {*; }
# ViewModel được tạo qua factory/reflection -> giữ lớp + hàm dựng.
-keep class * extends androidx.lifecycle.ViewModel { <init>(...); }
# Custom view dựng từ layout XML theo tên.
-keep class top.niunaijun.blackboxa.widget.** {*; }
# Giữ attribute cần cho Kotlin/annotation (an toàn cho phản xạ engine).
-keepattributes *Annotation*, Signature, InnerClasses, EnclosingMethod
# (KHÔNG keep top.niunaijun.blackboxa.license.** -> cổng bản quyền ĐƯỢC xáo.)
# HiddenApiBypass tham chiếu API ẩn -> bỏ cảnh báo thiếu lớp (có sẵn lúc chạy).
-dontwarn dalvik.system.VMRuntime
# Dep biên dịch/optional không có lúc chạy (giữ-mọi-thứ làm lộ ref) -> bỏ cảnh báo.
-dontwarn com.google.gson.**
-dontwarn com.google.errorprone.**
-dontwarn com.moandjiezana.toml.**
-dontwarn javax.lang.model.**
-dontwarn java.lang.invoke.**

-keep class top.niunaijun.blackreflection.** {*; }
-keep @top.niunaijun.blackreflection.annotation.BClass class * {*;}
-keep @top.niunaijun.blackreflection.annotation.BClassName class * {*;}
-keep @top.niunaijun.blackreflection.annotation.BClassNameNotProcess class * {*;}
-keepclasseswithmembernames class * {
    @top.niunaijun.blackreflection.annotation.BField.* <methods>;
    @top.niunaijun.blackreflection.annotation.BFieldNotProcess.* <methods>;
    @top.niunaijun.blackreflection.annotation.BFieldSetNotProcess.* <methods>;
    @top.niunaijun.blackreflection.annotation.BFieldCheckNotProcess.* <methods>;
    @top.niunaijun.blackreflection.annotation.BMethod.* <methods>;
    @top.niunaijun.blackreflection.annotation.BStaticField.* <methods>;
    @top.niunaijun.blackreflection.annotation.BStaticMethod.* <methods>;
    @top.niunaijun.blackreflection.annotation.BMethodCheckNotProcess.* <methods>;
    @top.niunaijun.blackreflection.annotation.BConstructor.* <methods>;
    @top.niunaijun.blackreflection.annotation.BConstructorNotProcess.* <methods>;
}