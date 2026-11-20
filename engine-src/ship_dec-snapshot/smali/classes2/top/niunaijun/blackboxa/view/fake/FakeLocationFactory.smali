.class public final Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "FakeLocationFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\u0006\u001a\u0002H\u0007\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\nH\u0016\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "repo",
        "Ltop/niunaijun/blackboxa/data/FakeLocationRepository;",
        "<init>",
        "(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final repo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 8
    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;->repo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p1, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;->repo:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    invoke-direct {p1, v0}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationViewModel;-><init>(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
