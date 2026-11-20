.class public abstract Ltop/niunaijun/blackboxa/view/base/LoadingActivity;
.super Ltop/niunaijun/blackboxa/view/base/BaseActivity;
.source "LoadingActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/base/LoadingActivity;",
        "Ltop/niunaijun/blackboxa/view/base/BaseActivity;",
        "<init>",
        "()V",
        "loadingView",
        "Lcom/roger/catloadinglibrary/CatLoadingView;",
        "showLoading",
        "",
        "hideLoading",
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


# instance fields
.field private loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;


# direct methods
.method public static synthetic $r8$lambda$MEFqpjCFuj8wqAbS0NtQ1MD7VLE(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->showLoading$lambda$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;-><init>()V

    return-void
.end method

.method private static final showLoading$lambda$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x6f

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final hideLoading()V
    .locals 1

    .line 34
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 35
    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/roger/catloadinglibrary/CatLoadingView;->dismiss()V

    :cond_1
    return-void
.end method

.method public final showLoading()V
    .locals 5

    .line 14
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/roger/catloadinglibrary/CatLoadingView;

    invoke-direct {v0}, Lcom/roger/catloadinglibrary/CatLoadingView;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    .line 18
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    const/4 v1, 0x0

    const-string v2, "loadingView"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/roger/catloadinglibrary/CatLoadingView;->isAdded()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    sget v3, Ltop/niunaijun/blackboxa/R$color;->primary:I

    invoke-virtual {v0, v3}, Lcom/roger/catloadinglibrary/CatLoadingView;->setBackgroundColor(I)V

    .line 20
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/roger/catloadinglibrary/CatLoadingView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 22
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/roger/catloadinglibrary/CatLoadingView;->setClickCancelAble(Z)V

    .line 23
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->loadingView:Lcom/roger/catloadinglibrary/CatLoadingView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/roger/catloadinglibrary/CatLoadingView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ltop/niunaijun/blackboxa/view/base/LoadingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_6
    return-void
.end method
