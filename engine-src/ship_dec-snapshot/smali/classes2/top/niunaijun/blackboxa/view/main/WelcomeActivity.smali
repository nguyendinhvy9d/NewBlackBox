.class public final Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WelcomeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onNewIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "gate",
        "jump",
        "previewInstalledAppList",
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
.method public static synthetic $r8$lambda$3kRviczkGWeFPlsRltnDUKVj8Kk(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;)V
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->gate$lambda$1(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dZYf2hNfBSb03r5o-t4Dn5sQvO4(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->gate$lambda$1$lambda$0(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final gate()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/Thread;

    .line 40
    new-instance v1, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;)V

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final gate$lambda$1(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;)V
    .locals 2

    .line 30
    sget-object v0, Ltop/niunaijun/blackboxa/license/LicenseClient;->INSTANCE:Ltop/niunaijun/blackboxa/license/LicenseClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackboxa/license/LicenseClient;->check(Landroid/content/Context;)Ltop/niunaijun/blackboxa/license/LicenseClient$Result;

    move-result-object v0

    .line 31
    new-instance v1, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final gate$lambda$1$lambda$0(Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/license/LicenseClient$Result;->getOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->jump()V

    return-void

    .line 36
    :cond_1
    sget-object v0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/license/LicenseClient$Result;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->finish()V

    return-void
.end method

.method private final jump()V
    .locals 2

    .line 44
    sget-object v0, Ltop/niunaijun/blackboxa/view/main/MainActivity;->Companion:Ltop/niunaijun/blackboxa/view/main/MainActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackboxa/view/main/MainActivity$Companion;->start(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->finish()V

    return-void
.end method

.method private final previewInstalledAppList()V
    .locals 3

    .line 49
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    sget-object v2, Ltop/niunaijun/blackboxa/util/InjectionUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/InjectionUtil;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/util/InjectionUtil;->getListFactory()Ltop/niunaijun/blackboxa/view/list/ListFactory;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Ltop/niunaijun/blackboxa/view/list/ListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/view/list/ListViewModel;

    .line 50
    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/list/ListViewModel;->previewInstalledList()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Ltop/niunaijun/blackboxa/R$layout;->activity_welcome:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->previewInstalledAppList()V

    .line 24
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->gate()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 17
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/main/WelcomeActivity;->gate()V

    return-void
.end method
