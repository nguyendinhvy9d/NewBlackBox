.class public Lio/vanta/core/system/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field public static final ACCOUNT_MANAGER:Ljava/lang/String; = "account_manager"

.field public static final ACTIVITY_MANAGER:Ljava/lang/String; = "activity_manager"

.field public static final JOB_MANAGER:Ljava/lang/String; = "job_manager"

.field public static final LOCATION_MANAGER:Ljava/lang/String; = "location_manager"

.field public static final NOTIFICATION_MANAGER:Ljava/lang/String; = "notification_manager"

.field public static final PACKAGE_MANAGER:Ljava/lang/String; = "package_manager"

.field public static final STORAGE_MANAGER:Ljava/lang/String; = "storage_manager"

.field public static final USER_MANAGER:Ljava/lang/String; = "user_manager"

.field private static sServiceManager:Lio/vanta/core/system/ServiceManager;


# instance fields
.field private final mCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/ServiceManager;->mCaches:Ljava/util/Map;

    .line 50
    const-string v1, "activity_manager"

    invoke-static {}, Lio/vanta/core/system/am/BActivityManagerService;->get()Lio/vanta/core/system/am/BActivityManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "job_manager"

    invoke-static {}, Lio/vanta/core/system/am/BJobManagerService;->get()Lio/vanta/core/system/am/BJobManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "package_manager"

    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "storage_manager"

    invoke-static {}, Lio/vanta/core/system/os/BStorageManagerService;->get()Lio/vanta/core/system/os/BStorageManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "user_manager"

    invoke-static {}, Lio/vanta/core/system/user/BUserManagerService;->get()Lio/vanta/core/system/user/BUserManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "account_manager"

    invoke-static {}, Lio/vanta/core/system/accounts/BAccountManagerService;->get()Lio/vanta/core/system/accounts/BAccountManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "location_manager"

    invoke-static {}, Lio/vanta/core/system/location/BLocationManagerService;->get()Lio/vanta/core/system/location/BLocationManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "notification_manager"

    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->get()Lio/vanta/core/system/notification/BNotificationManagerService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get()Lio/vanta/core/system/ServiceManager;
    .locals 2

    .line 35
    sget-object v0, Lio/vanta/core/system/ServiceManager;->sServiceManager:Lio/vanta/core/system/ServiceManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lio/vanta/core/system/ServiceManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lio/vanta/core/system/ServiceManager;->sServiceManager:Lio/vanta/core/system/ServiceManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lio/vanta/core/system/ServiceManager;

    invoke-direct {v1}, Lio/vanta/core/system/ServiceManager;-><init>()V

    sput-object v1, Lio/vanta/core/system/ServiceManager;->sServiceManager:Lio/vanta/core/system/ServiceManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lio/vanta/core/system/ServiceManager;->sServiceManager:Lio/vanta/core/system/ServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 46
    invoke-static {}, Lio/vanta/core/system/ServiceManager;->get()Lio/vanta/core/system/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/core/system/ServiceManager;->getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static initBlackManager()V
    .locals 2

    .line 66
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 67
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "job_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 68
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 70
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "user_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 72
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "account_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 73
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "location_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 74
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "notification_manager"

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/vanta/core/system/ServiceManager;->mCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
