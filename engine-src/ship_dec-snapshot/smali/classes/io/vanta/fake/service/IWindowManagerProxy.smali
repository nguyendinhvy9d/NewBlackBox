.class public Lio/vanta/fake/service/IWindowManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IWindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IWindowManagerProxy$OpenSession;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "window"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 24
    invoke-static {}, Lvanta/android/view/BRIWindowManagerStub;->get()Lvanta/android/view/IWindowManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "window"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/view/IWindowManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 29
    const-string p1, "window"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IWindowManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lvanta/android/view/BRWindowManagerGlobal;->get()Lvanta/android/view/WindowManagerGlobalStatic;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lvanta/android/view/WindowManagerGlobalStatic;->_set_sWindowManagerService(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
