.class public final Ltop/niunaijun/blackboxa/view/setting/SettingActivity;
.super Ltop/niunaijun/blackboxa/view/base/BaseActivity;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/view/setting/SettingActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingActivity.kt\ntop/niunaijun/blackboxa/view/setting/SettingActivity\n+ 2 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt\n*L\n1#1,32:1\n12#2,3:33\n*S KotlinDebug\n*F\n+ 1 SettingActivity.kt\ntop/niunaijun/blackboxa/view/setting/SettingActivity\n*L\n13#1:33,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/setting/SettingActivity;",
        "Ltop/niunaijun/blackboxa/view/base/BaseActivity;",
        "<init>",
        "()V",
        "viewBinding",
        "Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;",
        "getViewBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public static final Companion:Ltop/niunaijun/blackboxa/view/setting/SettingActivity$Companion;


# instance fields
.field private final viewBinding$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/niunaijun/blackboxa/view/setting/SettingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->Companion:Ltop/niunaijun/blackboxa/view/setting/SettingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;-><init>()V

    .line 13
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 33
    new-instance v1, Ltop/niunaijun/blackboxa/view/setting/SettingActivity$special$$inlined$inflate$1;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity$special$$inlined$inflate$1;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 13
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->viewBinding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;
    .locals 1

    .line 13
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 16
    invoke-super {p0, p1}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->setContentView(Landroid/view/View;)V

    .line 18
    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackboxa/view/base/BaseActivity;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    move-result-object p1

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string v1, "toolbar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    sget v2, Ltop/niunaijun/blackboxa/R$string;->setting:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->initToolbar$default(Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroidx/appcompat/widget/Toolbar;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 20
    sget v0, Ltop/niunaijun/blackboxa/R$id;->fragment:I

    new-instance v1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;

    invoke-direct {v1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
