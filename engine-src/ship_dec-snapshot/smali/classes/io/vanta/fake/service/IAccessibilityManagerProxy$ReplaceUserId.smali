.class public Lio/vanta/fake/service/IAccessibilityManagerProxy$ReplaceUserId;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccessibilityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccessibilityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceUserId"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethods;
    value = {
        "interrupt",
        "sendAccessibilityEvent",
        "addClient",
        "getInstalledAccessibilityServiceList",
        "getEnabledAccessibilityServiceList",
        "addAccessibilityInteractionConnection",
        "getWindowToken"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 45
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 46
    aget-object v1, p3, v0

    .line 47
    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 49
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 52
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
