.class public final Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShortcutActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object p1, Ltop/niunaijun/blackboxa/license/LicenseClient;->INSTANCE:Ltop/niunaijun/blackboxa/license/LicenseClient;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Ltop/niunaijun/blackboxa/license/LicenseClient;->cachedOk(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Ltop/niunaijun/blackboxa/license/ActivationActivity;->Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;->start$default(Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;->finish()V

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 27
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity$onCreate$1;

    invoke-direct {v2, p1, v0, p0, v1}, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity$onCreate$1;-><init>(Ljava/lang/String;ILtop/niunaijun/blackboxa/view/main/ShortcutActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
