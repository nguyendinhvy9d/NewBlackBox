.class public Lio/vanta/fake/service/ILocationManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ILocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ILocationManagerProxy$setExtraLocationControllerPackageEnabled;,
        Lio/vanta/fake/service/ILocationManagerProxy$isProviderEnabledForUser;,
        Lio/vanta/fake/service/ILocationManagerProxy$GetAllProviders;,
        Lio/vanta/fake/service/ILocationManagerProxy$GetBestProvider;,
        Lio/vanta/fake/service/ILocationManagerProxy$RemoveGpsStatusListener;,
        Lio/vanta/fake/service/ILocationManagerProxy$GetProviderProperties;,
        Lio/vanta/fake/service/ILocationManagerProxy$RemoveUpdates;,
        Lio/vanta/fake/service/ILocationManagerProxy$RequestLocationUpdates;,
        Lio/vanta/fake/service/ILocationManagerProxy$GetLastKnownLocation;,
        Lio/vanta/fake/service/ILocationManagerProxy$GetLastLocation;,
        Lio/vanta/fake/service/ILocationManagerProxy$RegisterGnssStatusCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ILocationManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "location"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 35
    invoke-static {}, Lvanta/android/location/BRILocationManagerStub;->get()Lvanta/android/location/ILocationManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/location/ILocationManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 40
    const-string p1, "location"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ILocationManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 55
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 57
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLastLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 58
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLastKnownLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 59
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestLocationUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 60
    :cond_35
    const-string p1, "ILocationManagerProxy"

    const-string p2, "Blocking location request from Google Play Services to prevent crash"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_3e
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
