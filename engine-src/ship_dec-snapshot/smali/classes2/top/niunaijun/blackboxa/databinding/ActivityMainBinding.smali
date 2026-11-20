.class public final Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyView:Landroid/widget/TextView;

.field public final fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final searchInput:Landroid/widget/EditText;

.field public final toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EditText;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->emptyView:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 46
    iput-object p4, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object p5, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->searchInput:Landroid/widget/EditText;

    .line 48
    iput-object p6, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;
    .locals 9

    .line 78
    sget v0, Ltop/niunaijun/blackboxa/R$id;->emptyView:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Ltop/niunaijun/blackboxa/R$id;->fab:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Ltop/niunaijun/blackboxa/R$id;->recyclerView:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Ltop/niunaijun/blackboxa/R$id;->searchInput:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Ltop/niunaijun/blackboxa/R$id;->toolbar_layout:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v1}, Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    move-result-object v8

    .line 109
    new-instance v2, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EditText;Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;)V

    return-object v2

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;
    .locals 2

    .line 65
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
