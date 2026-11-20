.class public Lio/vanta/fake/service/IPhoneSubInfoProxy$GetDeviceIdForSubscriber;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPhoneSubInfoProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPhoneSubInfoProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDeviceIdForSubscriber"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getDeviceIdForSubscriber"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lio/vanta/fake/XJProfile;->imei()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
