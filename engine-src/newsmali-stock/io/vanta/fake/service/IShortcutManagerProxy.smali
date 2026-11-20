.class public Lio/vanta/fake/service/IShortcutManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IShortcutManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IShortcutManagerProxy$pushDynamicShortcut;,
        Lio/vanta/fake/service/IShortcutManagerProxy$CreateShortcutResultIntent;,
        Lio/vanta/fake/service/IShortcutManagerProxy$AddDynamicShortcuts;,
        Lio/vanta/fake/service/IShortcutManagerProxy$SetDynamicShortcuts;,
        Lio/vanta/fake/service/IShortcutManagerProxy$RequestPinShortcut;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 28
    invoke-static {}, Lvanta/android/content/pm/BRIShortcutServiceStub;->get()Lvanta/android/content/pm/IShortcutServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "shortcut"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/content/pm/IShortcutServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 33
    const-string p1, "shortcut"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IShortcutManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 108
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 3

    .line 43
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 44
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 45
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "disableShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 46
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "enableShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 47
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getRemainingCallCount"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 48
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getRateLimitResetTime"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 49
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getIconMaxDimensions"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 50
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getMaxShortcutCountPerActivity"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 51
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "reportShortcutUsed"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 52
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "onApplicationActive"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "hasShortcutHostPermission"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "removeAllDynamicShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 55
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "removeDynamicShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 56
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "removeLongLivedShortcuts"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/IShortcutManagerProxy$1;

    const-string v1, "getManifestShortcuts"

    invoke-direct {v0, p0, v1}, Lio/vanta/fake/service/IShortcutManagerProxy$1;-><init>(Lio/vanta/fake/service/IShortcutManagerProxy;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IShortcutManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
