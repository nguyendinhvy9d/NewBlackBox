.class public Lio/vanta/fake/service/ISensorPrivacyManagerProxy$IsSensorPrivacyEnabled;
.super Lio/vanta/fake/hook/MethodHook;
.source "ISensorPrivacyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ISensorPrivacyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsSensorPrivacyEnabled"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "isSensorPrivacyEnabled"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    const-string p1, "SensorPrivacyProxy"

    const-string p2, "SensorPrivacy: isSensorPrivacyEnabled returning false"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
