.class public Lio/vanta/VantaCore;
.super Lio/vanta/app/configuration/ClientConfiguration;
.source "VantaCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/VantaCore$ProcessType;,
        Lio/vanta/VantaCore$LogSendListener;
    }
.end annotation


# static fields
.field private static final SERVICE_INIT_TIMEOUT_MS:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "VantaCore"

.field private static sContext:Landroid/content/Context;

.field private static final sVantaCore:Lio/vanta/VantaCore;


# instance fields
.field private final mAppLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/app/configuration/AppLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

.field private mCurrentAppPackage:Ljava/lang/String;

.field private mCurrentAppUid:I

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostUid:I

.field private final mHostUserId:I

.field private mIsSandboxedEnvironment:Z

.field private mLastServiceInitAttempt:J

.field private mProcessType:Lio/vanta/VantaCore$ProcessType;

.field private final mServiceAvailableCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallbackLock:Ljava/lang/Object;

.field private final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$XV0QbQtfSWAhXa0pzoZOCcpSBkE(Lio/vanta/VantaCore;Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/vanta/VantaCore;->lambda$sendLogs$4(Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$irAud0TJ9tCZJmP5AOyJ1OiqKzg(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->lambda$startLogcat$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClientConfiguration(Lio/vanta/VantaCore;)Lio/vanta/app/configuration/ClientConfiguration;
    .locals 0

    iget-object p0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBlackProcessRunning(Lio/vanta/VantaCore;)Z
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshProcessContext(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->refreshProcessContext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshServerProcessContext(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->refreshServerProcessContext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBlackProcess(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->startBlackProcess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryAlternativeServerStartupMethods(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeServerStartupMethods()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryAlternativeStartupMethods(Lio/vanta/VantaCore;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeStartupMethods()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 81
    const-string v0, "VantaCore"

    new-instance v1, Lio/vanta/VantaCore;

    invoke-direct {v1}, Lio/vanta/VantaCore;-><init>()V

    sput-object v1, Lio/vanta/VantaCore;->sVantaCore:Lio/vanta/VantaCore;

    .line 88
    :try_start_0
    invoke-static {}, Lio/vanta/utils/SimpleCrashFix;->installSimpleFix()V

    .line 89
    const-string v1, "Simple crash fix installed at class loading time"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lio/vanta/utils/SocialMediaAppCrashPrevention;->initialize()V

    .line 92
    const-string v1, "Social media app crash prevention initialized at class loading time"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->initialize()V

    .line 95
    const-string v1, "DEX crash prevention initialized at class loading time"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->initialize()V

    .line 98
    const-string v1, "Native crash prevention initialized at class loading time"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lio/vanta/utils/CrashMonitor;->initialize()V

    .line 101
    const-string v1, "Comprehensive crash monitoring initialized at class loading time"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install simple crash fix or stack trace filter at class loading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Lio/vanta/app/configuration/ClientConfiguration;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/VantaCore;->mAppLifecycleCallbacks:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/vanta/VantaCore;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lio/vanta/VantaCore;->mHostUid:I

    .line 113
    invoke-static {}, Lvanta/android/os/BRUserHandle;->get()Lvanta/android/os/UserHandleStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/UserHandleStatic;->myUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/VantaCore;->mHostUserId:I

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    const-wide/16 v1, 0x0

    .line 116
    iput-wide v1, p0, Lio/vanta/VantaCore;->mLastServiceInitAttempt:J

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/vanta/VantaCore;->mServiceCallbackLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 124
    iput v1, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lio/vanta/VantaCore;->mCurrentAppPackage:Ljava/lang/String;

    .line 126
    iput-boolean v0, p0, Lio/vanta/VantaCore;->mIsSandboxedEnvironment:Z

    return-void
.end method

.method private createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    .line 404
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "No fallback available for service: "

    const/4 v2, 0x0

    .line 404
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (avoiding circular dependency)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating fallback service for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static currentActivityThread()Lio/vanta/app/BActivityThread;
    .locals 3

    .line 1561
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1563
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.currentActivityThread() failed, returning null"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static ensureActivityContext(Landroid/app/Activity;)V
    .locals 2

    .line 1651
    :try_start_0
    invoke-static {p0}, Lio/vanta/app/BActivityThread;->ensureActivityContext(Landroid/app/Activity;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1653
    const-string v0, "VantaCore"

    const-string v1, "BActivityThread.ensureActivityContext() failed"

    invoke-static {v0, v1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static ensureProperInitialization()V
    .locals 6

    .line 1745
    const-string v0, "VantaCore"

    const-string v1, "BActivityThread hooks initialization failed: "

    const-string v2, "ServiceManager initialization failed: "

    const-string v3, "NativeCore initialization failed: "

    :try_start_0
    const-string v4, "Ensuring proper initialization order..."

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Lio/vanta/core/NativeCore;->init(I)V

    .line 1750
    const-string v4, "NativeCore initialized successfully"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1752
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    :try_start_3
    invoke-static {}, Lio/vanta/core/system/ServiceManager;->initBlackManager()V

    .line 1758
    const-string v3, "ServiceManager initialized successfully"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1760
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    :try_start_5
    invoke-static {}, Lio/vanta/app/BActivityThread;->hookActivityThread()V

    .line 1766
    const-string v2, "BActivityThread hooks initialized successfully"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 1768
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :goto_2
    const-string v1, "Proper initialization order ensured"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1773
    const-string v2, "Failed to ensure proper initialization order"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public static get()Lio/vanta/VantaCore;
    .locals 1

    .line 129
    sget-object v0, Lio/vanta/VantaCore;->sVantaCore:Lio/vanta/VantaCore;

    return-object v0
.end method

.method public static getAllFilesAccessRequestCode()I
    .locals 1

    const/16 v0, 0x3ea

    return v0
.end method

.method private getAlternativeContext()Landroid/content/Context;
    .locals 3

    .line 770
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get application context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppConfig()Lio/vanta/entity/AppConfig;
    .locals 3

    .line 1570
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1572
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getAppConfig() failed, returning null"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 3

    .line 1588
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1590
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getAppPackageName() failed, returning null"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppPid()I
    .locals 3

    .line 1606
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1608
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getAppPid() failed, returning -1"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static getAppProcessName()Ljava/lang/String;
    .locals 3

    .line 1579
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1581
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getAppProcessName() failed, returning null"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 3

    .line 1597
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1599
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getApplication() failed, returning null"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;
    .locals 1

    .line 1050
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBJobManager()Lio/vanta/fake/frameworks/BJobManager;
    .locals 1

    .line 1042
    invoke-static {}, Lio/vanta/fake/frameworks/BJobManager;->get()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;
    .locals 1

    .line 1046
    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBStorageManager()Lio/vanta/fake/frameworks/BStorageManager;
    .locals 1

    .line 1054
    invoke-static {}, Lio/vanta/fake/frameworks/BStorageManager;->get()Lio/vanta/fake/frameworks/BStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBUid()I
    .locals 3

    .line 1615
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getBUid()I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1617
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getBUid() failed, returning -1"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static getCallingBUid()I
    .locals 3

    .line 1624
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getCallingBUid()I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1626
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getCallingBUid() failed, returning -1"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 153
    sget-object v0, Lio/vanta/VantaCore;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDeviceInfoString()Ljava/lang/String;
    .locals 12

    .line 2209
    const-string v0, ", "

    const-string v1, " MB\n"

    const-string v2, "\n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2211
    :try_start_0
    const-string v4, "DEVICE INFORMATION\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    const-string v4, "------------------\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    const-string v4, "Android Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    const-string v4, "SDK Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    const-string v4, "Build ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    const-string v4, "Build Display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    const-string v4, "Security Patch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    const-string v4, "Manufacturer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    const-string v4, "Brand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    const-string v4, "Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    const-string v4, "Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    const-string v4, "Product: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    const-string v4, "Board: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    const-string v4, "Hardware: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    const-string v4, "Supported ABIs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 2237
    const-string v4, "32-bit ABIs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2240
    const-string v4, "64-bit ABIs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 2249
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    .line 2250
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v6

    .line 2251
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 2252
    const-string v0, "Max Heap: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    const-string v0, "Total Heap: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    const-string v0, "Free Heap: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    const-string v0, "Used Heap: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2257
    :try_start_2
    const-string v1, "Memory info unavailable: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2264
    const-string v1, "Package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2266
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2267
    const-string v1, "App Version: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v4, 0x1c

    const-string v5, "Version Code: "

    if-lt v1, v4, :cond_2

    .line 2269
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2271
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2275
    :try_start_5
    const-string v1, "App info unavailable: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    :cond_3
    :goto_1
    const-string v0, "Timestamp: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss Z"

    .line 2280
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2283
    const-string v1, "Failed to build device info: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostUid()I
    .locals 1

    .line 145
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    iget v0, v0, Lio/vanta/VantaCore;->mHostUid:I

    return v0
.end method

.method public static getHostUserId()I
    .locals 1

    .line 149
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    iget v0, v0, Lio/vanta/VantaCore;->mHostUserId:I

    return v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 137
    sget-object v0, Lio/vanta/VantaCore;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1446
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "VantaCore"

    const-string v4, "activity"

    const/4 v5, 0x0

    if-lt v1, v2, :cond_1

    .line 1452
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1453
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1455
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1456
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v0, :cond_0

    .line 1457
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1463
    const-string v2, "Failed to get process name using modern API"

    invoke-static {v3, v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-nez v5, :cond_3

    .line 1470
    :try_start_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1471
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1473
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1474
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_2

    .line 1475
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1481
    const-string v0, "Failed to get process name using deprecated API"

    invoke-static {v3, v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    return-object v5

    .line 1486
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "processName = null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 11

    const-string v0, "Failed to get binder for service: "

    const-string v1, "getService: "

    const-string v2, "Provider call returned null for service: "

    const-string v3, "Provider call timeout for service: "

    .line 338
    iget-object v4, p0, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 339
    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    .line 345
    :cond_0
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v4

    const-string v5, "VantaCore"

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Main process trying to access service "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " but black process not running, starting it..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lio/vanta/VantaCore;->startBlackProcess()V

    const-wide/16 v6, 0x3e8

    .line 350
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 357
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 361
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 362
    const-string v8, "_B_|_server_name_"

    invoke-virtual {v4, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Lio/vanta/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VM"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, v4}, Lio/vanta/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_2

    .line 378
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, p1}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 383
    :cond_2
    const-string v2, "_B_|_server_"

    invoke-static {v3, v2}, Lio/vanta/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 386
    iget-object v0, p0, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 388
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0, p1}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    const-wide/16 v6, 0xbb8

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", using fallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, p1}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 374
    :cond_4
    throw v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creating fallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public static getStoragePermissionRequestCode()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public static getUid()I
    .locals 3

    .line 1633
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUid()I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1635
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getUid() failed, returning -1"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static getUserId()I
    .locals 3

    .line 1642
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1644
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.getUserId() failed, returning -1"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method private handleProcessBadError(II)V
    .locals 3

    add-int/lit8 v0, p2, -0x1

    .line 682
    const-string v1, "VantaCore"

    if-ge p1, v0, :cond_0

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Process is bad, attempting recovery. Attempt "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/vanta/VantaCore;->scheduleProcessRecovery(II)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 691
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Process recovery failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 694
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Process recovery failed after "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " attempts"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeStartupMethods()V

    return-void
.end method

.method private handleServerProcessBadError(II)V
    .locals 3

    add-int/lit8 v0, p2, -0x1

    .line 1909
    const-string v1, "VantaCore"

    if-ge p1, v0, :cond_0

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Server process is bad, attempting recovery. Attempt "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/vanta/VantaCore;->scheduleServerProcessRecovery(II)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1918
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Server process recovery failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1921
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Server process recovery failed after "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " attempts"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeServerStartupMethods()V

    return-void
.end method

.method private handleServerServiceStartFailure(IILjava/lang/Exception;)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    .line 1898
    const-string v1, "VantaCore"

    if-ge p1, v0, :cond_0

    .line 1899
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Server service start failed, will retry. Attempt "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1901
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Server service start failed after "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " attempts: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeServerStartupMethods()V

    return-void
.end method

.method private handleServiceStartFailure(IILjava/lang/Exception;)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    .line 671
    const-string v1, "VantaCore"

    if-ge p1, v0, :cond_0

    .line 672
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Service start failed, will retry. Attempt "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 674
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Service start failed after "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " attempts: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeStartupMethods()V

    return-void
.end method

.method private initNotificationManager()V
    .locals 5

    .line 1500
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomad_core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "nomad_core"

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 1506
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 1507
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1508
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1509
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1510
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private initVpnService()V
    .locals 4

    # XJ: KHONG khoi ProxyVpnService (VpnService) nua. Android chi cho 1 VPN/may, engine-VPN
    # da Tailscale (dieu khien farm tu xa) -> xung dot. Cells van chay bang mang mac dinh
    # (SIM JP, geo van dung). return-void ngay -> Tailscale song chung voi XJangJu.
    return-void

    .line 1706
    const-string v0, "VantaCore"

    :try_start_0
    iget-object v1, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/vanta/app/configuration/ClientConfiguration;->isUseVpnNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1712
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/vanta/VantaCore$6;

    invoke-direct {v2, p0}, Lio/vanta/VantaCore$6;-><init>(Lio/vanta/VantaCore;)V

    const-string v3, "VPNServiceInit"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 1707
    :cond_1
    :goto_0
    const-string v1, "VPN network mode disabled, using normal network"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize VPN service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static installSystemHooks()V
    .locals 3

    .line 1660
    const-string v0, "VantaCore"

    :try_start_0
    invoke-static {}, Lio/vanta/utils/SimpleCrashFix;->installSimpleFix()V

    .line 1661
    const-string v1, "System hooks installed successfully"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1663
    const-string v2, "Failed to install system hooks"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static is64Bit()Z
    .locals 2

    .line 1492
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    .line 1495
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isBlackProcessRunning()Z
    .locals 9

    .line 418
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Provider resolution failed: "

    const-string v2, "Provider call failed: "

    const/4 v3, 0x0

    .line 418
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 419
    const-string v5, "_B_|_server_name_"

    const-string v6, "test"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x1

    .line 423
    :try_start_1
    invoke-static {}, Lio/vanta/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VM"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4}, Lio/vanta/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 425
    const-string v4, "Black process is running - SystemCallProvider accessible"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception v4

    .line 429
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :try_start_3
    invoke-static {}, Lio/vanta/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 438
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 440
    const-string v2, "Provider exists but call failed - black process may be starting"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v3

    :catch_1
    move-exception v2

    .line 445
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :try_start_5
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    .line 451
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_3

    const v2, 0x7fffffff

    .line 453
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 454
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DaemonService"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    const-string v1, "DaemonService is running - black process active"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return v5

    :catch_2
    move-exception v1

    .line 461
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service check failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    const-string v1, "Black process is not running"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return v3

    :catch_3
    move-exception v1

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error checking black process status: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isRunningApplication(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1782
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return v0

    .line 1787
    :cond_0
    invoke-static {}, Lio/vanta/core/system/ServiceManager;->get()Lio/vanta/core/system/ServiceManager;

    .line 1788
    const-string v1, "activity_manager"

    .line 1789
    invoke-static {v1}, Lio/vanta/core/system/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/ActivityStack;

    if-nez v1, :cond_1

    return v0

    .line 1792
    :cond_1
    invoke-static {v1}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object v1

    const-string v2, "mTasks"

    invoke-virtual {v1, v2}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    return v0

    .line 1794
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 1795
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Lio/vanta/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lio/vanta/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1797
    iget-object v2, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/ActivityRecord;

    .line 1798
    iget-boolean v3, v3, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1805
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isRunningApplication failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VantaCore"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public static isThreadInit()Z
    .locals 3

    .line 1552
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->isThreadInit()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1554
    const-string v1, "VantaCore"

    const-string v2, "BActivityThread.isThreadInit() failed, returning false"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isValidProcessState()Z
    .locals 5

    .line 582
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Package name access failed, process state invalid: "

    const/4 v2, 0x0

    .line 582
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 583
    const-string v1, "Context is null, process state invalid"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 588
    :cond_0
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 589
    const-string v1, "Not in main process, skipping service start"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return v2

    .line 595
    :cond_1
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    .line 597
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

    return v2

    :catch_1
    move-exception v1

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Process state validation failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic lambda$sendLogs$1(Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V
    .locals 3

    const-string v0, "Log Upload Failed: "

    .line 2129
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_0

    .line 2132
    invoke-interface {p1, p0}, Lio/vanta/VantaCore$LogSendListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sendLogs$2(Lio/vanta/VantaCore$LogSendListener;)V
    .locals 3

    .line 2160
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Log Upload Success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p0, :cond_0

    .line 2163
    invoke-interface {p0}, Lio/vanta/VantaCore$LogSendListener;->onSuccess()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sendLogs$3(Lio/vanta/VantaCore$LogSendListener;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/vanta/VantaCore$LogSendListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendLogs$4(Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V
    .locals 8

    .line 2098
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Caption: "

    .line 2098
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 2099
    const-string v3, "crash_log_"

    const-string v4, ".txt"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 2102
    invoke-direct {p0}, Lio/vanta/VantaCore;->getDeviceInfoString()Ljava/lang/String;

    move-result-object v3

    .line 2105
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2107
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\n--- LOGCAT ---\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2108
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2111
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v1, "logcat -d -v threadtime"

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 2112
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x2000

    .line 2113
    :try_start_2
    new-array v1, v1, [B

    .line 2115
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    .line 2116
    invoke-virtual {v4, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2118
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2119
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 2120
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2123
    invoke-static {p2, v2, v3}, Lio/vanta/utils/LogSender;->send(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 p2, 0x270f

    const/4 v1, 0x1

    const/16 v3, 0x1a

    .line 2124
    const-string v4, ".nomad_core"

    const-string v5, "notification"

    if-eqz p1, :cond_3

    .line 2125
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log upload failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1, p3}, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2137
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2138
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz v5, :cond_5

    .line 2140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2142
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_2

    .line 2143
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2145
    :cond_2
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_1
    const v4, 0x1080078

    .line 2148
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "VantaCore Log Upload Failed"

    .line 2149
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2150
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2151
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 2153
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 2158
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {p1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lio/vanta/VantaCore$$ExternalSyntheticLambda4;

    invoke-direct {v6, p3}, Lio/vanta/VantaCore$$ExternalSyntheticLambda4;-><init>(Lio/vanta/VantaCore$LogSendListener;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2168
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2169
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_5

    .line 2171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2173
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_4

    .line 2174
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 2176
    :cond_4
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_2
    const v4, 0x1080089

    .line 2179
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "VantaCore Log Upload"

    .line 2180
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "Logs sent successfully"

    .line 2181
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2182
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 2184
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2190
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 2112
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 2105
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    .line 2192
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send logs: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/vanta/VantaCore$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p1}, Lio/vanta/VantaCore$$ExternalSyntheticLambda5;-><init>(Lio/vanta/VantaCore$LogSendListener;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startLogcat$0()V
    .locals 7

    const-string v0, "logcat -f "

    .line 1309
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_logcat.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1311
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1314
    :goto_0
    invoke-direct {p0}, Lio/vanta/VantaCore;->logDeviceInfo()V

    .line 1317
    const-string v4, "logcat -c"

    if-eqz v3, :cond_6

    .line 1319
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1320
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v2, "mime_type"

    const-string v3, "text/plain"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v2, "relative_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/logs"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1325
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1327
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4, v5}, Lio/vanta/utils/ShellUtils;->execCommand(Ljava/lang/String;Z)Lio/vanta/utils/ShellUtils$CommandResult;

    .line 1328
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x1000

    .line 1330
    :try_start_2
    new-array v2, v2, [B

    .line 1332
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1333
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 1335
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v0, :cond_5

    .line 1336
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 1329
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    .line 1325
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1

    :cond_5
    return-void

    .line 1340
    :cond_6
    new-instance v3, Ljava/io/File;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v6, "logs"

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1342
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1344
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1345
    invoke-static {v1}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 1346
    invoke-static {v4, v5}, Lio/vanta/utils/ShellUtils;->execCommand(Ljava/lang/String;Z)Lio/vanta/utils/ShellUtils$CommandResult;

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lio/vanta/utils/ShellUtils;->execCommand(Ljava/lang/String;Z)Lio/vanta/utils/ShellUtils$CommandResult;

    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to save logcat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDeviceInfo()V
    .locals 32

    .line 1358
    const-string v0, ", "

    const-string v1, " MB"

    const-string v2, "\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2563"

    const-string v3, "VantaCore"

    .line 0
    const-string v4, "\u2551 Used Heap: "

    const-string v5, "\u2551 Free Heap: "

    const-string v6, "\u2551 App Version: "

    const-string v7, "\u2551 Total Heap: "

    const-string v8, "\u2551 Timestamp: "

    const-string v9, "\u2551 Package: "

    const-string v10, "\u2551 App info unavailable: "

    const-string v11, "\u2551 Max Heap: "

    const-string v12, "\u2551 Memory info unavailable: "

    const-string v13, "\u2551 Tags: "

    const-string v14, "\u2551 Type: "

    const-string v15, "\u2551 Fingerprint: "

    move-object/from16 v16, v8

    const-string v8, "\u2551 64-bit ABIs: "

    move-object/from16 v17, v10

    const-string v10, "\u2551 32-bit ABIs: "

    move-object/from16 v18, v6

    const-string v6, "\u2551 Supported ABIs: "

    move-object/from16 v19, v9

    const-string v9, "\u2551 Hardware: "

    move-object/from16 v20, v12

    const-string v12, "\u2551 Board: "

    move-object/from16 v21, v4

    const-string v4, "\u2551 Product: "

    move-object/from16 v22, v5

    const-string v5, "\u2551 Device: "

    move-object/from16 v23, v7

    const-string v7, "\u2551 Model: "

    move-object/from16 v24, v1

    const-string v1, "\u2551 Brand: "

    move-object/from16 v25, v11

    const-string v11, "\u2551 Manufacturer: "

    move-object/from16 v26, v13

    const-string v13, "\u2551 Security Patch: "

    move-object/from16 v27, v14

    const-string v14, "\u2551 Build Display: "

    move-object/from16 v28, v15

    const-string v15, "\u2551 Build ID: "

    move-object/from16 v29, v8

    const-string v8, "\u2551 SDK Level: "

    move-object/from16 v30, v10

    const-string v10, "\u2551 Android Version: "

    move-object/from16 v31, v0

    .line 1358
    :try_start_0
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2557"

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v0, "\u2551                    DEVICE INFORMATION                        \u2551"

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    move-object/from16 v4, v31

    invoke-static {v4, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_1
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v6

    .line 1404
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    div-long/2addr v0, v6

    .line 1405
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v25

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v8, v0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1411
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1418
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1421
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v4, 0x1c

    const-string v5, "\u2551 Version Code: "

    if-lt v1, v4, :cond_2

    .line 1424
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1426
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1430
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_3
    :goto_1
    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss Z"

    .line 1436
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u255d"

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to log device info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .line 1030
    invoke-static {}, Lvanta/android/app/BRActivityThread;->get()Lvanta/android/app/ActivityThreadStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadStatic;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private notifyServiceAvailableCallbacks()V
    .locals 5

    const-string v0, "Notifying "

    .line 1831
    iget-object v1, p0, Lio/vanta/VantaCore;->mServiceCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1832
    :try_start_0
    iget-object v2, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1833
    const-string v2, "VantaCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " callbacks that services are available"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v0, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1836
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1838
    :try_start_2
    const-string v3, "VantaCore"

    const-string v4, "Error in service available callback"

    invoke-static {v3, v4, v2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1841
    :cond_0
    iget-object v0, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1843
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private refreshProcessContext()V
    .locals 4

    .line 786
    const-string v0, "VantaCore"

    :try_start_0
    const-string v1, "Attempting to refresh process context"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context refresh failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshServerProcessContext()V
    .locals 4

    .line 2006
    const-string v0, "VantaCore"

    :try_start_0
    const-string v1, "Attempting to refresh server process context"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server process context refresh failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleDelayedRetry(Landroid/content/Intent;I)V
    .locals 3

    .line 611
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Scheduling delayed retry in "

    mul-int/lit16 p2, p2, 0x3e8

    .line 612
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 615
    new-instance v2, Lio/vanta/VantaCore$2;

    invoke-direct {v2, p0, p1}, Lio/vanta/VantaCore$2;-><init>(Lio/vanta/VantaCore;Landroid/content/Intent;)V

    int-to-long p1, p2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to schedule delayed retry: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeStartupMethods()V

    return-void
.end method

.method private scheduleDelayedServerRetry(Landroid/content/Intent;I)V
    .locals 3

    .line 2053
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Scheduling delayed server retry in "

    mul-int/lit16 p2, p2, 0x3e8

    .line 2054
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2057
    new-instance v2, Lio/vanta/VantaCore$9;

    invoke-direct {v2, p0, p1}, Lio/vanta/VantaCore$9;-><init>(Lio/vanta/VantaCore;Landroid/content/Intent;)V

    int-to-long p1, p2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2077
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to schedule delayed server retry: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeServerStartupMethods()V

    return-void
.end method

.method private scheduleDelayedServerServiceStart()V
    .locals 5

    .line 2019
    const-string v0, "VantaCore"

    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2020
    new-instance v2, Lio/vanta/VantaCore$8;

    invoke-direct {v2, p0}, Lio/vanta/VantaCore$8;-><init>(Lio/vanta/VantaCore;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2044
    const-string v1, "Scheduled delayed server service start in 5 seconds"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2046
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule delayed server service start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleDelayedServiceStart()V
    .locals 5

    .line 799
    const-string v0, "VantaCore"

    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 800
    new-instance v2, Lio/vanta/VantaCore$5;

    invoke-direct {v2, p0}, Lio/vanta/VantaCore$5;-><init>(Lio/vanta/VantaCore;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    const-string v1, "Scheduled delayed service start in 5 seconds"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule delayed service start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleProcessRecovery(II)V
    .locals 3

    .line 703
    const-string p1, "VantaCore"

    .line 704
    :try_start_0
    const-string p2, "Scheduling process recovery in 2000ms"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 707
    new-instance v0, Lio/vanta/VantaCore$4;

    invoke-direct {v0, p0}, Lio/vanta/VantaCore$4;-><init>(Lio/vanta/VantaCore;)V

    const/16 v1, 0x7d0

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to schedule process recovery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleProviderCheck()V
    .locals 4

    .line 644
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 645
    new-instance v1, Lio/vanta/VantaCore$3;

    invoke-direct {v1, p0}, Lio/vanta/VantaCore$3;-><init>(Lio/vanta/VantaCore;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to schedule provider check: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleServerProcessRecovery(II)V
    .locals 3

    .line 1930
    const-string p1, "VantaCore"

    .line 1931
    :try_start_0
    const-string p2, "Scheduling server process recovery in 2000ms"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1934
    new-instance v0, Lio/vanta/VantaCore$7;

    invoke-direct {v0, p0}, Lio/vanta/VantaCore$7;-><init>(Lio/vanta/VantaCore;)V

    const/16 v1, 0x7d0

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to schedule server process recovery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setEssentialProperties(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V
    .locals 4

    .line 1669
    const-string v0, "true"

    const-string v1, "VantaCore"

    .line 0
    const-string v2, "Could not access ResourcesManager overlay field: "

    if-eqz p2, :cond_0

    .line 1673
    invoke-static {p1}, Lio/vanta/utils/compat/HiddenApiCompat;->bypassHiddenApi(Landroid/content/Context;)Z

    .line 1676
    :try_start_0
    invoke-static {}, Lio/vanta/core/NativeCore;->disableResourceLoading()Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1678
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to call native resource disabling: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_0
    :try_start_1
    const-string p1, "android.view.WindowManager.IGNORE_WINDOW_LEAKS"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1685
    const-string p1, "android.app.Activity.IGNORE_WINDOW_LEAKS"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1686
    const-string p1, "android.view.WindowManager.SUPPRESS_WINDOW_LEAK_WARNINGS"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p1, "android.app.ResourcesManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1691
    const-string p2, "mDisableOverlayLoading"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 1692
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1695
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1698
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set essential properties: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 1670
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientConfiguration is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startBlackProcess()V
    .locals 9

    .line 476
    const-string v0, "VantaCore"

    :try_start_0
    const-string v1, "Starting black process..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lio/vanta/VantaCore;->isValidProcessState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    const-string v1, "Process state is invalid, delaying service start"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lio/vanta/VantaCore;->scheduleDelayedServiceStart()V

    return-void

    .line 487
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 488
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 491
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_6

    if-nez v3, :cond_6

    const/4 v5, 0x1

    if-lez v2, :cond_2

    .line 499
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for starting DaemonService"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v5, :cond_1

    .line 503
    const-string v6, "First retry - continuing immediately"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 506
    :cond_1
    invoke-direct {p0, v1, v2}, Lio/vanta/VantaCore;->scheduleDelayedRetry(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 511
    :cond_2
    :goto_1
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 512
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 513
    const-string v6, "Started DaemonService as foreground service"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 516
    :cond_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 517
    const-string v6, "Started DaemonService as regular service"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v3, v5

    goto/16 :goto_3

    :catch_0
    move-exception v5

    .line 540
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start DaemonService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    invoke-direct {p0, v2, v4, v5}, Lio/vanta/VantaCore;->handleServiceStartFailure(IILjava/lang/Exception;)V

    goto/16 :goto_3

    :catch_1
    move-exception v6

    .line 522
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MissingForegroundServiceTypeException"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 523
    const-string v7, "Foreground service type missing, falling back to regular service"

    invoke-static {v0, v7}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 526
    const-string v7, "Started DaemonService as regular service (fallback)"

    invoke-static {v0, v7}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    .line 529
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to start DaemonService even as regular service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    invoke-direct {p0, v2, v4, v6}, Lio/vanta/VantaCore;->handleServiceStartFailure(IILjava/lang/Exception;)V

    goto :goto_3

    .line 532
    :cond_4
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v7, "process is bad"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    const-string v5, "Process is bad, attempting to recover and retry"

    invoke-static {v0, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0, v2, v4}, Lio/vanta/VantaCore;->handleProcessBadError(II)V

    goto :goto_3

    .line 536
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Security exception starting DaemonService: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    invoke-direct {p0, v2, v4, v6}, Lio/vanta/VantaCore;->handleServiceStartFailure(IILjava/lang/Exception;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-nez v3, :cond_7

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start DaemonService after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeStartupMethods()V

    goto :goto_5

    .line 553
    :cond_7
    invoke-direct {p0}, Lio/vanta/VantaCore;->scheduleProviderCheck()V

    .line 556
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/vanta/VantaCore$1;

    invoke-direct {v3, p0}, Lio/vanta/VantaCore$1;-><init>(Lio/vanta/VantaCore;)V

    const/16 v4, 0x41

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 567
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService to DaemonService failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_4
    const-string v1, "Started DaemonService to initialize black process"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 572
    const-string v2, "Failed to start black process"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    invoke-direct {p0}, Lio/vanta/VantaCore;->scheduleDelayedServiceStart()V

    :goto_5
    return-void
.end method

.method private startLogcat()V
    .locals 2

    .line 1307
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/vanta/VantaCore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/vanta/VantaCore$$ExternalSyntheticLambda1;-><init>(Lio/vanta/VantaCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tryAlternativeServerStartupMethods()V
    .locals 4

    .line 1968
    const-string v0, "Trying alternative startup methods for server process..."

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :try_start_0
    invoke-direct {p0}, Lio/vanta/VantaCore;->getAlternativeContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1974
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1975
    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1976
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1977
    const-string v0, "Alternative context startup successful for server process"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1981
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Alternative context startup failed for server process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_0
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1987
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 1988
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1989
    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1990
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1991
    const-string v0, "Application context startup successful for server process"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1995
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application context startup failed for server process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_1
    const-string v0, "All alternative startup methods failed for server process"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryAlternativeStartupMethods()V
    .locals 4

    .line 733
    const-string v0, "Trying alternative startup methods..."

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :try_start_0
    invoke-direct {p0}, Lio/vanta/VantaCore;->getAlternativeContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 740
    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 741
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 742
    const-string v0, "Alternative context startup successful"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Alternative context startup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 752
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 753
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 754
    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 755
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 756
    const-string v0, "Application context startup successful"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application context startup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_1
    const-string v0, "All alternative startup methods failed"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lio/vanta/VantaCore;->mAppLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addServiceAvailableCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1812
    iget-object v0, p0, Lio/vanta/VantaCore;->mServiceCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_0
    iget-boolean v1, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    if-eqz v1, :cond_0

    .line 1815
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1817
    :cond_0
    iget-object v1, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1819
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public areServicesAvailable()Z
    .locals 25

    move-object/from16 v1, p0

    .line 216
    const-string v2, "Failed to create fallback service: "

    const-string v3, "notification_manager"

    const-string v4, "location_manager"

    const-string v5, "account_manager"

    const-string v6, "job_manager"

    const-string v7, "user_manager"

    const-string v8, "storage_manager"

    const-string v9, "package_manager"

    const-string v10, "activity_manager"

    const-string v11, "VantaCore"

    iget-boolean v0, v1, Lio/vanta/VantaCore;->mServicesInitialized:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    return v12

    :cond_0
    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x7

    const/16 v13, 0x8

    const/16 v20, 0x6

    const/4 v14, 0x0

    .line 222
    :try_start_0
    invoke-virtual {v1}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_3

    :try_start_1
    invoke-direct {v1}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    const-string v0, "Black process not running, starting it and using fallback services..."

    invoke-static {v11, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {v1}, Lio/vanta/VantaCore;->startBlackProcess()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v21, 0x5

    .line 227
    :try_start_2
    new-array v15, v13, [Ljava/lang/String;

    aput-object v10, v15, v14

    aput-object v9, v15, v12

    aput-object v8, v15, v18

    aput-object v7, v15, v17

    aput-object v6, v15, v16

    aput-object v5, v15, v21

    aput-object v4, v15, v20

    aput-object v3, v15, v19

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v22, v14

    :goto_0
    if-ge v14, v13, :cond_2

    .line 239
    :try_start_3
    aget-object v13, v15, v14

    .line 241
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-direct {v1, v13}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v12, v1, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 246
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x8

    goto :goto_0

    .line 250
    :cond_2
    iput-boolean v12, v1, Lio/vanta/VantaCore;->mServicesInitialized:Z

    .line 251
    const-string v0, "Services initialized with fallbacks"

    invoke-static {v11, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {v1}, Lio/vanta/VantaCore;->notifyServiceAvailableCallbacks()V

    return v12

    :catch_1
    move-exception v0

    move/from16 v22, v14

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move/from16 v22, v14

    const/16 v21, 0x5

    goto :goto_4

    :cond_3
    move/from16 v22, v14

    const/16 v21, 0x5

    move v12, v13

    .line 258
    new-array v13, v12, [Ljava/lang/String;

    aput-object v10, v13, v22

    const/16 v23, 0x1

    aput-object v9, v13, v23

    aput-object v8, v13, v18

    aput-object v7, v13, v17

    aput-object v6, v13, v16

    aput-object v5, v13, v21

    aput-object v4, v13, v20

    aput-object v3, v13, v19

    move/from16 v12, v22

    :goto_2
    const/16 v14, 0x8

    if-ge v12, v14, :cond_5

    .line 270
    aget-object v14, v13, v12

    .line 272
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-direct {v1, v14}, Lio/vanta/VantaCore;->getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v24, v3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 274
    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v24, v3

    :try_start_8
    const-string v3, "Failed to initialize service: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ", trying fallback"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    invoke-direct {v1, v14}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v3, v1, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v24

    goto :goto_2

    :cond_5
    move-object/from16 v24, v3

    .line 283
    const-string v0, "Services initialized successfully"

    invoke-static {v11, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    .line 284
    iput-boolean v12, v1, Lio/vanta/VantaCore;->mServicesInitialized:Z

    .line 286
    invoke-direct {v1}, Lio/vanta/VantaCore;->notifyServiceAvailableCallbacks()V

    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return v12

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v24, v3

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v22, v14

    const/16 v21, 0x5

    .line 288
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Failed to initialize services, using fallbacks: "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x8

    .line 291
    :try_start_9
    new-array v3, v12, [Ljava/lang/String;

    aput-object v10, v3, v22

    const/16 v23, 0x1

    aput-object v9, v3, v23

    aput-object v8, v3, v18

    aput-object v7, v3, v17

    aput-object v6, v3, v16

    aput-object v5, v3, v21

    aput-object v4, v3, v20

    aput-object v24, v3, v19

    move/from16 v4, v22

    const/16 v12, 0x8

    :goto_6
    if-ge v4, v12, :cond_7

    .line 303
    aget-object v5, v3, v4

    .line 305
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :try_start_a
    invoke-direct {v1, v5}, Lio/vanta/VantaCore;->createFallbackService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 307
    iget-object v6, v1, Lio/vanta/VantaCore;->mServices:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 310
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v12, 0x1

    .line 314
    iput-boolean v12, v1, Lio/vanta/VantaCore;->mServicesInitialized:Z

    .line 315
    const-string v0, "Services initialized with fallbacks after error"

    invoke-static {v11, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {v1}, Lio/vanta/VantaCore;->notifyServiceAvailableCallbacks()V

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    return v12

    :catch_8
    move-exception v0

    .line 320
    const-string v2, "Failed to create fallback services"

    invoke-static {v11, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v2, v22

    .line 321
    iput-boolean v2, v1, Lio/vanta/VantaCore;->mServicesInitialized:Z

    return v2
.end method

.method public clearPackage(Ljava/lang/String;I)V
    .locals 1

    .line 1219
    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->clearPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public closeCodeInit()V
    .locals 4

    .line 1516
    :try_start_0
    const-string v0, "io.vanta.closecode.Entry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1517
    const-string v1, "attach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1518
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeCodeInit reflection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createUser(I)Lio/vanta/core/system/user/BUserInfo;
    .locals 1

    .line 1231
    invoke-static {}, Lio/vanta/fake/frameworks/BUserManager;->get()Lio/vanta/fake/frameworks/BUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/fake/frameworks/BUserManager;->createUser(I)Lio/vanta/core/system/user/BUserInfo;

    move-result-object p1

    return-object p1
.end method

.method public deleteUser(I)V
    .locals 1

    .line 1235
    invoke-static {}, Lio/vanta/fake/frameworks/BUserManager;->get()Lio/vanta/fake/frameworks/BUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/fake/frameworks/BUserManager;->deleteUser(I)V

    return-void
.end method

.method public doAttachBaseContext(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V
    .locals 7

    .line 847
    const-string v0, "VantaCore"

    .line 0
    const-string v1, "Could not access WindowManager leak field: "

    const/4 v2, 0x1

    .line 847
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/vanta/VantaCore;->setEssentialProperties(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V

    .line 851
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "android.view.WindowManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 852
    const-string v4, "mIgnoreWindowLeaks"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 853
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 856
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

    goto :goto_0

    :catch_1
    move-exception v1

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set essential properties: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_0
    sput-object p1, Lio/vanta/VantaCore;->sContext:Landroid/content/Context;

    .line 864
    iput-object p2, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    .line 867
    invoke-static {}, Lio/vanta/VantaCore;->installSystemHooks()V

    .line 869
    invoke-direct {p0}, Lio/vanta/VantaCore;->initNotificationManager()V

    .line 871
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/VantaCore;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 872
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    sget-object v1, Lio/vanta/VantaCore$ProcessType;->Main:Lio/vanta/VantaCore$ProcessType;

    iput-object v1, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    .line 874
    invoke-direct {p0}, Lio/vanta/VantaCore;->startLogcat()V

    goto :goto_1

    .line 875
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lio/vanta/R$string;->black_box_service_name:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    sget-object v1, Lio/vanta/VantaCore$ProcessType;->Server:Lio/vanta/VantaCore$ProcessType;

    iput-object v1, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    goto :goto_1

    .line 878
    :cond_1
    sget-object v1, Lio/vanta/VantaCore$ProcessType;->BAppClient:Lio/vanta/VantaCore$ProcessType;

    iput-object v1, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    .line 880
    :goto_1
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/VantaCore;->isBlackProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->load()V

    .line 882
    const-string v1, "p0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 887
    :cond_2
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isServerProcess()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 888
    invoke-virtual {p2}, Lio/vanta/app/configuration/ClientConfiguration;->isEnableDaemonService()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 891
    :try_start_3
    invoke-direct {p0}, Lio/vanta/VantaCore;->isValidProcessState()Z

    move-result p1

    if-nez p1, :cond_3

    .line 892
    const-string p1, "Server process state is invalid, delaying service start"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0}, Lio/vanta/VantaCore;->scheduleDelayedServerServiceStart()V

    goto :goto_3

    .line 898
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 899
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v1, Lio/vanta/core/system/DaemonService;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 902
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/4 p2, 0x0

    move v1, p2

    :goto_2
    const/4 v3, 0x3

    if-ge p2, v3, :cond_9

    if-nez v1, :cond_9

    if-lez p2, :cond_5

    .line 910
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for starting DaemonService in server process"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_4

    .line 914
    const-string v4, "First retry for server process - continuing immediately"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 917
    :cond_4
    invoke-direct {p0, p1, p2}, Lio/vanta/VantaCore;->scheduleDelayedServerRetry(Landroid/content/Intent;I)V

    :goto_3
    return-void

    .line 922
    :cond_5
    :goto_4
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 923
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 924
    const-string v4, "Started DaemonService as foreground service in server process"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 927
    :cond_6
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 928
    const-string v4, "Started DaemonService as regular service in server process"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    move v1, v2

    goto/16 :goto_6

    :catch_2
    move-exception v4

    .line 951
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start DaemonService in server process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    invoke-direct {p0, p2, v3, v4}, Lio/vanta/VantaCore;->handleServerServiceStartFailure(IILjava/lang/Exception;)V

    goto/16 :goto_6

    :catch_3
    move-exception v4

    .line 933
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MissingForegroundServiceTypeException"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 934
    const-string v4, "Foreground service type missing in server process, falling back to regular service"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 937
    const-string v4, "Started DaemonService as regular service in server process (fallback)"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    .line 940
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start DaemonService in server process even as regular service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    invoke-direct {p0, p2, v3, v4}, Lio/vanta/VantaCore;->handleServerServiceStartFailure(IILjava/lang/Exception;)V

    goto :goto_6

    .line 943
    :cond_7
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "process is bad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 944
    const-string v4, "Server process is bad, attempting to recover and retry"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-direct {p0, p2, v3}, Lio/vanta/VantaCore;->handleServerProcessBadError(II)V

    goto :goto_6

    .line 947
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security exception starting DaemonService in server process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    invoke-direct {p0, p2, v3, v4}, Lio/vanta/VantaCore;->handleServerServiceStartFailure(IILjava/lang/Exception;)V

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    :cond_9
    if-nez v1, :cond_a

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to start DaemonService in server process after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " attempts"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0}, Lio/vanta/VantaCore;->tryAlternativeServerStartupMethods()V

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 963
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error starting DaemonService in server process: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    invoke-direct {p0}, Lio/vanta/VantaCore;->scheduleDelayedServerServiceStart()V

    .line 971
    :cond_a
    :goto_7
    invoke-direct {p0}, Lio/vanta/VantaCore;->initVpnService()V

    .line 973
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/vanta/fake/hook/HookManager;->init()V

    return-void
.end method

.method public doCreate()V
    .locals 10

    .line 978
    const-string v0, "ms"

    const-string v1, "VantaCore"

    .line 0
    const-string v2, "Failed to initialize ServiceManager, continuing with fallback: "

    const-string v3, "VantaCore initialization completed in "

    .line 978
    invoke-static {}, Lio/vanta/VantaCore;->installSystemHooks()V

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 986
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/VantaCore;->ensureBlackProcessInitialized()V

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 990
    const-string v6, "Initialization timeout exceeded, proceeding with fallback services"

    invoke-static {v1, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->ensureProperInitialization()V

    .line 996
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isBlackProcess()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 997
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->init()V

    .line 999
    :cond_1
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isServerProcess()Z

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_2

    .line 1002
    :try_start_1
    invoke-static {}, Lio/vanta/core/system/ServiceManager;->initBlackManager()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 1004
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/vanta/fake/frameworks/BPackageManager;->resetTransactionThrottler()V

    .line 1011
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1016
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VantaCore initialization failed after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    :try_start_3
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isServerProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1021
    invoke-static {}, Lio/vanta/core/system/ServiceManager;->initBlackManager()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1024
    const-string v2, "Fallback initialization also failed"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public ensureBlackProcessInitialized()V
    .locals 4

    .line 818
    invoke-virtual {p0}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 819
    const-string v0, "Ensuring black process is initialized..."

    const-string v1, "VantaCore"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lio/vanta/VantaCore;->startBlackProcess()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 825
    invoke-direct {p0}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1f4

    .line 827
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 835
    :cond_0
    invoke-direct {p0}, Lio/vanta/VantaCore;->isBlackProcessRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    const-string v0, "Black process initialized successfully"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 838
    :cond_1
    const-string v0, "Black process failed to initialize, using fallback services"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public getAppLifecycleCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/app/configuration/AppLifecycleCallback;",
            ">;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lio/vanta/VantaCore;->mAppLifecycleCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAppPackage()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lio/vanta/VantaCore;->mCurrentAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/vanta/VantaCore;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAppUid()I
    .locals 1

    .line 177
    iget v0, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lio/vanta/VantaCore;->mHostUid:I

    return v0
.end method

.method public getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/vanta/VantaCore;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/vanta/VantaCore;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1298
    iget-object v0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Lio/vanta/app/configuration/ClientConfiguration;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1211
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1215
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 329
    invoke-virtual {p0}, Lio/vanta/VantaCore;->areServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Services not available, skipping service request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VantaCore"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lio/vanta/VantaCore;->getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 1227
    invoke-static {}, Lio/vanta/fake/frameworks/BUserManager;->get()Lio/vanta/fake/frameworks/BUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/fake/frameworks/BUserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleAllFilesAccessResult(I)Z
    .locals 0

    .line 1097
    invoke-static {p1}, Lio/vanta/utils/StoragePermissionHelper;->handleAllFilesAccessResult(I)Z

    move-result p1

    return p1
.end method

.method public handleStoragePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Z
    .locals 0

    .line 1092
    invoke-static {p1, p2, p3, p4}, Lio/vanta/utils/StoragePermissionHelper;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method

.method public hasAllFilesAccess()Z
    .locals 1

    .line 1066
    invoke-static {}, Lio/vanta/utils/StoragePermissionHelper;->hasAllFilesAccess()Z

    move-result v0

    return v0
.end method

.method public hasFullFileAccess()Z
    .locals 1

    .line 1071
    sget-object v0, Lio/vanta/VantaCore;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lio/vanta/utils/StoragePermissionHelper;->hasFullFileAccess(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasStoragePermission()Z
    .locals 1

    .line 1061
    sget-object v0, Lio/vanta/VantaCore;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lio/vanta/utils/StoragePermissionHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public installGms(I)Lio/vanta/entity/pm/InstallResult;
    .locals 0

    .line 1259
    invoke-static {p1}, Lio/vanta/core/GmsCore;->installGApps(I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Landroid/net/Uri;I)Lio/vanta/entity/pm/InstallResult;
    .locals 2

    .line 1199
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    const-string p1, "VantaCore"

    const-string p2, "Bcore license invalid or expired. Installation blocked."

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance p1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p2, "Bcore license invalid or expired"

    invoke-virtual {p1, p2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 1203
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lio/vanta/entity/pm/InstallOption;->installByStorage()Lio/vanta/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/entity/pm/InstallOption;->makeUriFile()Lio/vanta/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Ljava/io/File;I)Lio/vanta/entity/pm/InstallResult;
    .locals 4

    .line 1178
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "VantaCore"

    if-nez v0, :cond_0

    .line 1179
    const-string p1, "Bcore license invalid or expired. Installation blocked."

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance p1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p2, "Bcore license invalid or expired"

    invoke-virtual {p1, p2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 1183
    :cond_0
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1186
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    new-instance v0, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {v0}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string v2, "Cannot clone VantaCore app from within VantaCore. This would create infinite recursion and is not allowed for security reasons."

    invoke-virtual {v0, v2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1192
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not verify package info for APK: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lio/vanta/entity/pm/InstallOption;->installByStorage()Lio/vanta/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;
    .locals 6

    # XJ: route content:// / file:// source strings to the Uri overload (makeUriFile),
    # so cloning from a picked APK file works instead of being treated as a package name.
    const-string v0, "content://"
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :xj_uri
    const-string v0, "file://"
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :xj_noturi
    :xj_uri
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual {p0, v0, p2}, Lio/vanta/VantaCore;->installPackageAsUser(Landroid/net/Uri;I)Lio/vanta/entity/pm/InstallResult;
    move-result-object p1
    return-object p1
    :xj_noturi

    const-string v0, "installPackageAsUser: "

    .line 1153
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "VantaCore"

    if-nez v1, :cond_0

    .line 1154
    const-string p1, "Bcore license invalid or expired. Installation blocked."

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance p1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p2, "Bcore license invalid or expired"

    invoke-virtual {p1, p2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 1159
    :cond_0
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    new-instance p1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p2, "Cannot clone VantaCore app from within VantaCore. This would create infinite recursion and is not allowed for security reasons."

    invoke-virtual {p1, p2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 1163
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1164
    invoke-static {}, Lio/vanta/entity/pm/InstallOption;->installBySystem()Lio/vanta/entity/pm/InstallOption;

    move-result-object v3

    .line 1165
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1166
    array-length v5, v4

    if-lez v5, :cond_2

    .line 1167
    invoke-virtual {v3, v4}, Lio/vanta/entity/pm/InstallOption;->withSplitCodePaths([Ljava/lang/String;)Lio/vanta/entity/pm/InstallOption;

    .line 1168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " has "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " split APK(s), forwarding them"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_2
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, p2}, Lio/vanta/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1172
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1173
    new-instance p2, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p2}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public isBlackProcess()Z
    .locals 2

    .line 1278
    iget-object v0, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    sget-object v1, Lio/vanta/VantaCore$ProcessType;->BAppClient:Lio/vanta/VantaCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableFlagSecure()Z
    .locals 1

    .line 1291
    iget-object v0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Lio/vanta/app/configuration/ClientConfiguration;->isDisableFlagSecure()Z

    move-result v0

    return v0
.end method

.method public isInstallGms(I)Z
    .locals 0

    .line 1255
    invoke-static {p1}, Lio/vanta/core/GmsCore;->isInstalledGoogleService(I)Z

    move-result p1

    return p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 1

    .line 1141
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isMainProcess()Z
    .locals 2

    .line 1282
    iget-object v0, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    sget-object v1, Lio/vanta/VantaCore$ProcessType;->Main:Lio/vanta/VantaCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNomadApp(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1873
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1877
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1879
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1880
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking if APK is VantaCore app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VantaCore"

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public isNomadApp(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1890
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1893
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSandboxedEnvironment()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lio/vanta/VantaCore;->mIsSandboxedEnvironment:Z

    return v0
.end method

.method public isServerProcess()Z
    .locals 2

    .line 1286
    iget-object v0, p0, Lio/vanta/VantaCore;->mProcessType:Lio/vanta/VantaCore$ProcessType;

    sget-object v1, Lio/vanta/VantaCore$ProcessType;->Server:Lio/vanta/VantaCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServicesAvailable()Z
    .locals 1

    .line 1867
    iget-boolean v0, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    return v0
.end method

.method public isSupportGms()Z
    .locals 1

    .line 1251
    invoke-static {}, Lio/vanta/core/GmsCore;->isSupportGms()Z

    move-result v0

    return v0
.end method

.method public launchApk(Ljava/lang/String;I)Z
    .locals 4

    .line 1110
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VantaCore"

    if-nez v0, :cond_0

    .line 1111
    const-string p1, "Bcore license invalid or expired. Virtual operation blocked."

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1114
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/vanta/VantaCore;->onBeforeMainLaunchApk(Ljava/lang/String;I)V

    .line 1117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    .line 1118
    invoke-virtual {p0}, Lio/vanta/VantaCore;->hasAllFilesAccess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "All files access not granted for launching: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lio/vanta/VantaCore;->mAppLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1122
    invoke-virtual {v3, p1, p2}, Lio/vanta/app/configuration/AppLifecycleCallback;->onStoragePermissionNeeded(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1124
    const-string p1, "Launch cancelled - host app handling permission request"

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1129
    :cond_2
    const-string v0, "Launching without all files access - some file operations may fail"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_3
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    .line 1137
    :cond_4
    invoke-virtual {p0, p1, p2}, Lio/vanta/VantaCore;->startActivity(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onAfterMainActivityOnCreate(Landroid/app/Activity;)V
    .locals 2

    .line 1544
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1545
    invoke-virtual {v1, p1}, Lio/vanta/app/configuration/AppLifecycleCallback;->afterMainActivityOnCreate(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAfterMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2

    .line 1534
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1535
    invoke-virtual {v1, p1, p2}, Lio/vanta/app/configuration/AppLifecycleCallback;->afterMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBeforeMainActivityOnCreate(Landroid/app/Activity;)V
    .locals 2

    .line 1539
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1540
    invoke-virtual {v1, p1}, Lio/vanta/app/configuration/AppLifecycleCallback;->beforeMainActivityOnCreate(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBeforeMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2

    .line 1529
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1530
    invoke-virtual {v1, p1, p2}, Lio/vanta/app/configuration/AppLifecycleCallback;->beforeMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBeforeMainLaunchApk(Ljava/lang/String;I)V
    .locals 2

    .line 1524
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1525
    invoke-virtual {v1, p1, p2}, Lio/vanta/app/configuration/AppLifecycleCallback;->beforeMainLaunchApk(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lio/vanta/VantaCore;->mAppLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServiceAvailableCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1824
    iget-object v0, p0, Lio/vanta/VantaCore;->mServiceCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1825
    :try_start_0
    iget-object v1, p0, Lio/vanta/VantaCore;->mServiceAvailableCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1826
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestAllFilesAccess(Landroid/app/Activity;)V
    .locals 0

    .line 1081
    invoke-static {p1}, Lio/vanta/utils/StoragePermissionHelper;->requestAllFilesAccess(Landroid/app/Activity;)V

    return-void
.end method

.method public requestFullFileAccess(Landroid/app/Activity;)V
    .locals 0

    .line 1086
    invoke-static {p1}, Lio/vanta/utils/StoragePermissionHelper;->requestFullFileAccess(Landroid/app/Activity;)V

    return-void
.end method

.method public requestInstallPackage(Ljava/io/File;I)Z
    .locals 1

    .line 1303
    iget-object v0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    invoke-virtual {v0, p1, p2}, Lio/vanta/app/configuration/ClientConfiguration;->requestInstallPackage(Ljava/io/File;I)Z

    move-result p1

    return p1
.end method

.method public requestStoragePermission(Landroid/app/Activity;)V
    .locals 0

    .line 1076
    invoke-static {p1}, Lio/vanta/utils/StoragePermissionHelper;->requestStoragePermission(Landroid/app/Activity;)V

    return-void
.end method

.method public resolveUidForOperation(ILjava/lang/String;)I
    .locals 5

    .line 192
    const-string v0, ": "

    const-string v1, "Nomad"

    .line 0
    const-string v2, "Resolving UID for "

    if-lez p1, :cond_0

    const/16 v3, 0x2710

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x4e1f

    if-le p1, v3, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lio/vanta/VantaCore;->mIsSandboxedEnvironment:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    if-lez v3, :cond_2

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget p1, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return p1

    :catch_0
    move-exception v2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error resolving UID for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public sendLogs(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2088
    invoke-virtual {p0, p1, p2, v0}, Lio/vanta/VantaCore;->sendLogs(Ljava/lang/String;ZLio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method

.method public sendLogs(Ljava/lang/String;ZLio/vanta/VantaCore$LogSendListener;)V
    .locals 2

    .line 2092
    iget-object v0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/vanta/app/configuration/ClientConfiguration;->getLogSenderChatId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2093
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2095
    :cond_1
    new-instance v1, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0, p3}, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;-><init>(Lio/vanta/VantaCore;Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V

    if-eqz p2, :cond_2

    .line 2202
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 2204
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCurrentAppUid(ILjava/lang/String;)V
    .locals 2

    .line 166
    iput p1, p0, Lio/vanta/VantaCore;->mCurrentAppUid:I

    .line 167
    iput-object p2, p0, Lio/vanta/VantaCore;->mCurrentAppPackage:Ljava/lang/String;

    .line 170
    iget v0, p0, Lio/vanta/VantaCore;->mHostUid:I

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lio/vanta/VantaCore;->mIsSandboxedEnvironment:Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected sandboxed environment for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " with UID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Nomad"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lio/vanta/VantaCore;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1

    .line 1034
    iget-object v0, p0, Lio/vanta/VantaCore;->mClientConfiguration:Lio/vanta/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Lio/vanta/app/configuration/ClientConfiguration;->isEnableLauncherActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-static {p1, p2}, Lio/vanta/app/LauncherActivity;->launch(Landroid/content/Intent;I)V

    return-void

    .line 1037
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .locals 1

    .line 1223
    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->stopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public uninstallGms(I)Z
    .locals 0

    .line 1263
    invoke-static {p1}, Lio/vanta/core/GmsCore;->uninstallGApps(I)V

    .line 1264
    invoke-static {p1}, Lio/vanta/core/GmsCore;->isInstalledGoogleService(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 1

    .line 1149
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->uninstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 1

    .line 1145
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->uninstallPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public waitForServicesAvailable(J)Z
    .locals 4

    .line 1848
    iget-boolean v0, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1852
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1853
    :goto_0
    iget-boolean v2, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    const-wide/16 v2, 0x64

    .line 1855
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1857
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    return p1

    .line 1862
    :cond_1
    iget-boolean p1, p0, Lio/vanta/VantaCore;->mServicesInitialized:Z

    return p1
.end method
