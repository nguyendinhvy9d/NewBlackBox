.class public Lio/vanta/core/system/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LAUNCH_TIME_OUT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ActivityStack"


# instance fields
.field private final mAms:Landroid/app/ActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLaunchingActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/vanta/core/system/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/vanta/core/system/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLaunchingActivities(Lio/vanta/core/system/am/ActivityStack;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    .line 57
    new-instance v0, Lio/vanta/core/system/am/ActivityStack$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/vanta/core/system/am/ActivityStack$1;-><init>(Lio/vanta/core/system/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    return-void
.end method

.method private deliverNewIntentLocked(Lio/vanta/core/system/am/ActivityRecord;Landroid/content/Intent;)V
    .registers 4

    .line 261
    :try_start_0
    iget-object v0, p1, Lio/vanta/core/system/am/ActivityRecord;->processRecord:Lio/vanta/core/system/ProcessRecord;

    iget-object v0, v0, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/IBActivityThread;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 263
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private findActivityRecordByComponentName(ILandroid/content/ComponentName;)Lio/vanta/core/system/am/ActivityRecord;
    .registers 8

    .line 408
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 409
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_b

    .line 410
    iget-object v2, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/ActivityRecord;

    .line 411
    iget-object v4, v3, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v1, v3

    goto :goto_b

    :cond_37
    return-object v1
.end method

.method private findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    .line 424
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 425
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_d

    .line 426
    iget-object v2, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/ActivityRecord;

    .line 427
    iget-object v4, v3, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_23

    move-object v0, v3

    goto :goto_d

    :cond_35
    return-object v0
.end method

.method private findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Lio/vanta/core/system/am/TaskRecord;
    .registers 7

    .line 439
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 441
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_d

    iget-object v3, v2, Lio/vanta/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 442
    monitor-exit v0

    return-object v2

    :cond_27
    const/4 p1, 0x0

    .line 444
    monitor-exit v0

    return-object p1

    :catchall_2a
    move-exception p1

    .line 445
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private findTaskRecordByTokenLocked(ILandroid/os/IBinder;)Lio/vanta/core/system/am/TaskRecord;
    .registers 8

    .line 449
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 450
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 451
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_d

    .line 452
    iget-object v3, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/am/ActivityRecord;

    .line 453
    iget-object v4, v4, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_23

    .line 454
    monitor-exit v0

    return-object v2

    :cond_35
    const/4 p1, 0x0

    .line 459
    monitor-exit v0

    return-object p1

    :catchall_38
    move-exception p1

    .line 460
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private finishAllActivity(I)V
    .registers 6

    .line 377
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/TaskRecord;

    .line 378
    iget-object v1, v1, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1c
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/ActivityRecord;

    .line 379
    iget v3, v2, Lio/vanta/core/system/am/ActivityRecord;->userId:I

    if-ne v3, p1, :cond_1c

    .line 380
    iget-boolean v3, v2, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    if-eqz v3, :cond_1c

    .line 382
    :try_start_30
    iget-object v3, v2, Lio/vanta/core/system/am/ActivityRecord;->processRecord:Lio/vanta/core/system/ProcessRecord;

    iget-object v3, v3, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    iget-object v2, v2, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2}, Lio/vanta/core/IBActivityThread;->finishActivity(Landroid/os/IBinder;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_1c

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method private getStartStubActivityIntentInner(Landroid/content/Intent;IILio/vanta/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 11

    .line 345
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 348
    :try_start_6
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2}, Lio/vanta/core/system/pm/PackageManagerCompat;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 350
    iget v2, p5, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v2, :cond_17

    .line 351
    iget v2, p5, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1b

    .line 353
    :cond_17
    iget-object v2, p5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 356
    :goto_1b
    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {}, Lvanta/com/android/internal/BRRstyleable;->get()Lvanta/com/android/internal/RstyleableStatic;

    move-result-object v3

    invoke-interface {v3}, Lvanta/com/android/internal/RstyleableStatic;->Window()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 357
    invoke-static {}, Lvanta/com/android/internal/BRRstyleable;->get()Lvanta/com/android/internal/RstyleableStatic;

    move-result-object v1

    invoke-interface {v1}, Lvanta/com/android/internal/RstyleableStatic;->Window_windowIsTranslucent()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 359
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lio/vanta/proxy/ProxyManifest;->TransparentProxyActivity(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5f

    .line 361
    :cond_4f
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lio/vanta/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 363
    :goto_5f
    const-string v2, "ActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v3, ", windowIsTranslucent: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_7e

    if-eqz v0, :cond_97

    goto :goto_94

    :catchall_7e
    move-exception p5

    .line 365
    :try_start_7f
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    new-instance p5, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lio/vanta/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p5, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_a1

    if-eqz v0, :cond_97

    .line 369
    :goto_94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    :cond_97
    iget-object p2, p4, Lio/vanta/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p4, Lio/vanta/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    iget p4, p4, Lio/vanta/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-static {p3, p1, p2, p5, p4}, Lio/vanta/proxy/record/ProxyActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    return-object p3

    :catchall_a1
    move-exception p1

    if-eqz v0, :cond_a7

    .line 369
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    :cond_a7
    throw p1
.end method

.method private getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;
    .registers 3

    .line 333
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 335
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 336
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 337
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    return-object v0

    .line 339
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/TaskRecord;

    invoke-virtual {v0}, Lio/vanta/core/system/am/TaskRecord;->getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    return-object v0

    :catchall_2b
    move-exception v1

    .line 335
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 20

    and-int/lit8 v8, p7, -0xf

    .line 324
    :try_start_2
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRIActivityManager;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContext;

    move-result-object v0

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v10, p8

    invoke-interface/range {v0 .. v10}, Lvanta/android/app/IActivityManagerContext;->startActivity(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Integer;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_26

    :catchall_21
    move-exception v0

    move-object p1, v0

    .line 327
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_26
    const/4 p1, 0x0

    return p1
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)I
    .registers 15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 299
    invoke-direct/range {v0 .. v8}, Lio/vanta/core/system/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;)I
    .registers 18

    .line 279
    invoke-virtual {p0, p2, p3, p4, p1}, Lio/vanta/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v6

    .line 280
    invoke-direct {p0, p1, p2, p3, v6}, Lio/vanta/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lio/vanta/core/system/am/ActivityRecord;)Landroid/content/Intent;

    move-result-object v2

    if-eqz p4, :cond_27

    .line 283
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v2, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p4

    move v6, p6

    move-object/from16 v3, p7

    move-object/from16 v8, p8

    .line 285
    invoke-direct/range {v0 .. v8}, Lio/vanta/core/system/am/ActivityStack;->realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_27
    const/high16 v0, 0x8000000

    .line 288
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x80000

    .line 289
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 290
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {v2, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method private startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILio/vanta/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;I)I
    .registers 13

    .line 306
    invoke-virtual {p0, p1, p10, p3, p8}, Lio/vanta/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    .line 307
    invoke-direct {p0, p8, p1, p10, v0}, Lio/vanta/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lio/vanta/core/system/am/ActivityRecord;)Landroid/content/Intent;

    move-result-object p1

    .line 308
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p8

    invoke-virtual {p8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p1, p11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p3, :cond_1d

    const/high16 p8, 0x10000000

    .line 311
    invoke-virtual {p1, p8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    :cond_1d
    iget-object p8, p9, Lio/vanta/core/system/am/ActivityRecord;->processRecord:Lio/vanta/core/system/ProcessRecord;

    iget-object p8, p8, Lio/vanta/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;

    move-object p9, p4

    move-object p4, p2

    move-object p2, p8

    move p8, p6

    move-object p6, p9

    move-object p9, p7

    move p7, p5

    move-object p5, p3

    move-object p3, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lio/vanta/core/system/am/ActivityStack;->realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p2

    return p2
.end method

.method private startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lio/vanta/core/system/am/ActivityRecord;)Landroid/content/Intent;
    .registers 16

    .line 269
    new-instance v4, Lio/vanta/proxy/record/ProxyActivityRecord;

    invoke-direct {v4, p1, p3, p2, p4}, Lio/vanta/proxy/record/ProxyActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 270
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v5

    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    move v8, p1

    invoke-virtual/range {v5 .. v10}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object p1

    move v3, v8

    if-eqz p1, :cond_24

    .line 274
    iget v2, p1, Lio/vanta/core/system/ProcessRecord;->bpid:I

    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/vanta/core/system/am/ActivityStack;->getStartStubActivityIntentInner(Landroid/content/Intent;IILio/vanta/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_24
    move-object v5, p3

    .line 272
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to create process, name:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synchronizeTasks()V
    .registers 7

    .line 597
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 598
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 599
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_39

    .line 600
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 601
    iget-object v4, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/am/TaskRecord;

    if-nez v4, :cond_2d

    goto :goto_36

    .line 604
    :cond_2d
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 606
    :cond_39
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 607
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public containsFlag(Landroid/content/Intent;I)Z
    .registers 3

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 5

    .line 578
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 579
    :try_start_3
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-direct {p0, p2, p1}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 583
    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p2, p1}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 585
    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p1

    :cond_1c
    if-eqz v1, :cond_31

    .line 588
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 589
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, ""

    invoke-direct {p1, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 591
    :cond_31
    new-instance p1, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lio/vanta/proxy/ProxyActivity$P0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p1

    .line 592
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 11

    .line 524
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 525
    :try_start_3
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 526
    invoke-direct {p0, p2, p1}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_c9

    .line 528
    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    .line 529
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 531
    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 533
    :cond_2a
    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p2, v1}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 534
    iget-object v2, v1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_56

    iget-object v2, v1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 535
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, v1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 537
    iget-object p1, v1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 539
    :cond_56
    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_c1

    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 541
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_77
    if-ltz v2, :cond_c1

    .line 542
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/TaskRecord;

    .line 543
    iget v4, v3, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne v4, p2, :cond_be

    .line 544
    iget-object v4, v3, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_8b
    if-ltz v4, :cond_be

    .line 545
    iget-object v5, v3, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/vanta/core/system/am/ActivityRecord;

    if-eqz v5, :cond_bb

    .line 546
    iget-object v6, v5, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_bb

    iget-object v6, v5, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.android.gms"

    .line 547
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bb

    iget-object v6, v5, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 548
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bb

    .line 549
    iget-object p1, v5, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_bb
    add-int/lit8 v4, v4, -0x1

    goto :goto_8b

    :cond_be
    add-int/lit8 v2, v2, -0x1

    goto :goto_77

    .line 555
    :cond_c1
    iget-object v1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    if-eqz v1, :cond_c9

    .line 556
    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 559
    :cond_c9
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 560
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_da
    if-ltz v1, :cond_124

    .line 561
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/am/TaskRecord;

    .line 562
    iget v3, v2, Lio/vanta/core/system/am/TaskRecord;->userId:I

    if-ne v3, p2, :cond_121

    .line 563
    iget-object v3, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_ee
    if-ltz v3, :cond_121

    .line 564
    iget-object v4, v2, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/am/ActivityRecord;

    if-eqz v4, :cond_11e

    .line 565
    iget-object v5, v4, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_11e

    iget-object v5, v4, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.google.android.gms"

    .line 566
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11e

    iget-object v5, v4, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 567
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11e

    .line 568
    iget-object p1, v4, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_11e
    add-int/lit8 v3, v3, -0x1

    goto :goto_ee

    :cond_121
    add-int/lit8 v1, v1, -0x1

    goto :goto_da

    .line 573
    :cond_124
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_12a
    move-exception p1

    .line 574
    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_3 .. :try_end_12c} :catchall_12a

    throw p1
.end method

.method newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Lio/vanta/core/system/am/ActivityRecord;
    .registers 7

    .line 393
    invoke-static {p1, p2, p3, p4}, Lio/vanta/core/system/am/ActivityRecord;->create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p2

    if-eqz p1, :cond_16

    .line 394
    const-string p3, "_B_|_P_creator_pkg_"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 395
    const-string p3, "_B_|_P_creator_pkg_"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/vanta/core/system/am/ActivityRecord;->callingPackage:Ljava/lang/String;

    .line 397
    :cond_16
    iget-object p1, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter p1

    .line 398
    :try_start_19
    iget-object p3, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object p3, p0, Lio/vanta/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 400
    iget-object p4, p0, Lio/vanta/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p4, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    monitor-exit p1

    return-object p2

    :catchall_2e
    move-exception p2

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_2e

    throw p2
.end method

.method public onActivityCreated(Lio/vanta/core/system/ProcessRecord;ILandroid/os/IBinder;Lio/vanta/core/system/am/ActivityRecord;)V
    .registers 10

    const-string v0, "onActivityCreated : "

    .line 465
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v1

    .line 466
    :try_start_5
    iget-object v2, p0, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lio/vanta/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 468
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_65

    .line 469
    iget-object v2, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v2

    .line 470
    :try_start_14
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 471
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/TaskRecord;

    if-nez v1, :cond_3f

    .line 473
    new-instance v1, Lio/vanta/core/system/am/TaskRecord;

    iget v3, p4, Lio/vanta/core/system/am/ActivityRecord;->userId:I

    iget-object v4, p4, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Lio/vanta/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v3, v4}, Lio/vanta/core/system/am/TaskRecord;-><init>(IILjava/lang/String;)V

    .line 474
    iget-object v3, p4, Lio/vanta/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, v1, Lio/vanta/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 475
    iget-object v3, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_3f
    iput-object p3, p4, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    .line 478
    iput-object p1, p4, Lio/vanta/core/system/am/ActivityRecord;->processRecord:Lio/vanta/core/system/ProcessRecord;

    .line 479
    iput-object v1, p4, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    .line 480
    invoke-virtual {v1, p4}, Lio/vanta/core/system/am/TaskRecord;->addTopActivity(Lio/vanta/core/system/am/ActivityRecord;)V

    .line 481
    const-string p1, "ActivityStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p4, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    monitor-exit v2

    return-void

    :catchall_62
    move-exception p1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_62

    throw p1

    :catchall_65
    move-exception p1

    .line 468
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public onActivityDestroyed(ILandroid/os/IBinder;)V
    .registers 6

    const-string v0, "onActivityDestroyed : "

    .line 499
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 500
    :try_start_5
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 501
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 503
    monitor-exit v1

    return-void

    :cond_10
    const/4 p2, 0x1

    .line 505
    iput-boolean p2, p1, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    .line 506
    const-string p2, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p2, p1, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Lio/vanta/core/system/am/TaskRecord;->removeActivity(Lio/vanta/core/system/am/ActivityRecord;)V

    .line 508
    monitor-exit v1

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public onActivityResumed(ILandroid/os/IBinder;)V
    .registers 6

    const-string v0, "onActivityResumed : "

    .line 486
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 487
    :try_start_5
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 488
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 490
    monitor-exit v1

    return-void

    .line 492
    :cond_10
    const-string p2, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p2, p1, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Lio/vanta/core/system/am/TaskRecord;->removeActivity(Lio/vanta/core/system/am/ActivityRecord;)V

    .line 494
    iget-object p2, p1, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Lio/vanta/core/system/am/TaskRecord;->addTopActivity(Lio/vanta/core/system/am/ActivityRecord;)V

    .line 495
    monitor-exit v1

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onFinishActivity(ILandroid/os/IBinder;)V
    .registers 6

    const-string v0, "onFinishActivity : "

    .line 512
    iget-object v1, p0, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 513
    :try_start_5
    invoke-direct {p0}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 514
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 516
    monitor-exit v1

    return-void

    :cond_10
    const/4 p2, 0x1

    .line 518
    iput-boolean p2, p1, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    .line 519
    const-string p2, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_35

    if-eqz v1, :cond_2d

    .line 88
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x0

    move v3, v2

    .line 91
    :goto_e
    array-length v4, v0

    if-ge v3, v4, :cond_24

    .line 92
    aget-object v7, v0, v3

    aget-object v8, v1, v3

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    move-object/from16 v9, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v5 .. v13}, Lio/vanta/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    return v2

    .line 89
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "intents are length different than resolvedTypes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "resolvedTypes is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "intents is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 31

    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    .line 98
    iget-object v3, v1, Lio/vanta/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v3

    .line 99
    :try_start_b
    invoke-direct {v1}, Lio/vanta/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 100
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_230

    .line 102
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/4 v3, 0x1

    move-object/from16 v8, p3

    invoke-virtual {v0, v2, v3, v8, v9}, Lio/vanta/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_22d

    .line 103
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_22

    goto/16 :goto_22d

    .line 106
    :cond_22
    const-string v6, "ActivityStack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "startActivityLocked : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 109
    invoke-direct {v1, v9, v5}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 112
    iget-object v0, v0, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 115
    :goto_44
    invoke-static {v11}, Lio/vanta/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v7

    const/high16 v10, 0x20000000

    .line 118
    invoke-virtual {v1, v2, v10}, Lio/vanta/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v10

    if-nez v10, :cond_57

    iget v10, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v10, v3, :cond_55

    goto :goto_57

    :cond_55
    const/4 v10, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    move v10, v3

    :goto_58
    const/high16 v12, 0x10000000

    .line 119
    invoke-virtual {v1, v2, v12}, Lio/vanta/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v12

    const/high16 v13, 0x4000000

    .line 120
    invoke-virtual {v1, v2, v13}, Lio/vanta/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v13

    const v14, 0x8000

    .line 121
    invoke-virtual {v1, v2, v14}, Lio/vanta/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v14

    .line 124
    iget v15, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v6, 0x3

    const/4 v4, 0x2

    if-eqz v15, :cond_7f

    if-eq v15, v3, :cond_7f

    if-eq v15, v4, :cond_7f

    if-eq v15, v6, :cond_7a

    move v15, v12

    const/4 v7, 0x0

    goto :goto_89

    .line 134
    :cond_7a
    invoke-direct {v1, v9, v7}, Lio/vanta/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Lio/vanta/core/system/am/TaskRecord;

    move-result-object v7

    goto :goto_88

    .line 128
    :cond_7f
    invoke-direct {v1, v9, v7}, Lio/vanta/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Lio/vanta/core/system/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_88

    if-nez v12, :cond_88

    move-object v7, v0

    :cond_88
    :goto_88
    move v15, v12

    :goto_89
    if-eqz v7, :cond_217

    .line 139
    invoke-virtual {v7}, Lio/vanta/core/system/am/TaskRecord;->needNewTask()Z

    move-result v17

    if-eqz v17, :cond_9b

    move-object v3, v2

    move v2, v9

    const/4 v6, 0x0

    move/from16 v7, p6

    move-object v4, v11

    move-object/from16 v9, p8

    goto/16 :goto_228

    .line 143
    :cond_9b
    iget-object v12, v1, Lio/vanta/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v6, v7, Lio/vanta/core/system/am/TaskRecord;->id:I

    const/4 v4, 0x0

    invoke-virtual {v12, v6, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v13, :cond_c1

    if-nez v10, :cond_c1

    if-eqz v14, :cond_aa

    goto :goto_c1

    .line 150
    :cond_aa
    iget-object v4, v7, Lio/vanta/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 151
    invoke-static {v4, v2}, Lio/vanta/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_c1

    iget-object v4, v7, Lio/vanta/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 152
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    if-ne v4, v6, :cond_c1

    const/16 v16, 0x0

    return v16

    :cond_c1
    :goto_c1
    move v4, v10

    .line 157
    invoke-virtual {v7}, Lio/vanta/core/system/am/TaskRecord;->getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v10

    .line 158
    invoke-static {v11}, Lio/vanta/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v1, v9, v6}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v6

    if-eqz v13, :cond_137

    if-eqz v6, :cond_137

    .line 165
    iget-object v12, v6, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    iget-object v12, v12, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v12

    move/from16 v18, v3

    .line 166
    :try_start_d9
    iget-object v3, v6, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    iget-object v3, v3, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_e3
    if-ltz v3, :cond_12d

    move-object/from16 v19, v0

    .line 167
    iget-object v0, v6, Lio/vanta/core/system/am/ActivityRecord;->task:Lio/vanta/core/system/am/TaskRecord;

    iget-object v0, v0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/ActivityRecord;

    if-eq v0, v6, :cond_124

    move/from16 v20, v3

    move/from16 v3, v18

    .line 169
    iput-boolean v3, v0, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    .line 170
    const-string v3, "ActivityStack"

    move/from16 v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makerFinish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v20, -0x1

    move-object/from16 v5, p4

    move-object/from16 v0, v19

    move/from16 v4, v21

    const/16 v18, 0x1

    goto :goto_e3

    :cond_124
    move/from16 v21, v4

    if-eqz v21, :cond_129

    goto :goto_132

    :cond_129
    const/4 v3, 0x1

    .line 176
    iput-boolean v3, v6, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    goto :goto_131

    :cond_12d
    move-object/from16 v19, v0

    move/from16 v21, v4

    :goto_131
    const/4 v6, 0x0

    .line 181
    :goto_132
    monitor-exit v12

    goto :goto_13c

    :catchall_134
    move-exception v0

    monitor-exit v12
    :try_end_136
    .catchall {:try_start_d9 .. :try_end_136} :catchall_134

    throw v0

    :cond_137
    move-object/from16 v19, v0

    move/from16 v21, v4

    const/4 v6, 0x0

    :goto_13c
    if-eqz v21, :cond_177

    if-nez v13, :cond_177

    .line 186
    iget-object v0, v10, Lio/vanta/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v0, v2}, Lio/vanta/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14a

    move-object v6, v10

    goto :goto_177

    .line 189
    :cond_14a
    iget-object v3, v1, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v3

    .line 190
    :try_start_14d
    iget-object v0, v1, Lio/vanta/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_154
    :goto_154
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_172

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/vanta/core/system/am/ActivityRecord;

    .line 191
    iget-boolean v12, v5, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    if-nez v12, :cond_154

    iget-object v5, v5, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    const/4 v4, 0x1

    goto :goto_154

    .line 196
    :cond_172
    monitor-exit v3

    goto :goto_178

    :catchall_174
    move-exception v0

    monitor-exit v3
    :try_end_176
    .catchall {:try_start_14d .. :try_end_176} :catchall_174

    throw v0

    :cond_177
    :goto_177
    const/4 v4, 0x0

    .line 200
    :goto_178
    iget v0, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b6

    if-nez v13, :cond_1b6

    .line 201
    iget-object v0, v10, Lio/vanta/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v0, v2}, Lio/vanta/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_189

    move-object v6, v10

    goto :goto_1b6

    .line 204
    :cond_189
    invoke-static {v11}, Lio/vanta/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lio/vanta/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1b6

    .line 209
    iget-object v3, v7, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 210
    :try_start_196
    iget-object v5, v7, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_19e
    if-ltz v5, :cond_1b0

    .line 211
    iget-object v12, v7, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/vanta/core/system/am/ActivityRecord;

    if-eq v12, v0, :cond_1b0

    .line 213
    iput-boolean v6, v12, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto :goto_19e

    .line 218
    :cond_1b0
    monitor-exit v3

    move-object v6, v0

    goto :goto_1b6

    :catchall_1b3
    move-exception v0

    monitor-exit v3
    :try_end_1b5
    .catchall {:try_start_196 .. :try_end_1b5} :catchall_1b3

    throw v0

    .line 223
    :cond_1b6
    :goto_1b6
    iget v0, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1bc

    move-object v6, v10

    :cond_1bc
    if-eqz v14, :cond_1d9

    if-eqz v15, :cond_1d9

    .line 229
    iget-object v0, v7, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/am/ActivityRecord;

    const/4 v5, 0x1

    .line 230
    iput-boolean v5, v3, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    goto :goto_1c6

    .line 232
    :cond_1d6
    invoke-direct/range {p0 .. p1}, Lio/vanta/core/system/am/ActivityStack;->finishAllActivity(I)V

    :cond_1d9
    if-eqz v6, :cond_1e1

    .line 238
    invoke-direct {v1, v6, v2}, Lio/vanta/core/system/am/ActivityStack;->deliverNewIntentLocked(Lio/vanta/core/system/am/ActivityRecord;Landroid/content/Intent;)V

    const/16 v16, 0x0

    return v16

    :cond_1e1
    const/16 v16, 0x0

    if-eqz v4, :cond_1e6

    return v16

    :cond_1e6
    if-nez p4, :cond_1fb

    .line 245
    invoke-virtual {v7}, Lio/vanta/core/system/am/TaskRecord;->getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1f1

    .line 247
    iget-object v0, v0, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_1f3

    :cond_1f1
    move-object/from16 v0, p4

    :goto_1f3
    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v4, v0

    goto :goto_20e

    :cond_1fb
    if-eqz v19, :cond_206

    .line 250
    invoke-virtual/range {v19 .. v19}, Lio/vanta/core/system/am/TaskRecord;->getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_206

    .line 252
    iget-object v0, v0, Lio/vanta/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_1f3

    :cond_206
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    :goto_20e
    move-object v3, v8

    const/4 v12, 0x0

    move-object/from16 v8, p8

    .line 255
    invoke-direct/range {v1 .. v12}, Lio/vanta/core/system/am/ActivityStack;->startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILio/vanta/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;I)I

    move-result v0

    return v0

    :cond_217
    const/4 v12, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object v4, v11

    .line 140
    :goto_228
    invoke-direct/range {v1 .. v9}, Lio/vanta/core/system/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0

    :cond_22d
    :goto_22d
    const/16 v16, 0x0

    return v16

    :catchall_230
    move-exception v0

    .line 100
    :try_start_231
    monitor-exit v3
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    throw v0
.end method
