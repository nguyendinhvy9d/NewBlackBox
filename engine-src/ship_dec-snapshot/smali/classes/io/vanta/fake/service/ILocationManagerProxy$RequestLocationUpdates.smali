.class public Lio/vanta/fake/service/ILocationManagerProxy$RequestLocationUpdates;
.super Lio/vanta/fake/hook/MethodHook;
.source "ILocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ILocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestLocationUpdates"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "requestLocationUpdates"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    const/4 v1, 0x0

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 128
    aget-object v0, p3, v0

    instance-of v2, v0, Landroid/os/IInterface;

    if-eqz v2, :cond_0

    .line 129
    check-cast v0, Landroid/os/IInterface;

    .line 130
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object p1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/vanta/fake/frameworks/BLocationManager;->requestLocationUpdates(Landroid/os/IBinder;)V

    return-object v1

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/SecurityException;

    if-eqz p2, :cond_1

    .line 140
    const-string p1, "ILocationManagerProxy"

    const-string p2, "Location permission denied for requestLocationUpdates, returning 0"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 143
    :cond_1
    throw p1
.end method
