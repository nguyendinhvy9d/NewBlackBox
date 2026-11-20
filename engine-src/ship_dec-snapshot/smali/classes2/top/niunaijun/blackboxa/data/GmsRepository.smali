.class public final Ltop/niunaijun/blackboxa/data/GmsRepository;
.super Ljava/lang/Object;
.source "GmsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGmsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GmsRepository.kt\ntop/niunaijun/blackboxa/data/GmsRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1863#2,2:81\n*S KotlinDebug\n*F\n+ 1 GmsRepository.kt\ntop/niunaijun/blackboxa/data/GmsRepository\n*L\n18#1:81,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007J\u001c\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0007J\u001c\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0007J$\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/data/GmsRepository;",
        "",
        "<init>",
        "()V",
        "getGmsInstalledList",
        "",
        "mInstalledLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Ltop/niunaijun/blackboxa/bean/GmsBean;",
        "installGms",
        "userID",
        "",
        "mUpdateInstalledLiveData",
        "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGmsInstalledList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/GmsBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "mInstalledLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getUsers()Ljava/util/List;

    move-result-object v1

    const-string v2, "getUsers(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/user/BUserInfo;

    .line 19
    iget v2, v2, Lio/vanta/core/system/user/BUserInfo;->id:I

    .line 21
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMRemarkSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Remark"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "User "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 22
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v4

    invoke-virtual {v4, v2}, Ltop/niunaijun/blackbox/BlackBoxCore;->isInstallGms(I)Z

    move-result v4

    .line 23
    new-instance v5, Ltop/niunaijun/blackboxa/bean/GmsBean;

    invoke-direct {v5, v2, v3, v4}, Ltop/niunaijun/blackboxa/bean/GmsBean;-><init>(ILjava/lang/String;Z)V

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final installGms(ILandroidx/lifecycle/MutableLiveData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mUpdateInstalledLiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->installGms(I)Lio/vanta/entity/pm/InstallResult;

    move-result-object v0

    .line 36
    iget-boolean v1, v0, Lio/vanta/entity/pm/InstallResult;->success:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 37
    sget v1, Ltop/niunaijun/blackboxa/R$string;->install_success:I

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    sget v1, Ltop/niunaijun/blackboxa/R$string;->install_fail:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v0, Lio/vanta/entity/pm/InstallResult;->msg:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    new-instance v2, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;

    iget-boolean v0, v0, Lio/vanta/entity/pm/InstallResult;->success:Z

    invoke-direct {v2, p1, v0, v1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;-><init>(IZLjava/lang/String;)V

    .line 43
    invoke-virtual {p2, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final installGmsFromUri(Landroid/net/Uri;ILandroidx/lifecycle/MutableLiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mUpdateInstalledLiveData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->installPackageAsUser(Landroid/net/Uri;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    .line 72
    iget-boolean v0, p1, Lio/vanta/entity/pm/InstallResult;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Ltop/niunaijun/blackboxa/R$string;->install_success:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    sget v0, Ltop/niunaijun/blackboxa/R$string;->install_fail:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lio/vanta/entity/pm/InstallResult;->msg:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v1, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;

    iget-boolean p1, p1, Lio/vanta/entity/pm/InstallResult;->success:Z

    invoke-direct {v1, p2, p1, v0}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;-><init>(IZLjava/lang/String;)V

    .line 78
    invoke-virtual {p3, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final uninstallGms(ILandroidx/lifecycle/MutableLiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltop/niunaijun/blackboxa/bean/GmsInstallBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mUpdateInstalledLiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->isInstallGms(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallGms(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    sget v2, Ltop/niunaijun/blackboxa/R$string;->uninstall_success:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v2, v1}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 58
    :cond_1
    sget v2, Ltop/niunaijun/blackboxa/R$string;->uninstall_fail:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v2, v1}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_1
    new-instance v2, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;

    invoke-direct {v2, p1, v0, v1}, Ltop/niunaijun/blackboxa/bean/GmsInstallBean;-><init>(IZLjava/lang/String;)V

    .line 63
    invoke-virtual {p2, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
