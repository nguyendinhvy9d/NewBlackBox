.class public Lio/vanta/utils/HackAppUtils;
.super Ljava/lang/Object;
.source "HackAppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableQQLogOutput(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 7
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9
    :try_start_0
    const-string p0, "com.tencent.qphone.base.util.QLog"

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector;

    move-result-object p0

    const-string p1, "UIN_REPORTLOG_LEVEL"

    .line 10
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p0

    const/16 p1, 0x64

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
