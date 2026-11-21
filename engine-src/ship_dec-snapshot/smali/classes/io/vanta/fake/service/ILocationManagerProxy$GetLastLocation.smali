.class public Lio/vanta/fake/service/ILocationManagerProxy$GetLastLocation;
.super Lio/vanta/fake/hook/MethodHook;
.source "ILocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ILocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastLocation"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getLastLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/vanta/fake/frameworks/BLocationManager;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object p1

    invoke-virtual {p1}, Lio/vanta/entity/location/BLocation;->convert2SystemLocation()Landroid/location/Location;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    # XJ: fake-location TAY chua bat -> KHONG passthrough GPS that (lo VN); tra GPS Nhat per-o.
    const/4 p1, 0x0

    invoke-static {p1}, Lio/vanta/fake/XJProfile;->fakeLoc(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method
