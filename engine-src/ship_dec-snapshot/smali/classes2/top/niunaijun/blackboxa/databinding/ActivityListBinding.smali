.class public final Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;
.super Ljava/lang/Object;
.source "ActivityListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final searchView:Lcom/ferfalk/simplesearchview/SimpleSearchView;

.field public final stateView:Lcom/github/nukc/stateview/StateView;

.field public final toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/github/nukc/stateview/StateView;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->searchView:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 42
    iput-object p4, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->stateView:Lcom/github/nukc/stateview/StateView;

    .line 43
    iput-object p5, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;
    .locals 8

    .line 73
    sget v0, Ltop/niunaijun/blackboxa/R$id;->recyclerView:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Ltop/niunaijun/blackboxa/R$id;->searchView:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Ltop/niunaijun/blackboxa/R$id;->stateView:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/nukc/stateview/StateView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Ltop/niunaijun/blackboxa/R$id;->toolbar_layout:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v1}, Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    move-result-object v7

    .line 98
    new-instance v2, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/github/nukc/stateview/StateView;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V

    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;
    .locals 2

    .line 60
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->activity_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ActivityListBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
