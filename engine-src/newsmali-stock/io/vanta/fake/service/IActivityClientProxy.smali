.class public Lio/vanta/fake/service/IActivityClientProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IActivityClientProxy$SetTaskDescription;,
        Lio/vanta/fake/service/IActivityClientProxy$ActivityDestroyed;,
        Lio/vanta/fake/service/IActivityClientProxy$ActivityResumed;,
        Lio/vanta/fake/service/IActivityClientProxy$FinishActivity;
    }
.end annotation

.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IActivityClientProxy"


# instance fields
.field private final who:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 24
    iput-object p1, p0, Lio/vanta/fake/service/IActivityClientProxy;->who:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProxyInvocation()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-super {p0}, Lio/vanta/fake/hook/ClassInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 29
    iget-object v0, p0, Lio/vanta/fake/service/IActivityClientProxy;->who:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 32
    :cond_5
    invoke-static {}, Lvanta/android/app/BRActivityClient;->get()Lvanta/android/app/ActivityClientStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lvanta/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityClientContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lvanta/android/util/BRSingleton;->get(Ljava/lang/Object;)Lvanta/android/util/SingletonContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/util/SingletonContext;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 39
    invoke-static {}, Lvanta/android/app/BRActivityClient;->get()Lvanta/android/app/ActivityClientStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lvanta/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityClientContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lvanta/android/util/BRSingleton;->get(Ljava/lang/Object;)Lvanta/android/util/SingletonContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onlyProxy(Z)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lio/vanta/fake/hook/ClassInvocationStub;->onlyProxy(Z)V

    return-void
.end method
