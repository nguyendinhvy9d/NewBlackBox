.class public Lio/vanta/fake/frameworks/BActivityManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/am/IBActivityManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BActivityManager"

.field private static final sActivityManager:Lio/vanta/fake/frameworks/BActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lio/vanta/fake/frameworks/BActivityManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BActivityManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BActivityManager;->sActivityManager:Lio/vanta/fake/frameworks/BActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BActivityManager;
    .registers 1

    .line 28
    sget-object v0, Lio/vanta/fake/frameworks/BActivityManager;->sActivityManager:Lio/vanta/fake/frameworks/BActivityManager;

    return-object v0
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 4

    .line 293
    const-string v0, "BActivityManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v1, :cond_f

    .line 295
    invoke-interface {v1, p1}, Lio/vanta/core/system/am/IBActivityManagerService;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 297
    :cond_f
    const-string p1, "ActivityManager service is null for acquireContentProviderClient"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_14} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_2c

    :catch_15
    move-exception p1

    .line 305
    const-string v1, "Unexpected error in acquireContentProviderClient"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :catch_1c
    move-exception p1

    .line 303
    const-string v1, "RemoteException in acquireContentProviderClient"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :catch_23
    move-exception p1

    .line 300
    const-string v1, "ActivityManager service died during acquireContentProviderClient, clearing cache"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->clearServiceCache()V

    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_11

    .line 227
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/am/IBActivityManagerService;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 230
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    .registers 3

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/am/IBActivityManagerService;->finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 404
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 4

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 421
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 412
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentSender(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lio/vanta/core/system/am/IBActivityManagerService;->getIntentSender(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/am/IBActivityManagerService;->getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 438
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 382
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRunningServices(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->getRunningServices(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 391
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "activity_manager"

    return-object v0
.end method

.method public getUidForIntentSender(Landroid/os/IBinder;)I
    .registers 4

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/am/IBActivityManagerService;->getUidForIntentSender(Landroid/os/IBinder;I)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception p1

    .line 447
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;
    .registers 11

    const/4 v0, 0x0

    .line 40
    :goto_1
    const-string v1, ", process: "

    const/4 v2, 0x3

    const-string v3, "BActivityManager"

    if-ge v0, v2, :cond_a9

    .line 42
    :try_start_8
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/am/IBActivityManagerService;
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_e} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_74
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_6d

    .line 43
    const-string v5, "/"

    if-eqz v4, :cond_4c

    .line 44
    :try_start_12
    invoke-interface {v4, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;

    move-result-object v4

    if-eqz v4, :cond_19

    return-object v4

    .line 48
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initProcess returned null for package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", retry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 51
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityManager service is null for initProcess, retry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_6c} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_6c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6c} :catch_6d

    goto :goto_9e

    :catch_6d
    move-exception p3

    .line 66
    const-string v0, "Unexpected error in initProcess"

    invoke-static {v3, v0, p3}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    :catch_74
    move-exception p3

    .line 63
    const-string v0, "RemoteException in initProcess"

    invoke-static {v3, v0, p3}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    :catch_7b
    move-exception v2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ActivityManager service died during initProcess, clearing cache and retrying "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->clearServiceCache()V

    const-wide/16 v4, 0x64

    .line 57
    :try_start_9b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9e} :catch_a2

    :goto_9e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 59
    :catch_a2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 72
    :cond_a9
    :goto_a9
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to initProcess after 3 retries for package: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 338
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 341
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .registers 3

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 360
    invoke-interface {v0, p1}, Lio/vanta/core/system/am/IBActivityManagerService;->onActivityDestroyed(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 363
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .registers 3

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 349
    invoke-interface {v0, p1}, Lio/vanta/core/system/am/IBActivityManagerService;->onActivityResumed(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .registers 3

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 371
    invoke-interface {v0, p1}, Lio/vanta/core/system/am/IBActivityManagerService;->onFinishActivity(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 4

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 284
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->onServiceDestroy(Landroid/content/Intent;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;
    .registers 4

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_11

    .line 272
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 275
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .registers 4

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 261
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->onStartCommand(Landroid/content/Intent;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 264
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 5

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_11

    .line 326
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 80
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 83
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_11

    .line 314
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 317
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 13

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v1, :cond_18

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 168
    invoke-interface/range {v1 .. v6}, Lio/vanta/core/system/am/IBActivityManagerService;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception v0

    move-object p1, v0

    .line 171
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    .line 91
    const-string v2, "BActivityManager"

    if-ge v0, v1, :cond_7d

    .line 93
    :try_start_6
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v3, :cond_12

    .line 95
    invoke-interface {v3, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->startActivity(Landroid/content/Intent;I)V

    return-void

    .line 98
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityManager service is null, retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_34} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_34} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_43

    mul-int/lit16 v4, v4, 0xc8

    int-to-long v3, v4

    .line 101
    :try_start_37
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3a} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_43

    goto :goto_73

    .line 103
    :catch_3b
    :try_start_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_42
    .catch Landroid/os/DeadObjectException; {:try_start_3b .. :try_end_42} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_7d

    :catch_43
    move-exception p1

    .line 120
    const-string p2, "Unexpected error in startActivity"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    :catch_4a
    move-exception p1

    .line 117
    const-string p2, "RemoteException in startActivity"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 108
    :catch_51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ActivityManager service died, clearing cache and retrying "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->clearServiceCache()V

    const-wide/16 v3, 0x64

    .line 111
    :try_start_70
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_76

    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :catch_76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 126
    :cond_7d
    :goto_7d
    const-string p1, "Failed to start activity after 3 retries"

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 22

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    .line 133
    const-string v2, "BActivityManager"

    if-ge v0, v1, :cond_81

    .line 135
    :try_start_6
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v4, :cond_22

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 137
    invoke-interface/range {v4 .. v12}, Lio/vanta/core/system/am/IBActivityManagerService;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p1

    return p1

    .line 139
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityManager service is null, retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_44} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_44} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_44} :catch_45

    goto :goto_77

    :catch_45
    move-exception v0

    move-object p1, v0

    .line 154
    const-string p2, "Unexpected error in startActivityAms"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    :catch_4d
    move-exception v0

    move-object p1, v0

    .line 151
    const-string p2, "RemoteException in startActivityAms"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 142
    :catch_55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ActivityManager service died, clearing cache and retrying "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->clearServiceCache()V

    const-wide/16 v3, 0x64

    .line 145
    :try_start_74
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_7a

    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :catch_7a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 160
    :cond_81
    :goto_81
    const-string p1, "Failed to start activity AMS after 3 retries"

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .registers 10

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    .line 180
    const-string v2, "BActivityManager"

    if-ge v0, v1, :cond_70

    .line 182
    :try_start_6
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v3, :cond_13

    .line 184
    invoke-interface {v3, p1, p2, p3, p4}, Lio/vanta/core/system/am/IBActivityManagerService;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 186
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityManager service is null, retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_35} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_35} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    goto :goto_66

    :catch_36
    move-exception p1

    .line 201
    const-string p2, "Unexpected error in startService"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    :catch_3d
    move-exception p1

    .line 198
    const-string p2, "RemoteException in startService"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 189
    :catch_44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ActivityManager service died, clearing cache and retrying "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->clearServiceCache()V

    const-wide/16 v3, 0x64

    .line 192
    :try_start_63
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_69

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :catch_69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 207
    :cond_70
    :goto_70
    const-string p1, "Failed to start service after 3 retries"

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 5

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_11

    .line 215
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 218
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .registers 5

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 250
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/am/IBActivityManagerService;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 253
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 4

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_b

    .line 239
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService;->unbindService(Landroid/os/IBinder;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
