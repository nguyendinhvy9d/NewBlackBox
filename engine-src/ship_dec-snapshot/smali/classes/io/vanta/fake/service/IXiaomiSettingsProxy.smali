.class public Lio/vanta/fake/service/IXiaomiSettingsProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IXiaomiSettingsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GlobalGetString;,
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GlobalGetStringForUser;,
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GetInt;,
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GetIntForUser;,
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GetString;,
        Lio/vanta/fake/service/IXiaomiSettingsProxy$GetStringForUser;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IXiaomiSettingsProxy"


# direct methods
.method static bridge synthetic -$$Nest$smgetSafeDefaultForXiaomiSettings()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/vanta/fake/service/IXiaomiSettingsProxy;->getSafeDefaultForXiaomiSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetSafeDefaultIntForXiaomiSettings()I
    .locals 1

    invoke-static {}, Lio/vanta/fake/service/IXiaomiSettingsProxy;->getSafeDefaultIntForXiaomiSettings()I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private static getSafeDefaultForXiaomiSettings()Ljava/lang/String;
    .locals 1

    .line 207
    const-string v0, ""

    return-object v0
.end method

.method private static getSafeDefaultIntForXiaomiSettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 29
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result p1

    const-string p2, "IXiaomiSettingsProxy"

    if-eqz p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IXiaomiSettings proxy initialized for MIUI Settings UID mismatch prevention on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (MIUI "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_0
    const-string p1, "IXiaomiSettings proxy initialized for MIUI Settings UID mismatch prevention"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
