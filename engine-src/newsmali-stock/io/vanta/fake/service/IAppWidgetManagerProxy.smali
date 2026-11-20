.class public Lio/vanta/fake/service/IAppWidgetManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IAppWidgetManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appwidget"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 22
    invoke-static {}, Lvanta/com/android/internal/appwidget/BRIAppWidgetServiceStub;->get()Lvanta/com/android/internal/appwidget/IAppWidgetServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "appwidget"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/com/android/internal/appwidget/IAppWidgetServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 27
    const-string p1, "appwidget"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 38
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
    .registers 7

    .line 43
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 44
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    new-array v4, v1, [I

    const-string v5, "startListening"

    invoke-direct {v0, v5, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 45
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "stopListening"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 46
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "allocateAppWidgetId"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 47
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteAppWidgetId"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 48
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteHost"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 49
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteAllHosts"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 50
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetViews"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 51
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetIdsForHost"

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 52
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "createAppWidgetConfigIntentSender"

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetIds"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetOptions"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 55
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetOptions"

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 56
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "partiallyUpdateAppWidgetIds"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetProvider"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "notifyAppWidgetViewDataChanged"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "getInstalledProvidersForProfile"

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetInfo"

    invoke-direct {v0, v4, v5}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 61
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "hasBindAppWidgetPermission"

    invoke-direct {v0, v4, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 62
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "setBindAppWidgetPermission"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 63
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "bindAppWidgetId"

    invoke-direct {v0, v4, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 64
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "bindRemoteViewsService"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 65
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "unbindRemoteViewsService"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 66
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "getAppWidgetIds"

    new-array v1, v1, [I

    invoke-direct {v0, v3, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 67
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "isBoundWidgetPackage"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
