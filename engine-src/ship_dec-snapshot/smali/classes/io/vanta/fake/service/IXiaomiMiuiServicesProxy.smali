.class public Lio/vanta/fake/service/IXiaomiMiuiServicesProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IXiaomiMiuiServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$OplusOverScrollerExtImpl;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$OplusScrollToTopManager;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$HandWritingStubImpl;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$ForceDarkHelperStubImpl;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$MiuiDownscaleImpl;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$MiuiMonitorThread;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$MiuiForceDarkConfig;,
        Lio/vanta/fake/service/IXiaomiMiuiServicesProxy$MiuiCameraCoveredManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IXiaomiMiuiServicesProxy"


# direct methods
.method static bridge synthetic -$$Nest$smcreateSafeMiuiCameraManagerForXiaomi()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/vanta/fake/service/IXiaomiMiuiServicesProxy;->createSafeMiuiCameraManagerForXiaomi()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private static createSafeMiuiCameraManagerForXiaomi()Ljava/lang/Object;
    .locals 6

    .line 215
    const-string v0, "IXiaomiMiuiServicesProxy"

    const-string v1, "Could not create safe MiuiCameraManager for Xiaomi: "

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.provider.MiuiSettings$SettingsCloudData$CloudData"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 222
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 224
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 225
    const-string v4, "Created safe MiuiCameraManager for Xiaomi using default constructor"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 227
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating safe MiuiCameraManager for Xiaomi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
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

    const-string p2, "IXiaomiMiuiServicesProxy"

    if-eqz p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IXiaomiMiuiServices proxy initialized for MIUI service crash prevention on "

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
    const-string p1, "IXiaomiMiuiServices proxy initialized for MIUI service crash prevention"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
