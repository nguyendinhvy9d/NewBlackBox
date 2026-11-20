.class public final Ltop/niunaijun/blackboxa/license/ActivationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivationActivity.kt\ntop/niunaijun/blackboxa/license/ActivationActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/license/ActivationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "input",
        "Landroid/widget/EditText;",
        "btn",
        "Landroid/widget/Button;",
        "status",
        "Landroid/widget/TextView;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "activate",
        "setLoading",
        "on",
        "",
        "showStatus",
        "msg",
        "",
        "isError",
        "Companion",
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


# static fields
.field public static final Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

.field private static final EXTRA_REASON:Ljava/lang/String; = "reason"


# instance fields
.field private btn:Landroid/widget/Button;

.field private input:Landroid/widget/EditText;

.field private progress:Landroid/widget/ProgressBar;

.field private status:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$5Dgjtcp1C0nYpdjVq9oUbCArf_U(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->activate$lambda$5$lambda$4(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfvOPJRw9W3KWjWT_rNLx5-La7w(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->activate$lambda$5(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXXYaDWZJO2E80N_xik1Ua3OB8Q(Ltop/niunaijun/blackboxa/license/ActivationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->onCreate$lambda$3(Ltop/niunaijun/blackboxa/license/ActivationActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final activate()V
    .locals 3

    .line 48
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->input:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, "input"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v0, "Nh\u1eadp key tr\u01b0\u1edbc \u0111\u00e3."

    invoke-direct {p0, v0, v2}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->showStatus(Ljava/lang/String;Z)V

    return-void

    .line 50
    :cond_1
    invoke-direct {p0, v2}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->setLoading(Z)V

    .line 51
    new-instance v1, Ljava/lang/Thread;

    .line 63
    new-instance v2, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda2;-><init>(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ljava/lang/String;)V

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final activate$lambda$5(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ljava/lang/String;)V
    .locals 2

    .line 52
    sget-object v0, Ltop/niunaijun/blackboxa/license/LicenseClient;->INSTANCE:Ltop/niunaijun/blackboxa/license/LicenseClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Ltop/niunaijun/blackboxa/license/LicenseClient;->lease(Landroid/content/Context;Ljava/lang/String;)Ltop/niunaijun/blackboxa/license/LicenseClient$Result;

    move-result-object p1

    .line 53
    new-instance v0, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final activate$lambda$5$lambda$4(Ltop/niunaijun/blackboxa/license/ActivationActivity;Ltop/niunaijun/blackboxa/license/LicenseClient$Result;)V
    .locals 2

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->setLoading(Z)V

    .line 55
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/license/LicenseClient$Result;->getOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v1, "K\u00edch ho\u1ea1t th\u00e0nh c\u00f4ng!"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    sget-object v0, Ltop/niunaijun/blackboxa/view/main/MainActivity;->Companion:Ltop/niunaijun/blackboxa/view/main/MainActivity$Companion;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/view/main/MainActivity$Companion;->start(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->finish()V

    return-void

    .line 60
    :cond_0
    sget-object v0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/license/LicenseClient$Result;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;->reasonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->showStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final onCreate$lambda$3(Ltop/niunaijun/blackboxa/license/ActivationActivity;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->activate()V

    return-void
.end method

.method private final setLoading(Z)V
    .locals 3

    .line 67
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "progress"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->btn:Landroid/widget/Button;

    if-nez v0, :cond_2

    const-string v0, "btn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->input:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const-string v0, "input"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method private final showStatus(Ljava/lang/String;Z)V
    .locals 4

    .line 73
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->status:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "status"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->status:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->status:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    if-eqz p2, :cond_3

    const p1, -0x26cfdb

    goto :goto_1

    :cond_3
    const p1, -0xe171c2

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Ltop/niunaijun/blackboxa/R$layout;->activity_activation:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->setContentView(I)V

    .line 29
    sget p1, Ltop/niunaijun/blackboxa/R$id;->actKeyInput:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->input:Landroid/widget/EditText;

    .line 30
    sget p1, Ltop/niunaijun/blackboxa/R$id;->actButton:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->btn:Landroid/widget/Button;

    .line 31
    sget p1, Ltop/niunaijun/blackboxa/R$id;->actStatus:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->status:Landroid/widget/TextView;

    .line 32
    sget p1, Ltop/niunaijun/blackboxa/R$id;->actProgress:I

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->progress:Landroid/widget/ProgressBar;

    .line 35
    sget-object p1, Ltop/niunaijun/blackboxa/license/LicenseClient;->INSTANCE:Ltop/niunaijun/blackboxa/license/LicenseClient;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Ltop/niunaijun/blackboxa/license/LicenseClient;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toUpperCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget v1, Ltop/niunaijun/blackboxa/R$id;->actDeviceId:I

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "M\u00e3 m\u00e1y: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget-object p1, Ltop/niunaijun/blackboxa/license/LicenseClient;->INSTANCE:Ltop/niunaijun/blackboxa/license/LicenseClient;

    invoke-virtual {p1, v0}, Ltop/niunaijun/blackboxa/license/LicenseClient;->savedKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->input:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v0, "input"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_2
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "no_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->Companion:Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;->reasonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackboxa/license/ActivationActivity;->showStatus(Ljava/lang/String;Z)V

    .line 44
    :cond_3
    iget-object p1, p0, Ltop/niunaijun/blackboxa/license/ActivationActivity;->btn:Landroid/widget/Button;

    if-nez p1, :cond_4

    const-string p1, "btn"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    new-instance p1, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/license/ActivationActivity$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackboxa/license/ActivationActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
