.class public final Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;
.super Ljava/lang/Object;
.source "ViewSwitchBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final switchView:Lcom/google/android/material/switchmaterial/SwitchMaterial;


# direct methods
.method private constructor <init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->rootView:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 24
    iput-object p2, p0, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->switchView:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    check-cast p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 56
    new-instance v0, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;

    invoke-direct {v0, p0, p0}, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;-><init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    return-object v0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;
    .locals 2

    .line 41
    sget v0, Ltop/niunaijun/blackboxa/R$layout;->view_switch:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {p0}, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->getRoot()Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .locals 1

    .line 30
    iget-object v0, p0, Ltop/niunaijun/blackboxa/databinding/ViewSwitchBinding;->rootView:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    return-object v0
.end method
