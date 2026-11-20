.class public Lio/vanta/fake/service/IJobServiceProxy$CancelAll;
.super Lio/vanta/fake/hook/MethodHook;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelAll"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "cancelAll"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBJobManager()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/vanta/fake/frameworks/BJobManager;->cancelAll(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 170
    const-string v1, "JobServiceStub"

    const-string v2, "CancelAll: Error canceling all jobs"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
