.class public final Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;
.super Ltop/niunaijun/blackboxa/view/base/BaseViewModel;
.source "AppsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0017J\u0016\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0017J\u0016\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0017J\u0016\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0017J\u0016\u0010 \u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0017J\u001c\u0010!\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00172\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000bR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000b\u00a8\u0006#"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;",
        "Ltop/niunaijun/blackboxa/view/base/BaseViewModel;",
        "repo",
        "Ltop/niunaijun/blackboxa/data/AppsRepository;",
        "<init>",
        "(Ltop/niunaijun/blackboxa/data/AppsRepository;)V",
        "appsLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        "getAppsLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "resultLiveData",
        "",
        "getResultLiveData",
        "launchLiveData",
        "",
        "getLaunchLiveData",
        "updateSortLiveData",
        "getUpdateSortLiveData",
        "getInstalledApps",
        "",
        "userId",
        "",
        "getInstalledAppsWithRetry",
        "maxRetries",
        "install",
        "source",
        "userID",
        "unInstall",
        "packageName",
        "clearApkData",
        "launchApk",
        "updateApkOrder",
        "dataList",
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
            "Ltop/niunaijun/blackboxa/bean/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final launchLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final repo:Ltop/niunaijun/blackboxa/data/AppsRepository;

.field private final resultLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final updateSortLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackboxa/data/AppsRepository;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->repo:Ltop/niunaijun/blackboxa/data/AppsRepository;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->appsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->resultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->updateSortLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getInstalledAppsWithRetry$attemptLoad(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/jvm/internal/Ref$IntRef;I)V
    .locals 0

    .line 10
    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->getInstalledAppsWithRetry$attemptLoad(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/jvm/internal/Ref$IntRef;I)V

    return-void
.end method

.method public static final synthetic access$getRepo$p(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;)Ltop/niunaijun/blackboxa/data/AppsRepository;
    .locals 0

    .line 10
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->repo:Ltop/niunaijun/blackboxa/data/AppsRepository;

    return-object p0
.end method

.method private static final getInstalledAppsWithRetry$attemptLoad(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/jvm/internal/Ref$IntRef;I)V
    .locals 6

    .line 32
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$getInstalledAppsWithRetry$attemptLoad$1;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$getInstalledAppsWithRetry$attemptLoad$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic getInstalledAppsWithRetry$default(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->getInstalledAppsWithRetry(II)V

    return-void
.end method


# virtual methods
.method public final clearApkData(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$clearApkData$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$clearApkData$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getAppsLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/AppInfo;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->appsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getInstalledApps(I)V
    .locals 2

    .line 22
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$getInstalledApps$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$getInstalledApps$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getInstalledAppsWithRetry(II)V
    .locals 1

    .line 29
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 49
    invoke-static {p0, p1, v0, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->getInstalledAppsWithRetry$attemptLoad(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILkotlin/jvm/internal/Ref$IntRef;I)V

    return-void
.end method

.method public final getLaunchLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResultLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->resultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUpdateSortLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->updateSortLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final install(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$install$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$install$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final launchApk(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final unInstall(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$unInstall$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$unInstall$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final updateApkOrder(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$updateApkOrder$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$updateApkOrder$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;ILjava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
