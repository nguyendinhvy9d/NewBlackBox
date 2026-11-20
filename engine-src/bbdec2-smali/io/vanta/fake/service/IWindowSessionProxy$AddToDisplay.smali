.class public Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplay;
.super Lio/vanta/fake/hook/MethodHook;
.source "IWindowSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWindowSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToDisplay"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "addToDisplay"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_28

    aget-object v2, p3, v1

    if-nez v2, :cond_9

    goto :goto_25

    .line 53
    :cond_9
    instance-of v3, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_25

    .line 54
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 55
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 56
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v3

    invoke-virtual {v3}, Lio/vanta/VantaCore;->isDisableFlagSecure()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 57
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    :cond_28
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
