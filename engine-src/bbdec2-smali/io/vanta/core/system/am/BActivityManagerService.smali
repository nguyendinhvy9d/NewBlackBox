.class public Lio/vanta/core/system/am/BActivityManagerService;
.super Lio/vanta/core/system/am/IBActivityManagerService$Stub;
.source "BActivityManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BActivityManagerService"

.field private static final sService:Lio/vanta/core/system/am/BActivityManagerService;


# instance fields
.field private final mBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

.field private final mPms:Lio/vanta/core/system/pm/BPackageManagerService;

.field private final mUserSpace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/vanta/core/system/am/UserSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lio/vanta/core/system/am/BActivityManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/am/BActivityManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/am/BActivityManagerService;->sService:Lio/vanta/core/system/am/BActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    .line 38
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    .line 46
    invoke-static {p0, v0}, Lio/vanta/core/system/am/BroadcastManager;->startSystem(Lio/vanta/core/system/am/BActivityManagerService;Lio/vanta/core/system/pm/BPackageManagerService;)Lio/vanta/core/system/am/BroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    return-void
.end method

.method public static get()Lio/vanta/core/system/am/BActivityManagerService;
    .registers 1

    .line 42
    sget-object v0, Lio/vanta/core/system/am/BActivityManagerService;->sService:Lio/vanta/core/system/am/BActivityManagerService;

    return-object v0
.end method

.method private getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;
    .registers 5

    .line 366
    iget-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/UserSpace;

    if-eqz v1, :cond_13

    .line 369
    monitor-exit v0

    return-object v1

    .line 370
    :cond_13
    new-instance v1, Lio/vanta/core/system/am/UserSpace;

    invoke-direct {v1}, Lio/vanta/core/system/am/UserSpace;-><init>()V

    .line 371
    iget-object v2, p0, Lio/vanta/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p1

    .line 373
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 61
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 63
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/vanta/core/system/BProcessManagerService;->getUserIdByCallingPid(I)I

    move-result v4

    const/4 v5, -0x1

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 61
    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 70
    :try_start_1f
    iget-object v0, v0, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {v0, p1}, Lio/vanta/core/IBActivityThread;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    return-object p1

    :catchall_26
    move-exception v0

    move-object p1, v0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-direct {p0, p4}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 301
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 302
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/vanta/core/system/am/ActiveServices;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_f
    move-exception p1

    .line 303
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/am/BroadcastManager;->finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V

    return-void
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 226
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v1

    .line 227
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_f
    move-exception p1

    .line 228
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 218
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v1

    .line 219
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_f
    move-exception p1

    .line 220
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public getIntentSender(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 7

    .line 233
    invoke-direct {p0, p4}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object p4

    .line 234
    iget-object v0, p4, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter v0

    .line 235
    :try_start_7
    new-instance v1, Lio/vanta/core/system/am/PendingIntentRecord;

    invoke-direct {v1}, Lio/vanta/core/system/am/PendingIntentRecord;-><init>()V

    .line 236
    iput p3, v1, Lio/vanta/core/system/am/PendingIntentRecord;->uid:I

    .line 237
    iput-object p2, v1, Lio/vanta/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    .line 238
    iget-object p2, p4, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object p2

    .line 245
    iget-object v0, p2, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter v0

    .line 246
    :try_start_7
    iget-object p2, p2, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/am/PendingIntentRecord;

    if-eqz p1, :cond_15

    .line 248
    iget-object p1, p1, Lio/vanta/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 250
    :cond_15
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 164
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 169
    :cond_2f
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/BProcessManagerService;->getPackageProcessAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 171
    new-instance p2, Lio/vanta/entity/am/RunningAppProcessInfo;

    invoke-direct {p2}, Lio/vanta/entity/am/RunningAppProcessInfo;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/ProcessRecord;

    .line 173
    iget v2, v0, Lio/vanta/core/system/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_40

    .line 175
    iget-object v0, v0, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 176
    iget-object v0, p2, Lio/vanta/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_64
    return-object p2
.end method

.method public getRunningServices(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 185
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActiveServices;->getRunningServiceInfo(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getUidForIntentSender(Landroid/os/IBinder;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object p2

    .line 257
    iget-object v0, p2, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter v0

    .line 258
    :try_start_7
    iget-object p2, p2, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/am/PendingIntentRecord;

    if-eqz p1, :cond_15

    .line 260
    iget p1, p1, Lio/vanta/core/system/am/PendingIntentRecord;->uid:I

    monitor-exit v0

    return p1

    .line 262
    :cond_15
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 327
    :cond_14
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->getClientConfig()Lio/vanta/entity/AppConfig;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 110
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 114
    :cond_f
    check-cast p3, Lio/vanta/core/system/am/ActivityRecord;

    .line 115
    iget v1, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v1

    .line 116
    iget-object v2, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v2

    .line 117
    :try_start_1a
    iget-object v1, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    invoke-virtual {v1, v0, p1, p2, p3}, Lio/vanta/core/system/am/ActivityStack;->onActivityCreated(Lio/vanta/core/system/ProcessRecord;ILandroid/os/IBinder;Lio/vanta/core/system/am/ActivityRecord;)V

    .line 118
    monitor-exit v2

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 137
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 141
    :cond_f
    iget v1, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v1

    .line 142
    iget-object v2, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v2

    .line 143
    :try_start_18
    iget-object v1, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    iget v0, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lio/vanta/core/system/am/ActivityStack;->onActivityDestroyed(ILandroid/os/IBinder;)V

    .line 144
    monitor-exit v2

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 124
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 128
    :cond_f
    iget v1, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v1

    .line 129
    iget-object v2, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v2

    .line 130
    :try_start_18
    iget-object v1, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    iget v0, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lio/vanta/core/system/am/ActivityStack;->onActivityResumed(ILandroid/os/IBinder;)V

    .line 131
    monitor-exit v2

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 150
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 154
    :cond_f
    iget v1, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v1

    .line 155
    iget-object v2, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v2

    .line 156
    :try_start_18
    iget-object v1, v1, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    iget v0, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lio/vanta/core/system/am/ActivityStack;->onFinishActivity(ILandroid/os/IBinder;)V

    .line 157
    monitor-exit v2

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 285
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 286
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActiveServices;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 287
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 277
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 278
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActiveServices;->onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_f
    move-exception p1

    .line 279
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 269
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 270
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActiveServices;->onStartCommand(Landroid/content/Intent;I)V

    .line 271
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p3}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 102
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 103
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_f
    move-exception p1

    .line 104
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/core/system/BProcessManagerService;->restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 193
    invoke-virtual {p2}, Lio/vanta/entity/am/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 194
    const-string p1, "BActivityManagerService"

    const-string p2, "scheduleBroadcastReceiver empty"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_20
    iget-object v1, p0, Lio/vanta/core/system/am/BActivityManagerService;->mBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    invoke-virtual {v1, p2}, Lio/vanta/core/system/am/BroadcastManager;->sendBroadcast(Lio/vanta/entity/am/PendingResultData;)V

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 199
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p3}, Lio/vanta/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 201
    new-instance v3, Lio/vanta/entity/am/ReceiverData;

    invoke-direct {v3}, Lio/vanta/entity/am/ReceiverData;-><init>()V

    .line 202
    iput-object p1, v3, Lio/vanta/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 203
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, v3, Lio/vanta/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    iput-object p2, v3, Lio/vanta/entity/am/ReceiverData;->data:Lio/vanta/entity/am/PendingResultData;

    .line 205
    iget-object v1, v2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {v1, v3}, Lio/vanta/core/IBActivityThread;->scheduleReceiver(Lio/vanta/entity/am/ReceiverData;)V

    goto :goto_29

    :cond_5a
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 82
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p3}, Lio/vanta/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_e

    .line 87
    :cond_2d
    :try_start_2d
    iget-object v0, v0, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {v0}, Lio/vanta/core/IBActivityThread;->bindApplication()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_e

    :catch_33
    move-exception v0

    .line 89
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 92
    :cond_38
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 93
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x0

    .line 94
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p2
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 359
    :cond_c
    invoke-direct {p0, p1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 360
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v1

    .line 361
    :try_start_13
    iget-object v2, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/am/ActivityStack;->startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_20
    move-exception v0

    move-object p1, v0

    .line 362
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_20

    throw p1
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .registers 14

    .line 337
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 338
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v1

    .line 339
    :try_start_7
    iget-object v2, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, p1

    move v3, p2

    invoke-virtual/range {v2 .. v10}, Lio/vanta/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 340
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_16

    throw p1
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 348
    :cond_c
    if-eqz p2, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_19
    invoke-direct/range {p0 .. p1}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 349
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    monitor-enter v1

    .line 350
    :try_start_20
    iget-object v2, v0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lio/vanta/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_34
    move-exception v0

    move-object p1, v0

    .line 351
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_34

    throw p1
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .registers 7

    .line 51
    invoke-direct {p0, p4}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 52
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 53
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/vanta/core/system/am/ActiveServices;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)V

    .line 54
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 6

    .line 292
    invoke-direct {p0, p3}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 293
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 294
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_f
    move-exception p1

    .line 295
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p3}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 317
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 318
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    .line 319
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public systemReady()V
    .registers 2

    .line 378
    iget-object v0, p0, Lio/vanta/core/system/am/BActivityManagerService;->mBroadcastManager:Lio/vanta/core/system/am/BroadcastManager;

    invoke-virtual {v0}, Lio/vanta/core/system/am/BroadcastManager;->startup()V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Lio/vanta/core/system/am/UserSpace;

    move-result-object v0

    .line 309
    iget-object v1, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    monitor-enter v1

    .line 310
    :try_start_7
    iget-object v0, v0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/am/ActiveServices;->unbindService(Landroid/os/IBinder;I)V

    .line 311
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
