.class public Lio/vanta/core/system/am/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"

# interfaces
.implements Lio/vanta/core/system/pm/PackageMonitor;


# static fields
.field public static final MSG_TIME_OUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BroadcastManager"

.field public static final TIMEOUT:I = 0x2328

.field private static sBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;


# instance fields
.field private final mAms:Lio/vanta/core/system/am/BActivityManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private final mPms:Lio/vanta/core/system/pm/BPackageManagerService;

.field private final mReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiversData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/entity/am/PendingResultData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/vanta/core/system/am/BActivityManagerService;Lio/vanta/core/system/pm/BPackageManagerService;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    .line 39
    new-instance v0, Lio/vanta/core/system/am/BroadcastManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/vanta/core/system/am/BroadcastManager$1;-><init>(Lio/vanta/core/system/am/BroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lio/vanta/core/system/am/BroadcastManager;->mAms:Lio/vanta/core/system/am/BActivityManagerService;

    .line 69
    iput-object p2, p0, Lio/vanta/core/system/am/BroadcastManager;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    return-void
.end method

.method private addReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerPackage(Lio/vanta/core/system/pm/BPackage;)V
    .locals 7

    const-string v0, "register: "

    .line 82
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v1

    .line 83
    :try_start_0
    const-string v2, "BroadcastManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 85
    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;

    .line 87
    new-instance v4, Lio/vanta/proxy/ProxyBroadcastReceiver;

    invoke-direct {v4}, Lio/vanta/proxy/ProxyBroadcastReceiver;-><init>()V

    .line 88
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    .line 89
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    :goto_1
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lio/vanta/core/system/am/BroadcastManager;->addReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 96
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static startSystem(Lio/vanta/core/system/am/BActivityManagerService;Lio/vanta/core/system/pm/BPackageManagerService;)Lio/vanta/core/system/am/BroadcastManager;
    .locals 2

    .line 57
    sget-object v0, Lio/vanta/core/system/am/BroadcastManager;->sBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lio/vanta/core/system/am/BroadcastManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lio/vanta/core/system/am/BroadcastManager;->sBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lio/vanta/core/system/am/BroadcastManager;

    invoke-direct {v1, p0, p1}, Lio/vanta/core/system/am/BroadcastManager;-><init>(Lio/vanta/core/system/am/BActivityManagerService;Lio/vanta/core/system/pm/BPackageManagerService;)V

    sput-object v1, Lio/vanta/core/system/am/BroadcastManager;->sBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lio/vanta/core/system/am/BroadcastManager;->sBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    return-object p0
.end method


# virtual methods
.method public finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    iget-object p1, p1, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageInstalled(Ljava/lang/String;I)V
    .locals 1

    .line 145
    iget-object p2, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter p2

    .line 146
    :try_start_0
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getBPackageSetting(Ljava/lang/String;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-direct {p0, p1}, Lio/vanta/core/system/am/BroadcastManager;->registerPackage(Lio/vanta/core/system/pm/BPackage;)V

    .line 151
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageUninstalled(Ljava/lang/String;ZI)V
    .locals 3

    const-string p3, "unregisterReceiver Package: "

    if-eqz p2, :cond_1

    .line 127
    iget-object p2, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter p2

    .line 128
    :try_start_0
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    const-string v1, "BroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, ", size: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :cond_0
    :try_start_2
    iget-object p3, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public sendBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    .locals 4

    .line 109
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    iget-object v2, p1, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 113
    iget-object v1, p0, Lio/vanta/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startup()V
    .locals 2

    .line 73
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p0}, Lio/vanta/core/system/pm/BPackageManagerService;->addPackageMonitor(Lio/vanta/core/system/pm/PackageMonitor;)V

    .line 74
    iget-object v0, p0, Lio/vanta/core/system/am/BroadcastManager;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-virtual {v0}, Lio/vanta/core/system/pm/BPackageManagerService;->getBPackageSettings()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 76
    iget-object v1, v1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 77
    invoke-direct {p0, v1}, Lio/vanta/core/system/am/BroadcastManager;->registerPackage(Lio/vanta/core/system/pm/BPackage;)V

    goto :goto_0

    :cond_0
    return-void
.end method
