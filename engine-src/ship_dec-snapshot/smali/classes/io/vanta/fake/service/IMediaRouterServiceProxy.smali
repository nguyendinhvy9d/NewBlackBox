.class public Lio/vanta/fake/service/IMediaRouterServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IMediaRouterServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IMediaRouterServiceProxy$registerRouter2;,
        Lio/vanta/fake/service/IMediaRouterServiceProxy$registerClientAsUser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "media_router"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 23
    invoke-static {}, Lvanta/android/media/BRIMediaRouterServiceStub;->get()Lvanta/android/media/IMediaRouterServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "media_router"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/media/IMediaRouterServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 28
    const-string p1, "media_router"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IMediaRouterServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
