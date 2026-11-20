.class public Lio/vanta/app/dispatcher/AppJobServiceDispatcher;
.super Ljava/lang/Object;
.source "AppJobServiceDispatcher.java"


# static fields
.field private static final sServiceDispatcher:Lio/vanta/app/dispatcher/AppJobServiceDispatcher;


# instance fields
.field private final mJobRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/vanta/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    invoke-direct {v0}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;-><init>()V

    sput-object v0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->sServiceDispatcher:Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    return-void
.end method

.method public static get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;
    .locals 1

    .line 20
    sget-object v0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->sServiceDispatcher:Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    return-object v0
.end method


# virtual methods
.method getJobService(I)Landroid/app/job/JobService;
    .locals 5

    .line 80
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/entity/JobRecord;

    if-eqz v1, :cond_0

    .line 82
    iget-object v2, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v2, :cond_0

    .line 83
    iget-object p1, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 86
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getBJobManager()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getAppProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lio/vanta/fake/frameworks/BJobManager;->queryJobRecord(Ljava/lang/String;I)Lio/vanta/entity/JobRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 87
    iget-object v3, v2, Lio/vanta/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v3

    iget-object v4, v2, Lio/vanta/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3, v4}, Lio/vanta/app/BActivityThread;->createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;

    move-result-object v3

    iput-object v3, v2, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    .line 91
    iget-object v3, v2, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 92
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 93
    :cond_2
    :try_start_3
    iget-object v3, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, v2, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    .line 88
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p1

    .line 99
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/entity/JobRecord;

    .line 49
    iget-object v2, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v2, :cond_0

    .line 50
    iget-object v1, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 64
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/entity/JobRecord;

    .line 65
    iget-object v2, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v2, :cond_0

    .line 66
    iget-object v1, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->onLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->getJobService(I)Landroid/app/job/JobService;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 36
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->getJobService(I)Landroid/app/job/JobService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/app/job/JobService;->onDestroy()V

    .line 41
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/entity/JobRecord;

    .line 73
    iget-object v2, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v2, :cond_0

    .line 74
    iget-object v1, v1, Lio/vanta/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onTrimMemory(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
