.class public final Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
.super Ljava/lang/Object;
.source "ItemAppBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

.field public final icon:Landroid/widget/ImageView;

.field public final name:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/othershe/cornerlabelview/CornerLabelView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    .line 37
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->name:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
    .locals 4

    .line 68
    sget v0, Ltop/niunaijun/blackboxa/R$id;->cornerLabel:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/othershe/cornerlabelview/CornerLabelView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Ltop/niunaijun/blackboxa/R$id;->icon:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Ltop/niunaijun/blackboxa/R$id;->name:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;-><init>(Landroid/widget/LinearLayout;Lcom/othershe/cornerlabelview/CornerLabelView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
    .locals 2

    .line 55
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->item_app:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
