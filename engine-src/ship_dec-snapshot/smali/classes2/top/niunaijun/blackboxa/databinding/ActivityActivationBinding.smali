.class public final Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;
.super Ljava/lang/Object;
.source "ActivityActivationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actButton:Landroid/widget/Button;

.field public final actDeviceId:Landroid/widget/TextView;

.field public final actKeyInput:Landroid/widget/EditText;

.field public final actProgress:Landroid/widget/ProgressBar;

.field public final actStatus:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->rootView:Landroid/widget/ScrollView;

    .line 44
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->actButton:Landroid/widget/Button;

    .line 45
    iput-object p3, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->actDeviceId:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->actKeyInput:Landroid/widget/EditText;

    .line 47
    iput-object p5, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->actProgress:Landroid/widget/ProgressBar;

    .line 48
    iput-object p6, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->actStatus:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;
    .locals 9

    .line 78
    sget v0, Ltop/niunaijun/blackboxa/R$id;->actButton:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Ltop/niunaijun/blackboxa/R$id;->actDeviceId:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Ltop/niunaijun/blackboxa/R$id;->actKeyInput:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Ltop/niunaijun/blackboxa/R$id;->actProgress:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Ltop/niunaijun/blackboxa/R$id;->actStatus:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 108
    new-instance v2, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    invoke-direct/range {v2 .. v8}, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;
    .locals 2

    .line 65
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->activity_activation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ActivityActivationBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
