.class public Lio/vanta/app/BActivityThread;
.super Lio/vanta/core/IBActivityThread$Stub;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/app/BActivityThread$AppBindData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "BActivityThread"

.field private static final mConfigLock:Ljava/lang/Object;

.field private static sBActivityThread:Lio/vanta/app/BActivityThread;

.field public static final sInstallingAuth:Ljava/util/Set;

.field public static final sLocalProviderBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppConfig:Lio/vanta/entity/AppConfig;

.field private mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

.field private final mH:Landroid/os/Handler;

.field private mInitialApplication:Landroid/app/Application;

.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Sh95j2Np7rPCdhDm3SZmxhYJk1E(Lio/vanta/app/BActivityThread;Lio/vanta/entity/am/ReceiverData;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/vanta/app/BActivityThread;->lambda$scheduleReceiver$3(Lio/vanta/entity/am/ReceiverData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xw341cGtWP62_5dlfuigfezH6p8(Lio/vanta/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/vanta/app/BActivityThread;->lambda$bindApplication$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppConfig(Lio/vanta/app/BActivityThread;Lio/vanta/entity/AppConfig;)V
    .registers 2

    iput-object p1, p0, Lio/vanta/app/BActivityThread;->mAppConfig:Lio/vanta/entity/AppConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmConfigLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lio/vanta/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/vanta/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    .line 1281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/vanta/app/BActivityThread;->sLocalProviderBinders:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/vanta/app/BActivityThread;->sInstallingAuth:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Lio/vanta/core/IBActivityThread$Stub;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/app/BActivityThread;->mProviders:Ljava/util/List;

    .line 106
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/app/BActivityThread;->mH:Landroid/os/Handler;

    return-void
.end method

.method private createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .registers 4

    .line 924
    :try_start_0
    invoke-direct {p0, p1}, Lio/vanta/app/BActivityThread;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 925
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 929
    invoke-direct {p0, v0, p1}, Lio/vanta/app/BActivityThread;->ensureApplicationBaseContext(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error creating application: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BActivityThread"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private createApplicationWithFallback(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .registers 6

    .line 794
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Application created successfully: "

    .line 794
    :try_start_4
    invoke-direct {p0, p1}, Lio/vanta/app/BActivityThread;->createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v1

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create application normally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_34
    :try_start_34
    const-string v1, "Attempting fallback application creation"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-direct {p0, p1}, Lio/vanta/app/BActivityThread;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_48

    .line 808
    const-string v1, "ClassLoader is null, using system class loader"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 812
    :cond_48
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 816
    invoke-direct {p0, v1, p1}, Lio/vanta/app/BActivityThread;->ensureApplicationBaseContext(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V

    .line 818
    const-string v2, "Fallback application creation successful"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5c} :catch_5d

    return-object v1

    :catch_5d
    move-exception v1

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fallback application creation failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :try_start_74
    const-string v1, "Creating minimal application wrapper"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v1, Lio/vanta/app/BActivityThread$4;

    invoke-direct {v1, p0}, Lio/vanta/app/BActivityThread$4;-><init>(Lio/vanta/app/BActivityThread;)V

    .line 836
    invoke-direct {p0, v1, p1}, Lio/vanta/app/BActivityThread;->ensureApplicationBaseContext(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_81} :catch_82

    return-object v1

    :catch_82
    move-exception p1

    .line 840
    const-string v1, "Failed to create minimal application wrapper"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private createBindApplicationData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 578
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {p2, p1, v1, v0}, Lio/vanta/fake/service/GmsCallerFix;->resolvePkgInfo(Lio/vanta/fake/frameworks/BPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 579
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 583
    new-instance v0, Lio/vanta/app/BActivityThread$2;

    invoke-direct {v0, p0, p2, p1}, Lio/vanta/app/BActivityThread$2;-><init>(Lio/vanta/app/BActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception p1

    .line 590
    const-string p2, "BActivityThread"

    const-string v0, "Error creating bind application data"

    invoke-static {p2, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    new-instance p1, Lio/vanta/app/BActivityThread$3;

    invoke-direct {p1, p0}, Lio/vanta/app/BActivityThread$3;-><init>(Lio/vanta/app/BActivityThread;)V

    return-object p1
.end method

.method private createFallbackContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 7

    .line 981
    const-string v0, "BActivityThread"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_f

    .line 983
    const-string v2, "VantaCore.getContext() is null, cannot create fallback context"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 988
    :cond_f
    new-instance v3, Lio/vanta/app/BActivityThread$5;

    invoke-direct {v3, p0, v2, p1, v2}, Lio/vanta/app/BActivityThread$5;-><init>(Lio/vanta/app/BActivityThread;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    return-object v3

    :catch_15
    move-exception v2

    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create fallback context for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private createMinimalApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Application;
    .registers 14

    .line 1606
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Successfully attached base context to minimal application for "

    const-string v2, "Minimal application created successfully for "

    const-string v3, "Could not attach base context to minimal application: "

    const-string v4, "Creating minimal application for "

    .line 1606
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    new-instance v4, Lio/vanta/app/BActivityThread$7;

    invoke-direct {v4, p0, p2}, Lio/vanta/app/BActivityThread$7;-><init>(Lio/vanta/app/BActivityThread;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_78

    if-eqz p1, :cond_62

    .line 1630
    :try_start_21
    const-class v5, Landroid/app/Application;

    const-string v6, "attachBaseContext"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1631
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1632
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_4c

    goto :goto_67

    :catch_4c
    move-exception p1

    .line 1635
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 1638
    :cond_62
    const-string p1, "Package context is null, cannot attach base context to minimal application"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_77} :catch_78

    return-object v4

    :catch_78
    move-exception p1

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating minimal application for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static createMinimalPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .registers 12

    .line 1176
    const-string v0, ": "

    const-string v1, "BActivityThread"

    .line 0
    const-string v2, "Successfully created package context with include code for "

    const-string v3, "Failed to create package context with include code for "

    const-string v4, "Successfully created package context with ignore security for "

    const-string v5, "Failed to create package context with ignore security for "

    const-string v6, "Successfully created package context with minimal flags for "

    const-string v7, "Failed to create package context with minimal flags for "

    .line 1176
    :try_start_10
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_c6

    .line 1180
    :try_start_14
    iget-object v9, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 1182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_30

    return-object v9

    :catch_30
    move-exception v6

    .line 1186
    :try_start_31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_c6

    .line 1191
    :cond_4f
    :try_start_4f
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v8, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6a} :catch_6b

    return-object v6

    :catch_6b
    move-exception v4

    .line 1197
    :try_start_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8a} :catch_c6

    .line 1202
    :cond_8a
    :try_start_8a
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v8, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_e7

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a5} :catch_a6

    return-object v4

    :catch_a6
    move-exception v2

    .line 1208
    :try_start_a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c5} :catch_c6

    goto :goto_e7

    :catch_c6
    move-exception v2

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create minimal package context for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_e7
    :goto_e7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Using base context as fallback for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lio/vanta/app/BActivityThread;->createWrappedBaseContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .registers 3

    .line 1164
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createWrappedBaseContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4

    .line 1223
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1226
    new-instance v1, Lio/vanta/app/BActivityThread$6;

    invoke-direct {v1, v0, p0, v0}, Lio/vanta/app/BActivityThread$6;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception v0

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create wrapped base context for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BActivityThread"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static currentActivityThread()Lio/vanta/app/BActivityThread;
    .registers 2

    .line 114
    sget-object v0, Lio/vanta/app/BActivityThread;->sBActivityThread:Lio/vanta/app/BActivityThread;

    if-nez v0, :cond_17

    .line 115
    const-class v0, Lio/vanta/app/BActivityThread;

    monitor-enter v0

    .line 116
    :try_start_7
    sget-object v1, Lio/vanta/app/BActivityThread;->sBActivityThread:Lio/vanta/app/BActivityThread;

    if-nez v1, :cond_12

    .line 117
    new-instance v1, Lio/vanta/app/BActivityThread;

    invoke-direct {v1}, Lio/vanta/app/BActivityThread;-><init>()V

    sput-object v1, Lio/vanta/app/BActivityThread;->sBActivityThread:Lio/vanta/app/BActivityThread;

    .line 119
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 121
    :cond_17
    :goto_17
    sget-object v0, Lio/vanta/app/BActivityThread;->sBActivityThread:Lio/vanta/app/BActivityThread;

    return-object v0
.end method

.method public static ensureActivityContext(Landroid/app/Activity;)V
    .registers 11

    .line 1518
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Successfully attached package context to activity: "

    const-string v2, "Could not attach base context to activity: "

    const-string v3, "Could not get application context: "

    const-string v4, "Activity already has context: "

    const-string v5, "Activity has null context, ensuring valid context: "

    if-nez p0, :cond_10

    goto/16 :goto_d6

    .line 1524
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1530
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_47} :catch_bf

    .line 1535
    :try_start_47
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 1537
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_52

    goto :goto_6b

    :catch_52
    move-exception v4

    .line 1540
    :try_start_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6b} :catch_bf

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_d6

    .line 1548
    :try_start_6d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 1547
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1553
    const-class v4, Landroid/app/Activity;

    const-string v5, "attachBaseContext"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1554
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1555
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a8} :catch_a9

    goto :goto_d6

    :catch_a9
    move-exception p0

    .line 1558
    :try_start_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_be} :catch_bf

    goto :goto_d6

    :catch_bf
    move-exception p0

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ensuring activity context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    :goto_d6
    return-void
.end method

.method private ensureApplicationBaseContext(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V
    .registers 13

    .line 942
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Successfully attached base context to application: "

    const-string v2, "Could not attach base context to application: "

    const-string v3, "Failed to create any context for application: "

    const-string v4, "Could not create package context for application: "

    const-string v5, "Application already has base context: "

    .line 942
    :try_start_c
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 948
    :cond_25
    invoke-static {p2}, Lio/vanta/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_49

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", using fallback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lio/vanta/app/BActivityThread;->createFallbackContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    :cond_49
    if-nez v5, :cond_5e

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5d} :catch_a5

    return-void

    .line 963
    :cond_5e
    :try_start_5e
    invoke-static {v5}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 964
    const-class v4, Landroid/app/Application;

    const-string v5, "attachBaseContext"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 965
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 966
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_8e} :catch_8f

    goto :goto_bc

    :catch_8f
    move-exception p1

    .line 969
    :try_start_90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a4} :catch_a5

    goto :goto_bc

    :catch_a5
    move-exception p1

    .line 974
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error ensuring application base context: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bc
    return-void
.end method

.method public static fixChimeraServiceIfNeeded(Landroid/app/Service;Landroid/content/Context;)V
    .registers 19

    move-object/from16 v1, p0

    .line 280
    const-string v2, "BActivityThread"

    if-nez v1, :cond_8

    goto/16 :goto_2db

    .line 281
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v4, "GmsIntentOperationService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, ".chimera."

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_2db

    .line 289
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2c8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 290
    :goto_29
    const-string v9, "g"

    const/4 v10, 0x0

    if-eqz v0, :cond_49

    if-nez v6, :cond_36

    .line 293
    :try_start_30
    const-string v11, "b"

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_30 .. :try_end_36} :catch_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2c8

    :catch_36
    :cond_36
    if-nez v7, :cond_3c

    .line 298
    :try_start_38
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_3c} :catch_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_2c8

    :catch_3c
    :cond_3c
    if-nez v8, :cond_44

    .line 303
    :try_start_3e
    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_44} :catch_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_2c8

    .line 306
    :catch_44
    :cond_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_29

    :cond_49
    const/4 v11, 0x1

    if-eqz v6, :cond_55

    .line 311
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_56

    :cond_55
    const/4 v12, 0x0

    :goto_56
    if-eqz v7, :cond_60

    .line 316
    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 317
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    .line 320
    :goto_61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fixChimeraServiceIfNeeded: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " -> b="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ", g="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_44 .. :try_end_8b} :catchall_2c8

    .line 322
    const-string v7, "onCreate"

    if-eqz v12, :cond_17f

    .line 323
    :try_start_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixChimeraServiceIfNeeded: Chimera impl already present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8f .. :try_end_ad} :catchall_2c8

    .line 326
    :try_start_ad
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_f6

    const/4 v1, 0x0

    :goto_b2
    if-eqz v0, :cond_c1

    if-nez v1, :cond_c1

    .line 329
    :try_start_b6
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b6 .. :try_end_bc} :catch_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_f6

    .line 331
    :catch_bc
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b2

    :cond_c1
    if-eqz v1, :cond_111

    .line 334
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 335
    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_111

    .line 337
    const-string v0, "fixChimeraServiceIfNeeded: currentB.f is null, calling chimeraService.onCreate()!"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_d5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_f6

    const/4 v5, 0x0

    :goto_d6
    if-eqz v0, :cond_e6

    if-nez v5, :cond_e6

    .line 342
    :try_start_da
    new-array v1, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_e0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_da .. :try_end_e0} :catch_e1
    .catchall {:try_start_da .. :try_end_e0} :catchall_f6

    move-object v5, v1

    .line 344
    :catch_e1
    :try_start_e1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_d6

    :cond_e6
    if-eqz v5, :cond_111

    .line 347
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 348
    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "fixChimeraServiceIfNeeded: invoked currentB.onCreate() successfully"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_e1 .. :try_end_f5} :catchall_f6

    goto :goto_111

    :catchall_f6
    move-exception v0

    .line 354
    :try_start_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixChimeraServiceIfNeeded: checking currentB.f threw: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_f7 .. :try_end_111} :catchall_2c8

    .line 357
    :cond_111
    :goto_111
    :try_start_111
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_115
    if-eqz v0, :cond_2db

    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v4, v1

    move v5, v10

    :goto_11d
    if-ge v5, v4, :cond_15d

    aget-object v6, v1, v5

    .line 360
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_15a

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 361
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 362
    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fixChimeraServiceIfNeeded: currentB.g = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_15a

    .line 365
    invoke-virtual {v6, v12, v10}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 366
    const-string v6, "fixChimeraServiceIfNeeded: Reset currentB.g to false"

    invoke-static {v2, v6}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15a
    add-int/lit8 v5, v5, 0x1

    goto :goto_11d

    .line 370
    :cond_15d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_161
    .catchall {:try_start_111 .. :try_end_161} :catchall_162

    goto :goto_115

    :catchall_162
    move-exception v0

    .line 373
    :try_start_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixChimeraServiceIfNeeded: checking currentB.g threw: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2db

    :cond_17f
    if-eqz v8, :cond_1c3

    .line 379
    invoke-virtual {v8, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_184
    .catchall {:try_start_163 .. :try_end_184} :catchall_2c8

    .line 381
    :try_start_184
    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fixChimeraServiceIfNeeded: service.g() returned "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1c3

    .line 384
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a6
    .catchall {:try_start_184 .. :try_end_1a6} :catchall_1a8

    move-object v12, v0

    goto :goto_1c3

    :catchall_1a8
    move-exception v0

    .line 387
    :try_start_1a9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fixChimeraServiceIfNeeded: service.g() threw: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c3
    :goto_1c3
    if-nez v12, :cond_2db

    if-eqz v6, :cond_2db

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 394
    const-string v0, "com.google.android.gms.chimera.container.intentoperation.GmsIntentOperationChimeraService"

    goto :goto_1d1

    :cond_1d0
    const/4 v0, 0x0

    :goto_1d1
    if-eqz v0, :cond_2db

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixChimeraServiceIfNeeded: Explicitly instantiating Chimera impl "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 399
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v0

    const/4 v12, 0x0

    :goto_1f7
    if-eqz v8, :cond_226

    if-nez v12, :cond_226

    .line 405
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    move v15, v10

    :goto_201
    if-ge v15, v14, :cond_220

    aget-object v16, v13, v15

    .line 406
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "setProxyCallbacks"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_21c

    move-object/from16 v12, v16

    goto :goto_220

    :cond_21c
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto :goto_201

    .line 411
    :cond_220
    :goto_220
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    goto :goto_1f7

    :cond_226
    if-eqz v12, :cond_23e

    .line 414
    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz p1, :cond_230

    move-object/from16 v5, p1

    goto :goto_231

    :cond_230
    move-object v5, v1

    .line 416
    :goto_231
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v5, "fixChimeraServiceIfNeeded: setProxyCallbacks called successfully"

    invoke-static {v2, v5}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_254

    .line 419
    :cond_23e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixChimeraServiceIfNeeded: setProxyCallbacks method not found on "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_254
    invoke-virtual {v6, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixChimeraServiceIfNeeded: bField set to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26d
    .catchall {:try_start_1a9 .. :try_end_26d} :catchall_2c8

    const/4 v5, 0x0

    :goto_26e
    if-eqz v0, :cond_27f

    if-nez v5, :cond_27f

    const/4 v1, 0x0

    .line 429
    :try_start_273
    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_279
    .catch Ljava/lang/NoSuchMethodException; {:try_start_273 .. :try_end_279} :catch_27a
    .catchall {:try_start_273 .. :try_end_279} :catchall_2c8

    move-object v5, v1

    .line 431
    :catch_27a
    :try_start_27a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_26e

    :cond_27f
    if-eqz v5, :cond_2db

    .line 434
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 435
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v0, "fixChimeraServiceIfNeeded: chimeraService.onCreate() called successfully"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28f
    .catchall {:try_start_27a .. :try_end_28f} :catchall_2c8

    .line 438
    :try_start_28f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_293
    if-eqz v0, :cond_2db

    .line 440
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    :goto_29b
    if-ge v5, v3, :cond_2c2

    aget-object v6, v1, v5

    .line 441
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_2be

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2be

    .line 442
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v7, 0x0

    .line 443
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 444
    const-string v6, "fixChimeraServiceIfNeeded: Reset chimeraService.g to false"

    invoke-static {v2, v6}, Lio/vanta/utils/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2bf

    :cond_2be
    const/4 v7, 0x0

    :goto_2bf
    add-int/lit8 v5, v5, 0x1

    goto :goto_29b

    :cond_2c2
    const/4 v7, 0x0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2c7
    .catchall {:try_start_28f .. :try_end_2c7} :catchall_2db

    goto :goto_293

    :catchall_2c8
    move-exception v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "fixChimeraServiceIfNeeded error for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catchall_2db
    :cond_2db
    :goto_2db
    return-void
.end method

.method public static getActivityByToken(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 2

    .line 1494
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->mActivities()Ljava/util/Map;

    move-result-object v0

    .line 1495
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lvanta/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->activity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static getAppConfig()Lio/vanta/entity/AppConfig;
    .registers 2

    .line 125
    sget-object v0, Lio/vanta/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v1

    iget-object v1, v1, Lio/vanta/app/BActivityThread;->mAppConfig:Lio/vanta/entity/AppConfig;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 127
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .registers 1

    .line 145
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 146
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    return-object v0

    .line 147
    :cond_d
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_20

    .line 148
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppPid()I
    .registers 1

    .line 159
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Lio/vanta/entity/AppConfig;->bpid:I

    return v0
.end method

.method public static getAppProcessName()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 136
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    return-object v0

    .line 137
    :cond_d
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    if-eqz v0, :cond_1e

    .line 138
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .line 155
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method private getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .registers 9

    const-string v0, "Error getting info from custom data object: "

    const/4 v1, 0x0

    .line 876
    const-string v2, "BActivityThread"

    const/4 v3, 0x0

    if-eqz p1, :cond_34

    .line 879
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInfo"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 880
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1f

    if-eqz p1, :cond_34

    return-object p1

    :catch_1f
    move-exception p1

    .line 885
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_34
    invoke-static {}, Lio/vanta/VantaCore;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 892
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 893
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_48} :catch_4a

    return-object p1

    :cond_49
    return-object v1

    :catch_4a
    move-exception p1

    .line 898
    const-string v0, "Error getting application info"

    invoke-static {v2, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static getBAppId()I
    .registers 1

    .line 167
    invoke-static {}, Lio/vanta/app/BActivityThread;->getBUid()I

    move-result v0

    invoke-static {v0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getBUid()I
    .registers 1

    .line 163
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 v0, 0x2710

    return v0

    :cond_9
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Lio/vanta/entity/AppConfig;->buid:I

    return v0
.end method

.method public static getCallingBUid()I
    .registers 1

    .line 171
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Lio/vanta/entity/AppConfig;->callingBUid:I

    return v0
.end method

.method private getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .registers 4

    .line 907
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 909
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 913
    :cond_e
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting class loader: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BActivityThread"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method private getProviderInfoList(Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "Error getting providers from custom data object: "

    .line 1054
    const-string v1, "BActivityThread"

    if-eqz p1, :cond_33

    .line 1057
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getProviders"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1058
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1e

    if-eqz p1, :cond_33

    return-object p1

    :catch_1e
    move-exception p1

    .line 1063
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 1070
    const-string v0, "Error getting provider info list"

    invoke-static {v1, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public static getProviders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/app/BActivityThread;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public static getUid()I
    .registers 1

    .line 175
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Lio/vanta/entity/AppConfig;->uid:I

    return v0
.end method

.method public static getUserId()I
    .registers 1

    .line 179
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Lio/vanta/entity/AppConfig;->userId:I

    return v0
.end method

.method private handleSecurityException(Ljava/lang/SecurityException;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .line 1113
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Handling SecurityException for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BActivityThread"

    invoke-static {v0, p3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :try_start_14
    invoke-direct {p0, p4, p2}, Lio/vanta/app/BActivityThread;->createMinimalApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p2

    if-eqz p2, :cond_4b

    .line 1119
    iput-object p2, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 1120
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object p2

    iget-object p3, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-interface {p2, p3}, Lvanta/android/app/ActivityThreadContext;->_set_mInitialApplication(Ljava/lang/Object;)V

    .line 1121
    iget-object p2, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-static {p2}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 1124
    const-string p2, "Created basic application, skipping problematic operations"

    invoke-static {v0, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p2

    .line 1128
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to create basic application after SecurityException: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_4b
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Unable to handle SecurityException"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static hookActivityThread()V
    .registers 4

    .line 1570
    const-string v0, "BActivityThread"

    const-string v1, "Could not replace ActivityThread instrumentation: "

    :try_start_4
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1573
    invoke-static {v2}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityThreadContext;->mInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 1575
    const-string v3, "Found ActivityThread instrumentation, ensuring it\'s our AppInstrumentation"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    instance-of v2, v2, Lio/vanta/fake/delegate/AppInstrumentation;

    if-nez v2, :cond_45

    .line 1579
    const-string v2, "ActivityThread instrumentation is not our AppInstrumentation, attempting to replace"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_57

    .line 1583
    :try_start_22
    invoke-static {}, Lio/vanta/fake/delegate/AppInstrumentation;->get()Lio/vanta/fake/delegate/AppInstrumentation;

    move-result-object v2

    .line 1584
    invoke-virtual {v2}, Lio/vanta/fake/delegate/AppInstrumentation;->injectHook()V

    .line 1585
    const-string v2, "Successfully replaced ActivityThread instrumentation with AppInstrumentation"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_6e

    :catch_2f
    move-exception v2

    .line 1587
    :try_start_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1590
    :cond_45
    const-string v1, "ActivityThread instrumentation is already our AppInstrumentation"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1593
    :cond_4b
    const-string v1, "ActivityThread instrumentation is null"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1596
    :cond_51
    const-string v1, "ActivityThread is null"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_56} :catch_57

    goto :goto_6e

    :catch_57
    move-exception v1

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error hooking ActivityThread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void
.end method

.method private initializeJarEnvironment()V
    .registers 6

    .line 761
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Empty JAR verified: "

    .line 761
    :try_start_4
    const-string v2, "Initializing JAR environment for DEX loading"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->isReady()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 766
    const-string v3, "JarManager not ready, initializing synchronously"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->initializeSync()V

    .line 771
    :cond_1b
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->getEmptyJar()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 772
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 773
    :cond_27
    const-string v3, "Empty JAR not available, attempting to recreate"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->clearCache()V

    .line 775
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->initializeSync()V

    .line 776
    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->getEmptyJar()Ljava/io/File;

    move-result-object v3

    :cond_36
    if-eqz v3, :cond_53

    .line 779
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 782
    :cond_53
    const-string v1, "Empty JAR still not available after retry"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception v1

    .line 786
    const-string v2, "Error initializing JAR environment"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static injectSplitDexPaths(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)V
    .registers 10

    .line 525
    const-string v0, "BActivityThread"

    const-string v1, "addDexPath"

    if-eqz p0, :cond_8b

    if-eqz p1, :cond_8b

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_8b

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 528
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 529
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_20

    :catchall_20
    if-nez v4, :cond_35

    .line 534
    :try_start_22
    const-string v5, "dalvik.system.BaseDexClassLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 535
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 536
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_35

    :catchall_35
    :cond_35
    if-eqz v4, :cond_8b

    .line 541
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, p1

    :goto_3a
    if-ge v2, v1, :cond_8b

    aget-object v3, p1, v2

    if-eqz v3, :cond_88

    .line 542
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 543
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lio/vanta/compat/AndroidCompatibility;->get()Lio/vanta/compat/IAndroidCompatibilityHandler;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/vanta/compat/IAndroidCompatibilityHandler;->prepareDexFile(Ljava/io/File;)V

    .line 546
    :try_start_57
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Injected split APK to ClassLoader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_75

    goto :goto_88

    :catchall_75
    move-exception v5

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to add split dex path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_88
    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_8b
    return-void
.end method

.method private installContentProvider(Landroid/app/Application;Landroid/content/pm/ProviderInfo;)V
    .registers 7

    const-string v0, "Content provider installed: "

    const-string v1, "Application class loader is null, using system class loader for: "

    const-string v2, "Application is null, cannot install content provider: "

    .line 1079
    const-string v3, "BActivityThread"

    if-nez p1, :cond_1d

    .line 1080
    :try_start_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1084
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_39

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1090
    :cond_39
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 1091
    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 1093
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 1095
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p1

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error installing content provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private installContentProvidersWithFallback(Landroid/app/Application;Ljava/lang/Object;)V
    .registers 8

    .line 849
    const-string v0, "BActivityThread"

    .line 0
    const-string v1, "Installing "

    .line 849
    :try_start_4
    invoke-direct {p0, p2}, Lio/vanta/app/BActivityThread;->getProviderInfoList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 850
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7f

    .line 855
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content providers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_85

    .line 859
    :try_start_3b
    invoke-direct {p0, p1, v1}, Lio/vanta/app/BActivityThread;->installContentProvider(Landroid/app/Application;Landroid/content/pm/ProviderInfo;)V

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully installed provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_57

    goto :goto_2f

    :catch_57
    move-exception v2

    .line 862
    :try_start_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 851
    :cond_7f
    :goto_7f
    const-string p1, "No content providers to install"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_84} :catch_85

    return-void

    :catch_85
    move-exception p1

    .line 868
    const-string p2, "Error installing content providers"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8b
    return-void
.end method

.method public static installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "installProvider"

    invoke-static {v0, v1}, Lio/vanta/utils/Reflector;->findMethodByFirstName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7d

    const/4 v1, 0x1

    .line 1286
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 1287
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7c

    if-eqz v5, :cond_7c

    .line 1288
    iget-object p1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz p1, :cond_7c

    .line 1291
    :try_start_30
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1292
    invoke-static {p0}, Lvanta/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lvanta/android/content/ContentProviderHolderOreoContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/content/ContentProviderHolderOreoContext;->provider()Landroid/os/IInterface;

    move-result-object p1

    goto :goto_47

    .line 1294
    :cond_3f
    invoke-static {p0}, Lvanta/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/IActivityManagerContentProviderHolderContext;->provider()Landroid/os/IInterface;

    move-result-object p1

    :goto_47
    if-eqz p1, :cond_7c

    .line 1297
    iget-object p2, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1298
    array-length p3, p2

    :goto_52
    if-ge v2, p3, :cond_7c

    aget-object v0, p2, v2

    .line 1299
    sget-object v1, Lio/vanta/app/BActivityThread;->sLocalProviderBinders:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_62

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :catchall_62
    move-exception v0

    move-object p1, v0

    .line 1303
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to cache local provider binder: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BActivityThread"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1262
    :try_start_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_8
    :cond_8
    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_37

    .line 1264
    :try_start_14
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    goto :goto_1d

    :cond_1b
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1265
    :goto_1d
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    iget-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v3, :cond_8

    .line 1266
    :cond_27
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v2, v4}, Lio/vanta/app/BActivityThread;->installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_8

    goto :goto_8

    .line 1272
    :cond_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->init()V

    return-void

    :catchall_37
    move-exception p1

    .line 1272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->init()V

    .line 1274
    throw p1
.end method

.method private installProvidersWithErrorHandling(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1136
    const-string v0, ": "

    const-string v1, "Error initializing ContentProviderDelegate: "

    const-string v2, "BActivityThread"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1138
    :try_start_a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_9f

    .line 1140
    :try_start_1a
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_21

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    goto :goto_23

    :cond_21
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1141
    :goto_23
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    iget-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v6, :cond_e

    .line 1142
    :cond_2d
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p1, v5, v7}, Lio/vanta/app/BActivityThread;->installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_35} :catch_5c
    .catchall {:try_start_1a .. :try_end_35} :catchall_36

    goto :goto_e

    :catchall_36
    move-exception v6

    .line 1148
    :try_start_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error installing provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_5c
    move-exception v6

    .line 1145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityException installing provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_37 .. :try_end_81} :catchall_9f

    goto :goto_e

    .line 1153
    :cond_82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    :try_start_85
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->init()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_9e

    :catch_89
    move-exception p1

    .line 1157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-void

    :catchall_9f
    move-exception p1

    .line 1153
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    :try_start_a3
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->init()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_bc

    :catch_a7
    move-exception p2

    .line 1157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_bc
    throw p1
.end method

.method public static isThreadInit()Z
    .registers 1

    .line 110
    sget-object v0, Lio/vanta/app/BActivityThread;->sBActivityThread:Lio/vanta/app/BActivityThread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$bindApplication$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    .line 562
    invoke-direct {p0, p1, p2}, Lio/vanta/app/BActivityThread;->createBindApplicationData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p0, p1, p2}, Lio/vanta/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method static synthetic lambda$finishActivity$1(Landroid/os/IBinder;)V
    .registers 4

    .line 1397
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->mActivities()Ljava/util/Map;

    move-result-object v0

    .line 1398
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_19

    .line 1400
    :cond_13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 1403
    :cond_1a
    invoke-static {p0}, Lio/vanta/app/BActivityThread;->getActivityByToken(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    .line 1405
    :goto_1e
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1406
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1e

    .line 1409
    :cond_29
    invoke-static {v0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object v1

    invoke-interface {v1}, Lvanta/android/app/ActivityContext;->mResultCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1410
    invoke-static {v0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityContext;->mResultData()Landroid/content/Intent;

    move-result-object v2

    .line 1411
    invoke-static {p0, v1, v2}, Lio/vanta/utils/compat/ActivityManagerCompat;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    .line 1412
    invoke-static {v0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lvanta/android/app/ActivityContext;->_set_mFinished(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$handleNewIntent$2(Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 6

    .line 1421
    invoke-static {}, Lvanta/com/android/internal/content/BRReferrerIntent;->get()Lvanta/com/android/internal/content/ReferrerIntentStatic;

    move-result-object v0

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lvanta/com/android/internal/content/ReferrerIntentStatic;->_new(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 1425
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 1426
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lvanta/android/app/ActivityThreadContext;->_check_performNewIntents(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1427
    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    .line 1429
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1427
    invoke-interface {v0, p1, p0}, Lvanta/android/app/ActivityThreadContext;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/Void;

    return-void

    .line 1431
    :cond_2b
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadNMR1;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadNMR1Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v2, v3}, Lvanta/android/app/ActivityThreadNMR1Context;->_check_performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 1432
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadNMR1;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadNMR1Context;

    move-result-object v0

    .line 1434
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    .line 1432
    invoke-interface {v0, p1, p0, v1}, Lvanta/android/app/ActivityThreadNMR1Context;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)Ljava/lang/Void;

    return-void

    .line 1436
    :cond_43
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadQ;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadQContext;

    move-result-object v1

    invoke-interface {v1, v2, v2}, Lvanta/android/app/ActivityThreadQContext;->_check_handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 1437
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadQ;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadQContext;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lvanta/android/app/ActivityThreadQContext;->handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/Void;

    :cond_58
    return-void
.end method

.method static synthetic lambda$notifyAccountsChanged$4()V
    .registers 4

    .line 1479
    const-string v0, "BActivityThread"

    :try_start_2
    invoke-static {}, Lio/vanta/utils/compat/AccountManagerCompat;->invalidateAccountCaches()V

    .line 1480
    invoke-static {}, Lio/vanta/utils/compat/AccountManagerCompat;->disableAccountCaches()V

    .line 1481
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    invoke-static {v1}, Lio/vanta/fake/delegate/InnerReceiverDelegate;->dispatchLocalBroadcast(Landroid/content/Intent;)V

    .line 1484
    invoke-static {v2}, Lio/vanta/fake/delegate/InnerReceiverDelegate;->dispatchLocalBroadcast(Landroid/content/Intent;)V

    .line 1485
    const-string v1, "notifyAccountsChanged: dispatched account broadcasts locally"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v1

    .line 1487
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyAccountsChanged failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$scheduleReceiver$3(Lio/vanta/entity/am/ReceiverData;)V
    .registers 8

    .line 1449
    iget-object v0, p1, Lio/vanta/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 1450
    iget-object v1, p1, Lio/vanta/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1451
    iget-object v2, p1, Lio/vanta/entity/am/ReceiverData;->data:Lio/vanta/entity/am/PendingResultData;

    invoke-virtual {v2}, Lio/vanta/entity/am/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    const/4 v3, 0x0

    .line 1454
    :try_start_b
    iget-object v4, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 1455
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1456
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1458
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_48

    .line 1459
    :try_start_24
    invoke-static {v1}, Lvanta/android/content/BRBroadcastReceiver;->get(Ljava/lang/Object;)Lvanta/android/content/BroadcastReceiverContext;

    move-result-object v3

    invoke-interface {v3, v2}, Lvanta/android/content/BroadcastReceiverContext;->setPendingResult(Ljava/lang/Object;)Ljava/lang/Void;

    .line 1460
    invoke-virtual {v1, v4, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1461
    invoke-static {v1}, Lvanta/android/content/BRBroadcastReceiver;->get(Ljava/lang/Object;)Lvanta/android/content/BroadcastReceiverContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/content/BroadcastReceiverContext;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 1463
    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 1465
    :cond_3b
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v2

    iget-object p1, p1, Lio/vanta/entity/am/ReceiverData;->data:Lio/vanta/entity/am/PendingResultData;

    invoke-virtual {v2, p1}, Lio/vanta/fake/frameworks/BActivityManager;->finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception p1

    move-object v3, v1

    goto :goto_49

    :catchall_48
    move-exception p1

    .line 1467
    :goto_49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1468
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error receiving broadcast "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BActivityThread"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAfterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .registers 7

    .line 1511
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1512
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/vanta/app/configuration/AppLifecycleCallback;->afterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    goto :goto_c

    :cond_20
    invoke-static {p1}, Lio/vanta/fake/service/XjCrashGuard;->install(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/vanta/fake/service/GmsCallerFix;->warmupChimeraContainers(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/vanta/fake/service/GmsCallerFix;->startBootKicker(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lio/vanta/fake/service/XjThreadDumper;->start()V

    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->logUids()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {p3}, Lio/vanta/fake/service/XjAddAccountWatcher;->install(Landroid/app/Application;)V

    :cond_48
    return-void
.end method

.method private onBeforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .registers 7

    .line 1505
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1506
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/vanta/app/configuration/AppLifecycleCallback;->beforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    goto :goto_c

    :cond_20
    return-void
.end method

.method private onBeforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    invoke-static {p1}, Lio/vanta/fake/service/GmsCallerFix;->guardGmsProcess(Ljava/lang/String;)V

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/fake/service/GmsCallerFix;->fixGmsConfigUser(Lio/vanta/entity/AppConfig;)V

    .line 1499
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/app/configuration/AppLifecycleCallback;

    .line 1500
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/vanta/app/configuration/AppLifecycleCallback;->beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_16

    :cond_2a
    return-void
.end method

.method private setApplication(Landroid/app/Application;)V
    .registers 4

    .line 1104
    const-string v0, "BActivityThread"

    :try_start_2
    iput-object p1, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 1105
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lvanta/android/app/ActivityThreadContext;->_set_mInitialApplication(Ljava/lang/Object;)V

    .line 1106
    const-string p1, "Application set in ActivityThread successfully"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    .line 1108
    const-string v1, "Error setting application in ActivityThread"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1338
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/vanta/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz p1, :cond_d9

    .line 1340
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v0, :cond_d9

    .line 1341
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1342
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_3e

    aget-object v4, v0, v3

    .line 1343
    sget-object v5, Lio/vanta/app/BActivityThread;->sLocalProviderBinders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    if-eqz v4, :cond_3b

    .line 1344
    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_3b

    return-object v4

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1349
    :cond_3e
    :try_start_3e
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v1

    invoke-interface {v1}, Lvanta/android/app/ActivityThreadContext;->mProviderMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 1351
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1352
    invoke-static {v3}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v4

    invoke-interface {v4}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->mNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 1354
    array-length v5, v4

    move v6, v2

    :goto_6a
    if-ge v6, v5, :cond_54

    aget-object v7, v4, v6

    .line 1355
    array-length v8, v0

    move v9, v2

    :goto_70
    if-ge v9, v8, :cond_95

    aget-object v10, v0, v9

    .line 1356
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 1357
    invoke-static {v3}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v11

    invoke-interface {v11}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->mProvider()Landroid/os/IInterface;

    move-result-object v11

    if-eqz v11, :cond_92

    .line 1359
    sget-object v1, Lio/vanta/app/BActivityThread;->sLocalProviderBinders:Ljava/util/Map;

    invoke-interface {v11}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    invoke-interface {v11}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_91
    .catchall {:try_start_3e .. :try_end_91} :catchall_98

    return-object p1

    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 1372
    :catchall_98
    :cond_98
    :try_start_98
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    sget-object v5, Lio/vanta/app/BActivityThread;->sInstallingAuth:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    const/4 v2, 0x0

    array-length p1, v0

    goto :goto_c1

    :cond_a5
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v1, :cond_d9

    .line 1373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-object v3, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v1}, Lio/vanta/app/BActivityThread;->installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    sget-object v1, Lio/vanta/app/BActivityThread;->sInstallingAuth:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1376
    array-length p1, v0

    :goto_c1
    if-ge v2, p1, :cond_d9

    aget-object v1, v0, v2

    .line 1377
    sget-object v3, Lio/vanta/app/BActivityThread;->sLocalProviderBinders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_d6

    .line 1378
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3
    :try_end_d3
    .catchall {:try_start_98 .. :try_end_d3} :catchall_d9

    if-eqz v3, :cond_d6

    return-object v1

    :cond_d6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :catchall_d9
    :cond_d9
    const/4 p1, 0x0

    return-object p1
.end method

.method public bindApplication()V
    .registers 3

    .line 1320
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1321
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/vanta/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 558
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 559
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 560
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/VantaCore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;-><init>(Lio/vanta/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 569
    :cond_23
    invoke-direct {p0, p1, p2}, Lio/vanta/app/BActivityThread;->createBindApplicationData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    invoke-virtual {p0, p1, p2}, Lio/vanta/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;
    .registers 14

    .line 459
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_15

    .line 460
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/vanta/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_15
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 464
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-static {v0}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :goto_2c
    if-eqz v0, :cond_3b

    .line 469
    :try_start_2e
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobService;
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3b

    goto :goto_3c

    :catchall_3b
    :cond_3b
    move-object v0, v1

    .line 474
    :goto_3c
    const-string v2, "BActivityThread"

    if-nez v0, :cond_a7

    .line 477
    :try_start_40
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 476
    invoke-static {v3}, Lio/vanta/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 480
    invoke-static {v3}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ContextImplContext;->mPackageInfo()Ljava/lang/Object;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 482
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 483
    invoke-static {v0, v3}, Lio/vanta/app/BActivityThread;->injectSplitDexPaths(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)V

    .line 484
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobService;
    :try_end_82
    .catchall {:try_start_40 .. :try_end_82} :catchall_83

    goto :goto_a7

    :catchall_83
    move-exception v0

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create JobService "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 493
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 497
    invoke-static {v3}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lvanta/android/app/ContextImplContext;->setOuterContext(Landroid/content/Context;)Ljava/lang/Void;

    .line 498
    invoke-static {v3}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 499
    invoke-static {v0}, Lvanta/android/app/BRService;->get(Ljava/lang/Object;)Lvanta/android/app/ServiceContext;

    move-result-object v5

    .line 501
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    iget-object v10, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 505
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v3

    invoke-interface {v3}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v11

    .line 499
    invoke-interface/range {v5 .. v11}, Lvanta/android/app/ServiceContext;->attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Void;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_d9} :catch_f2

    .line 508
    :try_start_d9
    const-string v3, "android.content.ContextWrapper"

    invoke-static {v3}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v3

    const-string v4, "mBase"

    .line 509
    invoke-virtual {v3, v4}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v3

    .line 510
    invoke-virtual {v3, v0, v6}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_e8
    .catchall {:try_start_d9 .. :try_end_e8} :catchall_e8

    .line 513
    :catchall_e8
    :try_start_e8
    invoke-static {v6}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 514
    invoke-virtual {v0}, Landroid/app/job/JobService;->onCreate()V

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/job/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f1} :catch_f2

    return-object v0

    :catch_f2
    move-exception v0

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JobService creation failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public createService(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;
    .registers 15

    .line 215
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_15

    .line 216
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/vanta/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_15
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 220
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-static {v0}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :goto_2c
    if-eqz v0, :cond_3b

    .line 225
    :try_start_2e
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3b

    goto :goto_3c

    :catchall_3b
    :cond_3b
    move-object v0, v1

    .line 230
    :goto_3c
    const-string v2, "BActivityThread"

    if-nez v0, :cond_a8

    .line 233
    :try_start_40
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 232
    invoke-static {v3}, Lio/vanta/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_a8

    .line 236
    invoke-static {v3}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ContextImplContext;->mPackageInfo()Ljava/lang/Object;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 238
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 239
    invoke-static {v0, v3}, Lio/vanta/app/BActivityThread;->injectSplitDexPaths(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)V

    .line 240
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;
    :try_end_82
    .catchall {:try_start_40 .. :try_end_82} :catchall_83

    goto :goto_a8

    :catchall_83
    move-exception v0

    move-object p2, v0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate service "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 249
    :cond_a8
    :goto_a8
    :try_start_a8
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 253
    invoke-static {v3}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lvanta/android/app/ContextImplContext;->setOuterContext(Landroid/content/Context;)Ljava/lang/Void;

    .line 254
    invoke-static {v3}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 255
    invoke-static {v0}, Lvanta/android/app/BRService;->get(Ljava/lang/Object;)Lvanta/android/app/ServiceContext;

    move-result-object v5

    .line 257
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 261
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v3

    invoke-interface {v3}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v11

    move-object v9, p2

    .line 255
    invoke-interface/range {v5 .. v11}, Lvanta/android/app/ServiceContext;->attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Void;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d6} :catch_ef

    .line 264
    :try_start_d6
    const-string p2, "android.content.ContextWrapper"

    invoke-static {p2}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p2

    const-string v3, "mBase"

    .line 265
    invoke-virtual {p2, v3}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p2

    .line 266
    invoke-virtual {p2, v0, v6}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_e5
    .catchall {:try_start_d6 .. :try_end_e5} :catchall_e5

    .line 269
    :catchall_e5
    :try_start_e5
    invoke-static {v6}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 270
    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 271
    invoke-static {v0, v6}, Lio/vanta/app/BActivityThread;->fixChimeraServiceIfNeeded(Landroid/app/Service;Landroid/content/Context;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ee} :catch_ef

    return-object v0

    :catch_ef
    move-exception v0

    move-object p2, v0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Service creation failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .registers 4

    .line 1396
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v1, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivityThread()Landroid/os/IBinder;
    .registers 2

    .line 1315
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->getApplicationThread()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo()Ljava/lang/Object;
    .registers 2

    .line 1278
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    iget-object v0, v0, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "BRNetworkSecurityConfigProvider install failed: "

    const-string v1, "setDataDirectorySuffix ignored: "

    monitor-enter p0

    .line 600
    :try_start_5
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/utils/compat/HiddenApiCompat;->bypassHiddenApi(Landroid/content/Context;)Z

    .line 601
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b0

    if-eqz v2, :cond_14

    .line 602
    monitor-exit p0

    return-void

    .line 604
    :cond_14
    :try_start_14
    invoke-static {}, Lio/vanta/core/CrashHandler;->create()V

    invoke-static {}, Lio/vanta/fake/XJProfile;->loadNative()V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1a

    .line 608
    :catchall_1a
    :try_start_1a
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v2, p1, v4, v3}, Lio/vanta/fake/service/GmsCallerFix;->resolvePkgInfo(Lio/vanta/fake/frameworks/BPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 609
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 610
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x0

    if-nez v4, :cond_33

    .line 611
    new-array v4, v5, [Landroid/content/pm/ProviderInfo;

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 613
    :cond_33
    iget-object v4, p0, Lio/vanta/app/BActivityThread;->mProviders:Ljava/util/List;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityThreadContext;->mBoundApplication()Ljava/lang/Object;

    move-result-object v2

    .line 617
    invoke-static {v3}, Lio/vanta/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v4

    .line 618
    invoke-static {v4}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v6

    invoke-interface {v6}, Lvanta/android/app/ContextImplContext;->mPackageInfo()Ljava/lang/Object;

    move-result-object v6

    .line 619
    invoke-static {v6}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lvanta/android/app/LoadedApkContext;->_set_mSecurityViolation(Ljava/lang/Object;)V

    .line 621
    invoke-static {v6}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v7

    invoke-interface {v7, v3}, Lvanta/android/app/LoadedApkContext;->_set_mApplicationInfo(Ljava/lang/Object;)V

    .line 622
    invoke-static {v6}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v7

    invoke-interface {v7}, Lvanta/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 623
    invoke-static {v7, v3}, Lio/vanta/app/BActivityThread;->injectSplitDexPaths(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)V

    .line 625
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_8d

    .line 627
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    .line 628
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_8d
    const/16 v8, 0x18

    if-ge v7, v8, :cond_94

    .line 632
    invoke-static {}, Lio/vanta/utils/compat/StrictModeCompat;->disableDeathOnFileUriExposure()Z

    .line 635
    :cond_94
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_96
    .catchall {:try_start_1a .. :try_end_96} :catchall_2b0

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_11f

    if-eqz p2, :cond_ad

    .line 637
    :try_start_9c
    const-string v7, ":"

    const-string v8, "_"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_af

    :cond_ad
    const-string v7, "main"

    :goto_af
    if-eqz p1, :cond_c2

    .line 638
    const-string v8, ":"

    const-string v9, "_"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_c4

    :cond_c2
    const-string v8, "pkg"

    .line 639
    :goto_c4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_pid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_9c .. :try_end_107} :catchall_108

    goto :goto_11f

    :catchall_108
    move-exception v7

    .line 641
    :try_start_109
    const-string v8, "BActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_11f
    :goto_11f
    invoke-static {p2, v3}, Lio/vanta/core/env/VirtualRuntime;->setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 647
    invoke-static {}, Lvanta/nomad/runtime/BRVMRuntime;->get()Lvanta/nomad/runtime/VMRuntimeStatic;

    move-result-object v1

    invoke-interface {v1}, Lvanta/nomad/runtime/VMRuntimeStatic;->getRuntime()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lvanta/nomad/runtime/BRVMRuntime;->get(Ljava/lang/Object;)Lvanta/nomad/runtime/VMRuntimeContext;

    move-result-object v1

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v7}, Lvanta/nomad/runtime/VMRuntimeContext;->setTargetSdkVersion(I)Ljava/lang/Void;

    .line 648
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 649
    invoke-static {}, Lvanta/android/graphics/BRCompatibility;->get()Lvanta/android/graphics/CompatibilityStatic;

    move-result-object v1

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v7}, Lvanta/android/graphics/CompatibilityStatic;->setTargetSdkVersion(I)Ljava/lang/Void;

    .line 652
    :cond_142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lio/vanta/core/NativeCore;->init(I)V

    .line 653
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_149
    .catchall {:try_start_109 .. :try_end_149} :catchall_2b0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    if-lt v1, v7, :cond_174

    .line 655
    :try_start_14e
    const-string v1, "android.app.PropertyInvalidatedCache"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 656
    const-string v7, "disableForTestMode"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_161
    .catchall {:try_start_14e .. :try_end_161} :catchall_161

    .line 660
    :catchall_161
    :try_start_161
    const-string v1, "android.permission.PermissionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 661
    const-string v7, "disablePermissionCache"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_174
    .catchall {:try_start_161 .. :try_end_174} :catchall_174

    .line 666
    :catchall_174
    :cond_174
    :try_start_174
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v1

    invoke-virtual {v1, v4}, Lio/vanta/core/IOCore;->enableRedirect(Landroid/content/Context;)V

    .line 668
    new-instance v1, Lio/vanta/app/BActivityThread$AppBindData;

    invoke-direct {v1}, Lio/vanta/app/BActivityThread$AppBindData;-><init>()V

    .line 669
    iput-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 670
    iput-object p2, v1, Lio/vanta/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 671
    iput-object v6, v1, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    .line 672
    iget-object v3, p0, Lio/vanta/app/BActivityThread;->mProviders:Ljava/util/List;

    iput-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 674
    invoke-static {v2}, Lvanta/android/app/BRActivityThreadAppBindData;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadAppBindDataContext;

    move-result-object v2

    .line 675
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v1, Lio/vanta/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v9, Landroid/app/Instrumentation;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadAppBindDataContext;->_set_instrumentationName(Ljava/lang/Object;)V

    .line 676
    iget-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadAppBindDataContext;->_set_appInfo(Ljava/lang/Object;)V

    .line 677
    iget-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadAppBindDataContext;->_set_info(Ljava/lang/Object;)V

    .line 678
    iget-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadAppBindDataContext;->_set_processName(Ljava/lang/Object;)V

    .line 679
    iget-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadAppBindDataContext;->_set_providers(Ljava/lang/Object;)V

    .line 681
    iput-object v1, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    .line 684
    invoke-static {}, Lvanta/android/security/net/config/BRNetworkSecurityConfigProvider;->getRealClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1eb

    .line 685
    const-string v2, "AndroidNSSP"

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2
    :try_end_1c2
    .catchall {:try_start_174 .. :try_end_1c2} :catchall_2b0

    .line 687
    :try_start_1c2
    const-string v3, "AndroidNSSP"

    invoke-static {v3}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lvanta/android/security/net/config/BRNetworkSecurityConfigProvider;->get()Lvanta/android/security/net/config/NetworkSecurityConfigProviderStatic;

    move-result-object v3

    invoke-interface {v3, v4}, Lvanta/android/security/net/config/NetworkSecurityConfigProviderStatic;->install(Landroid/content/Context;)Ljava/lang/Void;
    :try_end_1ce
    .catchall {:try_start_1c2 .. :try_end_1ce} :catchall_1cf

    goto :goto_1eb

    :catchall_1cf
    move-exception v3

    .line 690
    :try_start_1d0
    const-string v7, "BActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1eb

    .line 692
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_1eb
    .catchall {:try_start_1d0 .. :try_end_1eb} :catchall_2b0

    .line 698
    :cond_1eb
    :goto_1eb
    :try_start_1eb
    invoke-direct {p0, p1, p2, v4}, Lio/vanta/app/BActivityThread;->onBeforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ee} :catch_2a0
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_2b0

    .line 702
    :try_start_1ee
    invoke-static {v6}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Lvanta/android/app/LoadedApkContext;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f6} :catch_1f7
    .catchall {:try_start_1ee .. :try_end_1f6} :catchall_2b0

    goto :goto_200

    :catch_1f7
    move-exception v0

    .line 704
    :try_start_1f8
    const-string v2, "BActivityThread"

    const-string v3, "Failed to makeApplication, trying fallback approach"

    invoke-static {v2, v3, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    :goto_200
    if-nez v0, :cond_249

    .line 710
    const-string v2, "BActivityThread"

    const-string v3, "makeApplication returned null, attempting fallback creation"

    invoke-static {v2, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_209} :catch_2a0
    .catchall {:try_start_1f8 .. :try_end_209} :catchall_2b0

    .line 714
    :try_start_209
    invoke-static {v6}, Lvanta/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v8}, Lvanta/android/app/LoadedApkContext;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_212} :catch_213
    .catchall {:try_start_209 .. :try_end_212} :catchall_2b0

    goto :goto_21b

    :catch_213
    move-exception v2

    .line 716
    :try_start_214
    const-string v3, "BActivityThread"

    const-string v5, "Fallback makeApplication also failed"

    invoke-static {v3, v5, v2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21b
    if-nez v0, :cond_249

    .line 721
    const-string v0, "BActivityThread"

    const-string v2, "Creating minimal application context as fallback"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_224} :catch_2a0
    .catchall {:try_start_214 .. :try_end_224} :catchall_2b0

    .line 724
    :try_start_224
    move-object v0, v4

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_22a

    goto :goto_249

    .line 726
    :cond_22a
    const-string p1, "BActivityThread"

    const-string p2, "Even package context is null, this is critical"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to create application context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_239} :catch_239
    .catchall {:try_start_224 .. :try_end_239} :catchall_2b0

    :catch_239
    move-exception p1

    .line 730
    :try_start_23a
    const-string p2, "BActivityThread"

    const-string v0, "Failed to create fallback application context"

    invoke-static {p2, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to makeApplication - all fallback attempts failed"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_249
    :goto_249
    if-eqz v0, :cond_291

    .line 741
    iput-object v0, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 742
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v2

    iget-object v3, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-interface {v2, v3}, Lvanta/android/app/ActivityThreadContext;->_set_mInitialApplication(Ljava/lang/Object;)V

    .line 743
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityThreadContext;->getSystemContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 744
    iget-object v2, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-static {v2}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 745
    iget-object v2, p0, Lio/vanta/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-object v3, v1, Lio/vanta/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v1, v1, Lio/vanta/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {p0, v2, v3, v1}, Lio/vanta/app/BActivityThread;->installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 747
    invoke-direct {p0, p1, p2, v0}, Lio/vanta/app/BActivityThread;->onBeforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 748
    invoke-static {}, Lio/vanta/fake/delegate/AppInstrumentation;->get()Lio/vanta/fake/delegate/AppInstrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/fake/delegate/AppInstrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 749
    invoke-direct {p0, p1, p2, v0}, Lio/vanta/app/BActivityThread;->onAfterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 751
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object p1

    const-class p2, Lio/vanta/fake/service/HCallbackProxy;

    invoke-virtual {p1, p2}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_28f} :catch_2a0
    .catchall {:try_start_23a .. :try_end_28f} :catchall_2b0

    .line 756
    monitor-exit p0

    return-void

    .line 737
    :cond_291
    :try_start_291
    const-string p1, "BActivityThread"

    const-string p2, "makeApplication application Error! All attempts failed"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to create application - all creation methods failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2a0} :catch_2a0
    .catchall {:try_start_291 .. :try_end_2a0} :catchall_2b0

    :catch_2a0
    move-exception p1

    .line 753
    :try_start_2a1
    const-string p2, "BActivityThread"

    const-string v0, "Critical error in handleBindApplication"

    invoke-static {p2, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to makeApplication"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_2b0
    move-exception p1

    monitor-exit p0
    :try_end_2b2
    .catchall {:try_start_2a1 .. :try_end_2b2} :catchall_2b0

    throw p1
.end method

.method public handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 5

    .line 1418
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v1, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initProcess(Lio/vanta/entity/AppConfig;)V
    .registers 6

    const-string v0, "reject init process: "

    invoke-static {p1}, Lio/vanta/fake/service/GmsCallerFix;->fixGmsConfigUser(Lio/vanta/entity/AppConfig;)V

    .line 183
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/utils/compat/HiddenApiCompat;->bypassHiddenApi(Landroid/content/Context;)Z

    .line 184
    sget-object v1, Lio/vanta/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_f
    iget-object v2, p0, Lio/vanta/app/BActivityThread;->mAppConfig:Lio/vanta/entity/AppConfig;

    if-eqz v2, :cond_41

    iget-object v2, v2, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_41

    .line 187
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this process is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mAppConfig:Lio/vanta/entity/AppConfig;

    iget-object v0, v0, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_41
    :goto_41
    iput-object p1, p0, Lio/vanta/app/BActivityThread;->mAppConfig:Lio/vanta/entity/AppConfig;

    .line 190
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_57

    .line 192
    :try_start_47
    new-instance v0, Lio/vanta/app/BActivityThread$1;

    invoke-direct {v0, p0, p1}, Lio/vanta/app/BActivityThread$1;-><init>(Lio/vanta/app/BActivityThread;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_51
    .catchall {:try_start_47 .. :try_end_50} :catchall_57

    goto :goto_55

    :catch_51
    move-exception p1

    .line 205
    :try_start_52
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 207
    :goto_55
    monitor-exit v1

    return-void

    :catchall_57
    move-exception p1

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public isInit()Z
    .registers 2

    .line 211
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mBoundApplication:Lio/vanta/app/BActivityThread$AppBindData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAccountsChanged()V
    .registers 3

    .line 1477
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v1, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 1391
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public restartJobService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public scheduleReceiver(Lio/vanta/entity/am/ReceiverData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1445
    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->bindApplication()V

    .line 1447
    :cond_9
    iget-object v0, p0, Lio/vanta/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v1, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;-><init>(Lio/vanta/app/BActivityThread;Lio/vanta/entity/am/ReceiverData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopService(Landroid/content/Intent;)V
    .registers 3

    .line 1327
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->stopService(Landroid/content/Intent;)V

    return-void
.end method
