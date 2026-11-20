.class public Lio/vanta/fake/service/ISensorPrivacyManagerProxy$SetSensorPrivacy;
.super Lio/vanta/fake/hook/MethodHook;
.source "ISensorPrivacyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ISensorPrivacyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetSensorPrivacy"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setSensorPrivacy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    const-string v0, "SensorPrivacyProxy"

    const-string v1, "SensorPrivacy: setSensorPrivacy allowing"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
