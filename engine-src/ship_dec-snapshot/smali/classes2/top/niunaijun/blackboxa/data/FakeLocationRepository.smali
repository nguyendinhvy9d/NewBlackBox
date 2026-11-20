.class public final Ltop/niunaijun/blackboxa/data/FakeLocationRepository;
.super Ljava/lang/Object;
.source "FakeLocationRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000bJ\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J \u0010\u000f\u001a\n\u0018\u00010\u0010j\u0004\u0018\u0001`\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J\"\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\n\u0010\u0013\u001a\u00060\u0010j\u0002`\u0011J\"\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u000b2\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/data/FakeLocationRepository;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "setPattern",
        "",
        "userId",
        "",
        "pkg",
        "pattern",
        "getPattern",
        "getLocation",
        "Lio/vanta/entity/location/BLocation;",
        "Ltop/niunaijun/blackbox/entity/location/BLocation;",
        "setLocation",
        "location",
        "getInstalledAppList",
        "userID",
        "appsFakeLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
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
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "FakeLocationRepository"

    iput-object v0, p0, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;
    .locals 1

    .line 24
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BLocationManager;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object p1

    return-object p1
.end method

.method private final getPattern(ILjava/lang/String;)I
    .locals 1

    .line 20
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/fake/frameworks/BLocationManager;->getPattern(ILjava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getInstalledAppList(ILandroidx/lifecycle/MutableLiveData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "appsFakeLiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 37
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    const-string v2, "getInstalledApplications(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 48
    new-instance v3, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;

    .line 50
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v4, "loadIcon(...)"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "packageName"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v8}, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;->getPattern(ILjava/lang/String;)I

    move-result v8

    .line 54
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object v9

    move v4, p1

    .line 48
    invoke-direct/range {v3 .. v9}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILio/vanta/entity/location/BLocation;)V

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;->TAG:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V
    .locals 1

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/fake/frameworks/BLocationManager;->setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V

    return-void
.end method

.method public final setPattern(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/fake/frameworks/BLocationManager;->setPattern(ILjava/lang/String;I)V

    return-void
.end method
