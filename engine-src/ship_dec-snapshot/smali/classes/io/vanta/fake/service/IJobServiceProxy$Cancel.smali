.class public Lio/vanta/fake/service/IJobServiceProxy$Cancel;
.super Lio/vanta/fake/hook/MethodHook;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cancel"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "cancel"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 145
    :goto_0
    :try_start_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 146
    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    invoke-static {}, Lio/vanta/VantaCore;->getBJobManager()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v2

    .line 149
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v3

    iget-object v3, v3, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lio/vanta/fake/frameworks/BJobManager;->cancel(Ljava/lang/String;I)I

    move-result v1

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 156
    const-string v1, "JobServiceStub"

    const-string v2, "Cancel: Error canceling job"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
