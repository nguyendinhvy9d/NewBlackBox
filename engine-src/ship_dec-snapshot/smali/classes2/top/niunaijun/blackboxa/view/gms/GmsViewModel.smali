.class public final Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;
.super Ltop/niunaijun/blackboxa/view/base/BaseViewModel;
.source "GmsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;",
        "Ltop/niunaijun/blackboxa/view/base/BaseViewModel;",
        "mRepo",
        "Ltop/niunaijun/blackboxa/data/GmsRepository;",
        "<init>",
        "(Ltop/niunaijun/blackboxa/data/GmsRepository;)V",
        "mInstalledLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Ltop/niunaijun/blackboxa/bean/GmsBean;",
        "getMInstalledLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mUpdateInstalledLiveData",
        "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
        "getMUpdateInstalledLiveData",
        "getInstalledUser",
        "",
        "installGms",
        "userID",
        "",
        "uninstallGms",
        "installGmsFromUri",
        "uri",
        "Landroid/net/Uri;",
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
.field private final mInstalledLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/GmsBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRepo:Ltop/niunaijun/blackboxa/data/GmsRepository;

.field private final mUpdateInstalledLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackboxa/data/GmsRepository;)V
    .locals 1

    const-string v0, "mRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mRepo:Ltop/niunaijun/blackboxa/data/GmsRepository;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mInstalledLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mUpdateInstalledLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getMRepo$p(Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;)Ltop/niunaijun/blackboxa/data/GmsRepository;
    .locals 0

    .line 10
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mRepo:Ltop/niunaijun/blackboxa/data/GmsRepository;

    return-object p0
.end method


# virtual methods
.method public final getInstalledUser()V
    .locals 2

    .line 17
    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$getInstalledUser$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$getInstalledUser$1;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getMInstalledLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/GmsBean;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mInstalledLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMUpdateInstalledLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->mUpdateInstalledLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final installGms(I)V
    .locals 2

    .line 23
    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$installGms$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$installGms$1;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final installGmsFromUri(Landroid/net/Uri;I)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$installGmsFromUri$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$installGmsFromUri$1;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final uninstallGms(I)V
    .locals 2

    .line 29
    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$uninstallGms$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel$uninstallGms$1;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/gms/GmsViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
