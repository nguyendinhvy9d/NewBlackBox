.class public final Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;
.super Ljava/lang/Object;
.source "ItemHubBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final hubDivider:Landroid/view/View;

.field public final hubIcon:Landroid/widget/ImageView;

.field public final hubLabel:Landroid/widget/TextView;

.field public final hubMenu:Landroid/widget/TextView;

.field public final hubSubtitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->hubDivider:Landroid/view/View;

    .line 43
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->hubIcon:Landroid/widget/ImageView;

    .line 44
    iput-object p4, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->hubLabel:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->hubMenu:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->hubSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;
    .locals 8

    .line 76
    sget v0, Ltop/niunaijun/blackboxa/R$id;->hub_divider:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    sget v0, Ltop/niunaijun/blackboxa/R$id;->hub_icon:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Ltop/niunaijun/blackboxa/R$id;->hub_label:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Ltop/niunaijun/blackboxa/R$id;->hub_menu:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Ltop/niunaijun/blackboxa/R$id;->hub_subtitle:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 106
    new-instance v1, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct/range {v1 .. v7}, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;
    .locals 2

    .line 63
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->item_hub:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ItemHubBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
