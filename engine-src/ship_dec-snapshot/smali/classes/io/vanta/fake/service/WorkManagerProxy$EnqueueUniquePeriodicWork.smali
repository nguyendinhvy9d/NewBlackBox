.class public Lio/vanta/fake/service/WorkManagerProxy$EnqueueUniquePeriodicWork;
.super Lio/vanta/fake/hook/MethodHook;
.source "WorkManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WorkManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnqueueUniquePeriodicWork"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "enqueueUniquePeriodicWork"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private createMockWorkResult()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 155
    :try_start_0
    const-string v1, "androidx.work.Operation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 159
    const-string v2, "WorkManagerProxy"

    const-string v3, "WorkManager: Failed to create mock result"

    invoke-static {v2, v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    const-string v0, "WorkManagerProxy"

    .line 0
    const-string v1, "WorkManager: Periodic work name: "

    .line 133
    :try_start_0
    const-string v2, "WorkManager: enqueueUniquePeriodicWork() called"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 136
    array-length v2, p3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 137
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    const-string p2, "WorkManager: enqueueUniquePeriodicWork() failed, returning mock result"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-direct {p0}, Lio/vanta/fake/service/WorkManagerProxy$EnqueueUniquePeriodicWork;->createMockWorkResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
