.class public abstract Lio/vanta/fake/frameworks/BlackManager;
.super Ljava/lang/Object;
.source "BlackManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final GLOBAL_FAILURE_RESET_INTERVAL_MS:J = 0x7530L

.field private static final MIN_SERVICE_CREATION_INTERVAL_MS:J = 0x32L

.field private static final RETRY_TIMEOUT_MS:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "BlackManager"

.field private static final globalServiceFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static lastGlobalFailureReset:J


# instance fields
.field private mLastRetryTime:J

.field private mLastServiceCreationTime:J

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TService;"
        }
    .end annotation
.end field

.field private final mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$fputmService(Lio/vanta/fake/frameworks/BlackManager;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/vanta/fake/frameworks/BlackManager;->globalServiceFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, 0x0

    .line 28
    sput-wide v0, Lio/vanta/fake/frameworks/BlackManager;->lastGlobalFailureReset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mLastRetryTime:J

    .line 21
    iput-wide v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mLastServiceCreationTime:J

    return-void
.end method

.method private getTClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TService;>;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private markServiceCreationFailed()V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mLastRetryTime:J

    return-void
.end method


# virtual methods
.method public clearServiceCache()V
    .locals 2

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cleared service cache for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getService()Landroid/os/IInterface;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TService;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Successfully created service: "

    const-string v3, "Error linking death recipient for "

    const-string v0, "Service binder is not alive after creation: "

    const-string v4, "Error checking service binder health: "

    const-string v5, "Failed to create service instance for: "

    const-string v6, "Creating service for: "

    const-string v7, "Binder is not alive for service: "

    const-string v8, "Failed to get binder for service: "

    .line 34
    iget-object v9, v1, Lio/vanta/fake/frameworks/BlackManager;->mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    const-string v12, "BlackManager"

    if-eqz v9, :cond_1

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    .line 36
    iget-wide v10, v1, Lio/vanta/fake/frameworks/BlackManager;->mLastRetryTime:J

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x7d0

    cmp-long v10, v13, v10

    if-gez v10, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Skipping service creation for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " due to recent failure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 41
    :cond_0
    iget-object v10, v1, Lio/vanta/fake/frameworks/BlackManager;->mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 44
    :goto_0
    iget-object v10, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 45
    iget-object v0, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    return-object v0

    .line 49
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 50
    iget-wide v13, v1, Lio/vanta/fake/frameworks/BlackManager;->mLastServiceCreationTime:J

    sub-long v13, v10, v13

    const-wide/16 v16, 0x32

    cmp-long v13, v13, v16

    if-gez v13, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Rate limiting service creation for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    return-object v0

    .line 56
    :cond_3
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v13

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/vanta/VantaCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    if-nez v13, :cond_4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    return-object v15

    .line 64
    :cond_4
    invoke-interface {v13}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v8

    if-nez v8, :cond_5

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    return-object v15

    .line 70
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->getTClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$Stub"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v7}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v6

    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v14, Landroid/os/IBinder;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    invoke-virtual {v6, v7, v8}, Lio/vanta/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector;

    move-result-object v6

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v7

    .line 74
    invoke-virtual {v6, v7}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IInterface;

    iput-object v6, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_7

    .line 79
    :try_start_1
    invoke-interface {v6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_6

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object v15, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 82
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v15

    .line 92
    :cond_6
    :try_start_2
    iget-object v0, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 94
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lio/vanta/fake/frameworks/BlackManager$1;

    invoke-direct {v5, v1, v0}, Lio/vanta/fake/frameworks/BlackManager$1;-><init>(Lio/vanta/fake/frameworks/BlackManager;Landroid/os/IInterface;)V

    const/4 v9, 0x0

    invoke-interface {v4, v5, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, v1, Lio/vanta/fake/frameworks/BlackManager;->mServiceCreationFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iput-wide v10, v1, Lio/vanta/fake/frameworks/BlackManager;->mLastServiceCreationTime:J

    goto :goto_2

    :catch_1
    move-exception v0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v15, 0x0

    .line 87
    iput-object v15, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 88
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    return-object v15

    .line 117
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    .line 121
    :goto_2
    iget-object v0, v1, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating service for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-direct {v1}, Lio/vanta/fake/frameworks/BlackManager;->markServiceCreationFailed()V

    const/4 v15, 0x0

    return-object v15
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method public isServiceHealthy()Z
    .locals 4

    .line 142
    iget-object v0, p0, Lio/vanta/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service health check failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlackManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
