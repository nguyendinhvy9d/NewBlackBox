.class public final Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;
.super Ltop/niunaijun/blackboxa/view/base/LoadingActivity;
.source "GmsManagerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGmsManagerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GmsManagerActivity.kt\ntop/niunaijun/blackboxa/view/gms/GmsManagerActivity\n+ 2 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt\n+ 3 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,147:1\n12#2,3:148\n362#3,4:151\n362#3,4:155\n362#3,4:159\n*S KotlinDebug\n*F\n+ 1 GmsManagerActivity.kt\ntop/niunaijun/blackboxa/view/gms/GmsManagerActivity\n*L\n27#1:148,3\n113#1:151,4\n127#1:155,4\n80#1:159,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;",
        "Ltop/niunaijun/blackboxa/view/base/LoadingActivity;",
        "<init>",
        "()V",
        "viewModel",
        "Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;",
        "mAdapter",
        "Lcbfg/rvadapter/RVAdapter;",
        "Ltop/niunaijun/blackboxa/bean/GmsBean;",
        "viewBinding",
        "Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;",
        "getViewBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "pendingUserId",
        "",
        "selectApkLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initViewModel",
        "initRecyclerView",
        "installGms",
        "userID",
        "checkbox",
        "Landroid/widget/Switch;",
        "uninstallGms",
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
.field public static final Companion:Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;


# instance fields
.field private mAdapter:Lcbfg/rvadapter/RVAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcbfg/rvadapter/RVAdapter<",
            "Ltop/niunaijun/blackboxa/bean/GmsBean;",
            ">;"
        }
    .end annotation
.end field

.field private pendingUserId:I

.field private final selectApkLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewBinding$delegate:Lkotlin/Lazy;

.field private viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;


# direct methods
.method public static synthetic $r8$lambda$2st6m-_OQG6YhrOmxMpA_bIyc7U(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initViewModel$lambda$1(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3FdfMsoI9klGYhKS-xg2HeJAoYk(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->selectApkLauncher$lambda$0(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8hNV_3SJDpPKfOKlM89s6MOVfwM(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->installGms$lambda$8$lambda$7(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DnVJF-87rECV-7SIJqAz4SA7DmY(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->uninstallGms$lambda$11$lambda$9(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rrj2yVyxhXy5nIW1SWcdgMUtja4(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/view/View;Ltop/niunaijun/blackboxa/bean/GmsBean;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initRecyclerView$lambda$5(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/view/View;Ltop/niunaijun/blackboxa/bean/GmsBean;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Yhk9KreKyNn7OVfnWIZVggEEWp4(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initViewModel$lambda$4$lambda$3$lambda$2(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gnNq48lmTan8eG_tTFt6bGaoIWc(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->uninstallGms$lambda$11$lambda$10(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q5lO-TJWDIcNRZmdXLoHDkVKD_U(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->installGms$lambda$8$lambda$6(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rxq9pLVdHPSipybR9R5uns239lA(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ltop/niunaijun/blackboxa/bean/GmsInstallBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initViewModel$lambda$4(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ltop/niunaijun/blackboxa/bean/GmsInstallBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->Companion:Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;-><init>()V

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 148
    new-instance v1, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$special$$inlined$inflate$1;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$special$$inlined$inflate$1;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewBinding$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda5;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;)V

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->selectApkLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private final getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;
    .locals 1

    .line 27
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;

    return-object v0
.end method

.method private final initRecyclerView()V
    .locals 4

    .line 99
    new-instance v0, Lcbfg/rvadapter/RVAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;

    invoke-direct {v2}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;-><init>()V

    check-cast v2, Lcbfg/rvadapter/RVHolderFactory;

    invoke-direct {v0, v1, v2}, Lcbfg/rvadapter/RVAdapter;-><init>(Landroid/content/Context;Lcbfg/rvadapter/RVHolderFactory;)V

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;

    move-result-object v2

    iget-object v2, v2, Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "recyclerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcbfg/rvadapter/RVAdapter;->bind(Landroidx/recyclerview/widget/RecyclerView;)Lcbfg/rvadapter/RVAdapter;

    move-result-object v0

    .line 100
    new-instance v2, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda2;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;)V

    invoke-virtual {v0, v2}, Lcbfg/rvadapter/RVAdapter;->setItemClickListener(Lkotlin/jvm/functions/Function3;)Lcbfg/rvadapter/RVAdapter;

    move-result-object v0

    .line 99
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->mAdapter:Lcbfg/rvadapter/RVAdapter;

    .line 108
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final initRecyclerView$lambda$5(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/view/View;Ltop/niunaijun/blackboxa/bean/GmsBean;I)Lkotlin/Unit;
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget p3, Ltop/niunaijun/blackboxa/R$id;->checkbox:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 102
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/bean/GmsBean;->isInstalledGms()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/bean/GmsBean;->getUserID()I

    move-result p2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->uninstallGms(ILandroid/widget/Switch;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/bean/GmsBean;->getUserID()I

    move-result p2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->installGms(ILandroid/widget/Switch;)V

    .line 107
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final initViewModel()V
    .locals 6

    .line 49
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    sget-object v2, Ltop/niunaijun/blackboxa/util/InjectionUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/InjectionUtil;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/util/InjectionUtil;->getGmsFactory()Ltop/niunaijun/blackboxa/view/gms/GmsFactory;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    .line 50
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->showLoading()V

    .line 52
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->getMInstalledLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;)V

    new-instance v5, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v5, v4}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3, v5}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 57
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->getMUpdateInstalledLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;)V

    new-instance v5, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v5, v4}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3, v5}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->getInstalledUser()V

    return-void
.end method

.method private static final initViewModel$lambda$1(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 6

    .line 53
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->hideLoading()V

    .line 54
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->mAdapter:Lcbfg/rvadapter/RVAdapter;

    if-nez p0, :cond_0

    const-string p0, "mAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcbfg/rvadapter/RVAdapter;->setItems$default(Lcbfg/rvadapter/RVAdapter;Ljava/util/List;ZZILjava/lang/Object;)Lcbfg/rvadapter/RVAdapter;

    .line 55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$4(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Ltop/niunaijun/blackboxa/bean/GmsInstallBean;)Lkotlin/Unit;
    .locals 11

    if-nez p1, :cond_0

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 62
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->mAdapter:Lcbfg/rvadapter/RVAdapter;

    const-string v1, "mAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcbfg/rvadapter/RVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 63
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_5

    .line 64
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ltop/niunaijun/blackboxa/bean/GmsBean;

    .line 65
    invoke-virtual {v7}, Ltop/niunaijun/blackboxa/bean/GmsBean;->getUserID()I

    move-result v4

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getUserID()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 66
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v7}, Ltop/niunaijun/blackboxa/bean/GmsBean;->isInstalledGms()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Ltop/niunaijun/blackboxa/bean/GmsBean;->setInstalledGms(Z)V

    .line 69
    :cond_2
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->mAdapter:Lcbfg/rvadapter/RVAdapter;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcbfg/rvadapter/RVAdapter;->replaceAt$default(Lcbfg/rvadapter/RVAdapter;ILjava/lang/Object;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->hideLoading()V

    .line 76
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 79
    :cond_6
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getUserID()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->pendingUserId:I

    .line 80
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {v3, v0, v2, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    sget v0, Ltop/niunaijun/blackboxa/R$string;->gms_manager:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0, v2, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 82
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 83
    sget p1, Ltop/niunaijun/blackboxa/R$string;->done:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 84
    const-string p1, "Choose APK File"

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda6;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;)V

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 161
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 93
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$4$lambda$3$lambda$2(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->selectApkLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->selectApkLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "*/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 90
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final installGms(ILandroid/widget/Switch;)V
    .locals 6

    .line 113
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    sget v1, Ltop/niunaijun/blackboxa/R$string;->enable_gms:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 115
    sget v1, Ltop/niunaijun/blackboxa/R$string;->enable_gms_hint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 116
    sget v1, Ltop/niunaijun/blackboxa/R$string;->done:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda7;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;I)V

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 120
    sget p1, Ltop/niunaijun/blackboxa/R$string;->cancel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p2}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda8;-><init>(Landroid/widget/Switch;)V

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 153
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method private static final installGms$lambda$8$lambda$6(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->showLoading()V

    .line 118
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    if-nez p0, :cond_0

    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->installGms(I)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final installGms$lambda$8$lambda$7(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final selectApkLauncher$lambda$0(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->showLoading()V

    .line 35
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->pendingUserId:I

    invoke-virtual {v0, p1, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->installGmsFromUri(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private final uninstallGms(ILandroid/widget/Switch;)V
    .locals 6

    .line 127
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    sget v1, Ltop/niunaijun/blackboxa/R$string;->disable_gms:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 129
    sget v1, Ltop/niunaijun/blackboxa/R$string;->disable_gms_hint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 130
    sget v1, Ltop/niunaijun/blackboxa/R$string;->done:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda3;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;I)V

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 134
    sget p1, Ltop/niunaijun/blackboxa/R$string;->cancel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$$ExternalSyntheticLambda4;-><init>(Landroid/widget/Switch;)V

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 157
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method private static final uninstallGms$lambda$11$lambda$10(Landroid/widget/Switch;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final uninstallGms$lambda$11$lambda$9(Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->showLoading()V

    .line 132
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->viewModel:Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;

    if-nez p0, :cond_0

    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->uninstallGms(I)V

    .line 133
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Ltop/niunaijun/blackboxa/view/base/LoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->setContentView(Landroid/view/View;)V

    .line 42
    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackboxa/view/base/BaseActivity;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->getViewBinding()Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;

    move-result-object p1

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ActivityGmsBinding;->toolbarLayout:Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ViewToolbarBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string v1, "toolbar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    sget v2, Ltop/niunaijun/blackboxa/R$string;->gms_manager:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ltop/niunaijun/blackboxa/view/base/BaseActivity;->initToolbar$default(Ltop/niunaijun/blackboxa/view/base/BaseActivity;Landroidx/appcompat/widget/Toolbar;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initViewModel()V

    .line 45
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->initRecyclerView()V

    return-void
.end method
