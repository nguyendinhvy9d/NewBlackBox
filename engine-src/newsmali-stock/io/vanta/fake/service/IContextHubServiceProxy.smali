.class public Lio/vanta/fake/service/IContextHubServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IContextHubServiceProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    invoke-static {}, Lio/vanta/fake/service/IContextHubServiceProxy;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static getServiceName()Ljava/lang/String;
    .registers 1

    .line 18
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "contexthub"

    return-object v0

    :cond_9
    const-string v0, "contexthub_service"

    return-object v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 23
    invoke-static {}, Lvanta/android/hardware/location/BRIContextHubServiceStub;->get()Lvanta/android/hardware/location/IContextHubServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    invoke-static {}, Lio/vanta/fake/service/IContextHubServiceProxy;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/hardware/location/IContextHubServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 28
    invoke-static {}, Lio/vanta/fake/service/IContextHubServiceProxy;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IContextHubServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 5

    .line 33
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 34
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "registerCallback"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IContextHubServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 35
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "getContextHubInfo"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IContextHubServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 36
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "getContextHubHandles"

    new-array v1, v1, [I

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IContextHubServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
