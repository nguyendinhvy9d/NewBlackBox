.class public final Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;
.super Ljava/lang/Object;
.source "ActivitySettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final fragment:Landroidx/fragment/app/FragmentContainerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->fragment:Landroidx/fragment/app/FragmentContainerView;

    .line 32
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;
    .locals 3

    .line 62
    sget v0, Ltop/niunaijun/blackboxa/R$id;->fragment:I

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v1, :cond_0

    .line 68
    sget v0, Ltop/niunaijun/blackboxa/R$id;->toolbar_layout:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v2}, Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    move-result-object v0

    .line 75
    new-instance v2, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v2, p0, v1, v0}, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V

    return-object v2

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;
    .locals 2

    .line 49
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->activity_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ActivitySettingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
