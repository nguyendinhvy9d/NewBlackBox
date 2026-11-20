.class public Lio/vanta/fake/service/ILocationManagerProxy$GetLastKnownLocation;
.super Lio/vanta/fake/hook/MethodHook;
.source "ILocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ILocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastKnownLocation"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getLastKnownLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 105
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 106
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

    .line 111
    :cond_1b
    :try_start_1b
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/SecurityException;

    if-eqz p2, :cond_32

    .line 114
    const-string p1, "ILocationManagerProxy"

    const-string p2, "Location permission denied, returning null for getLastKnownLocation"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_32
    throw p1
.end method
