.class public Lio/vanta/fake/service/IPowerManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IPowerManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "power"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 18
    invoke-static {}, Lvanta/android/os/BRIPowerManagerStub;->get()Lvanta/android/os/IPowerManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "power"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/IPowerManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 23
    const-string p1, "power"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IPowerManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 4

    .line 33
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 34
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "acquireWakeLock"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPowerManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 35
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "acquireWakeLockWithUid"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPowerManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 36
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "releaseWakeLock"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPowerManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 37
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "updateWakeLockWorkSource"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPowerManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 38
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isWakeLockLevelSupported"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPowerManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
