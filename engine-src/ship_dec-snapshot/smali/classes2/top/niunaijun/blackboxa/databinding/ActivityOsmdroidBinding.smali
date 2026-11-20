.class public final Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
.super Ljava/lang/Object;
.source "ActivityOsmdroidBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final map:Lorg/osmdroid/views/MapView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/osmdroid/views/MapView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
    .locals 2

    .line 57
    sget v0, Ltop/niunaijun/blackboxa/R$id;->map:I

    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/osmdroid/views/MapView;)V

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
    .locals 2

    .line 44
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->activity_osmdroid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 33
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
