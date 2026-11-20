.class public Lio/vanta/core/system/VantaSystem;
.super Ljava/lang/Object;
.source "VantaSystem.java"


# static fields
.field private static final isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sNomadSystem:Lio/vanta/core/system/VantaSystem;


# instance fields
.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/core/system/ISystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/vanta/core/system/VantaSystem;->isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    return-void
.end method

.method public static getSystem()Lio/vanta/core/system/VantaSystem;
    .registers 2

    .line 39
    sget-object v0, Lio/vanta/core/system/VantaSystem;->sNomadSystem:Lio/vanta/core/system/VantaSystem;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lio/vanta/core/system/VantaSystem;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lio/vanta/core/system/VantaSystem;->sNomadSystem:Lio/vanta/core/system/VantaSystem;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lio/vanta/core/system/VantaSystem;

    invoke-direct {v1}, Lio/vanta/core/system/VantaSystem;-><init>()V

    sput-object v1, Lio/vanta/core/system/VantaSystem;->sNomadSystem:Lio/vanta/core/system/VantaSystem;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lio/vanta/core/system/VantaSystem;->sNomadSystem:Lio/vanta/core/system/VantaSystem;

    return-object v0
.end method


# virtual methods
.method public startup()V
    .registers 6

    .line 50
    sget-object v0, Lio/vanta/core/system/VantaSystem;->isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 52
    :cond_a
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->load()V

    .line 54
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/user/BUserManagerService;->get()Lio/vanta/core/system/user/BUserManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/am/BActivityManagerService;->get()Lio/vanta/core/system/am/BActivityManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/am/BJobManagerService;->get()Lio/vanta/core/system/am/BJobManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/os/BStorageManagerService;->get()Lio/vanta/core/system/os/BStorageManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/pm/BPackageInstallerService;->get()Lio/vanta/core/system/pm/BPackageInstallerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/accounts/BAccountManagerService;->get()Lio/vanta/core/system/accounts/BAccountManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/location/BLocationManagerService;->get()Lio/vanta/core/system/location/BLocationManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->get()Lio/vanta/core/system/notification/BNotificationManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lio/vanta/core/system/VantaSystem;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/ISystemService;

    .line 67
    invoke-interface {v1}, Lio/vanta/core/system/ISystemService;->systemReady()V

    goto :goto_6d

    .line 70
    :cond_7d
    invoke-static {}, Lio/vanta/core/env/AppSystemEnv;->getPreInstallPackages()Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_85
    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    :try_start_91
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lio/vanta/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_85

    .line 74
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Lio/vanta/entity/pm/InstallOption;->installBySystem()Lio/vanta/entity/pm/InstallOption;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Lio/vanta/core/system/pm/BPackageManagerService;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_b4} :catch_85

    goto :goto_85

    .line 81
    :cond_b5
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/core/system/JarManager;->initializeAsync()V

    return-void
.end method
