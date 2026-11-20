.class public Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetWakeUpTime;
.super Lio/vanta/fake/hook/MethodHook;
.source "IMiuiSecurityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IMiuiSecurityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWakeUpTime"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getWakeUpTime"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
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

    .line 134
    const-string p1, "MiuiSecurityManagerProxy"

    const-string p2, "GetWakeUpTime: Returning default wake up time"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
