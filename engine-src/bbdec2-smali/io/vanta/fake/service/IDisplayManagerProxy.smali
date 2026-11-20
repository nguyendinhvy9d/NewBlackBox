.class public Lio/vanta/fake/service/IDisplayManagerProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IDisplayManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IDisplayManagerProxy$CreateVirtualDisplay;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-static {}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get()Lvanta/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lvanta/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/hardware/display/DisplayManagerGlobalContext;->mDm()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-static {}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get()Lvanta/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lvanta/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object p1

    invoke-virtual {p0}, Lio/vanta/fake/service/IDisplayManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lvanta/android/hardware/display/DisplayManagerGlobalContext;->_set_mDm(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 2

    .line 33
    invoke-static {}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get()Lvanta/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lvanta/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lvanta/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/hardware/display/DisplayManagerGlobalContext;->mDm()Landroid/os/IInterface;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lio/vanta/fake/service/IDisplayManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
