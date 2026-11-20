.class public final Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;
.super Ltop/niunaijun/blackboxa/view/base/BaseViewModel;
.source "FakeLocationViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fJ\"\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;",
        "Ltop/niunaijun/blackboxa/view/base/BaseViewModel;",
        "mRepo",
        "Ltop/niunaijun/blackboxa/data/FakeLocationRepository;",
        "<init>",
        "(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V",
        "appsLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
        "getAppsLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getInstallAppList",
        "",
        "userID",
        "",
        "setPattern",
        "userId",
        "pkg",
        "",
        "pattern",
        "setLocation",
        "location",
        "Lio/vanta/entity/location/BLocation;",
        "Ltop/niunaijun/blackbox/entity/location/BLocation;",
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


# instance fields
.field private final appsLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRepo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V
    .locals 1

    const-string v0, "mRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->mRepo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->appsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getMRepo$p(Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;)Ltop/niunaijun/blackboxa/data/FakeLocationRepository;
    .locals 0

    .line 10
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->mRepo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    return-object p0
.end method


# virtual methods
.method public final getAppsLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->appsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getInstallAppList(I)V
    .locals 2

    .line 16
    new-instance v0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$getInstallAppList$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$getInstallAppList$1;-><init>(Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V
    .locals 7

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$setLocation$1;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$setLocation$1;-><init>(Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;ILjava/lang/String;Lio/vanta/entity/location/BLocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setPattern(ILjava/lang/String;I)V
    .locals 7

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v1, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$setPattern$1;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel$setPattern$1;-><init>(Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;ILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
