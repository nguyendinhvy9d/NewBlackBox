.class public Lio/vanta/fake/service/IActivityManagerProxy$GetServices;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetServices"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getServices"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 772
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 777
    :try_start_0
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lio/vanta/fake/frameworks/BActivityManager;->getRunningServices(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 778
    iget-object p2, p1, Lio/vanta/entity/am/RunningServiceInfo;->mRunningServiceInfoList:Ljava/util/List;

    if-nez p2, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object p1, p1, Lio/vanta/entity/am/RunningServiceInfo;->mRunningServiceInfoList:Ljava/util/List;

    return-object p1

    .line 779
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 783
    const-string p2, "IActivityManagerProxy"

    const-string p3, "getServices hook failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
