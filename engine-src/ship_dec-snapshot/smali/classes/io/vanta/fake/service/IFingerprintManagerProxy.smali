.class public Lio/vanta/fake/service/IFingerprintManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IFingerprintManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 19
    invoke-static {}, Lvanta/android/view/BRIGraphicsStatsStub;->get()Lvanta/android/view/IGraphicsStatsStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/view/IGraphicsStatsStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    const-string p1, "fingerprint"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IFingerprintManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 2

    .line 34
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 35
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "isHardwareDetected"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 36
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "hasEnrolledFingerprints"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 37
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "authenticate"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 38
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "cancelAuthentication"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 39
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getEnrolledFingerprints"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 40
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getAuthenticatorId"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
