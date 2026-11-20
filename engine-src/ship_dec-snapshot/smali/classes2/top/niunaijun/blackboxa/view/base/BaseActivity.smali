.class public Ltop/niunaijun/blackboxa/view/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J4\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\rH\u0004J\u0008\u0010\u000e\u001a\u00020\tH\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/base/BaseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "initToolbar",
        "",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "title",
        "",
        "showBack",
        "",
        "onBack",
        "Lkotlin/Function0;",
        "currentUserID",
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
.method public static synthetic $r8$lambda$JROkd8fDTA3DntvgCtpUwvMgEG0(Lkotlin/jvm/functions/Function0;Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->initToolbar$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic initToolbar$default(Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroidx/appcompat/widget/Toolbar;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 9
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->initToolbar(Landroidx/appcompat/widget/Toolbar;IZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initToolbar"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final initToolbar$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    :cond_0
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected final currentUserID()I
    .locals 3

    .line 26
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final initToolbar(Landroidx/appcompat/widget/Toolbar;IZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/Toolbar;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 11
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    new-instance p2, Ltop/niunaijun/blackboxa/view/base/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4, p0}, Ltop/niunaijun/blackboxa/view/base/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Ltop/niunaijun/blackboxa/view/base/BaseActivity;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
