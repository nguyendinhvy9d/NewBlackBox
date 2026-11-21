.class public Lio/vanta/fake/service/ITelephonyManagerProxy$GetSimStateForSlotIndexAndPortIndex;
.super Lio/vanta/fake/hook/MethodHook;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ITelephonyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSimStateForSlotIndexAndPortIndex"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getSimStateForSlotIndexAndPortIndex"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

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

    # XJ: Android 13 MEP eSIM path -> SIM_STATE_READY(5) (xem GetSimStateForSlotIndex).
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
