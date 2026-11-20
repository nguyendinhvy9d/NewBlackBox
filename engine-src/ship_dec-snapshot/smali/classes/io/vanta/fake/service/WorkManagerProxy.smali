.class public Lio/vanta/fake/service/WorkManagerProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "WorkManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/WorkManagerProxy$GetWorkInfos;,
        Lio/vanta/fake/service/WorkManagerProxy$CancelWorkById;,
        Lio/vanta/fake/service/WorkManagerProxy$CancelAllWork;,
        Lio/vanta/fake/service/WorkManagerProxy$EnqueueUniquePeriodicWork;,
        Lio/vanta/fake/service/WorkManagerProxy$EnqueueUniqueWork;,
        Lio/vanta/fake/service/WorkManagerProxy$Enqueue;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WorkManagerProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    const-string v2, "androidx.work.WorkManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 30
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 33
    const-string v2, "WorkManagerProxy"

    const-string v3, "Failed to get WorkManager instance"

    invoke-static {v2, v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
