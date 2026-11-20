.class public final Ltop/niunaijun/blackboxa/app/rocker/RockerManager$init$2;
.super Ljava/lang/Object;
.source "RockerManager.kt"

# interfaces
.implements Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->init(Landroid/app/Application;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "top/niunaijun/blackboxa/app/rocker/RockerManager$init$2",
        "Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;",
        "onActivityStarted",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityStopped",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityCreated(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityDestroyed(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityPaused(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityResumed(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivitySaveInstanceState(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "RockerManager"

    const-string v1, "Floating view attached to activity: "

    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityStarted(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;)V

    .line 73
    :try_start_0
    sget-object v2, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    invoke-virtual {v2}, Lcom/imuxuan/floatingview/FloatingView$Companion;->get()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/imuxuan/floatingview/FloatingView;->attach(Landroid/app/Activity;)Lcom/imuxuan/floatingview/FloatingView;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error attaching floating view to activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "RockerManager"

    const-string v1, "Floating view detached from activity: "

    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback$DefaultImpls;->onActivityStopped(Ltop/niunaijun/blackboxa/app/rocker/BaseActivityLifecycleCallback;Landroid/app/Activity;)V

    .line 89
    :try_start_0
    sget-object v2, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    invoke-virtual {v2}, Lcom/imuxuan/floatingview/FloatingView$Companion;->get()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/imuxuan/floatingview/FloatingView;->detach(Landroid/app/Activity;)Lcom/imuxuan/floatingview/FloatingView;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error detaching floating view from activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
