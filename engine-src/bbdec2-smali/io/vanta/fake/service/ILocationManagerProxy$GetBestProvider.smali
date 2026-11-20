.class public Lio/vanta/fake/service/ILocationManagerProxy$GetBestProvider;
.super Lio/vanta/fake/hook/MethodHook;
.source "ILocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ILocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBestProvider"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getBestProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 189
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

    .line 193
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    const-string p1, "gps"

    return-object p1

    .line 196
    :cond_9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
