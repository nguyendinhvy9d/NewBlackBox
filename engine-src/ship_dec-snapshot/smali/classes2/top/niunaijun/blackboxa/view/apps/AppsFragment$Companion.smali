.class public final Ltop/niunaijun/blackboxa/view/apps/AppsFragment$Companion;
.super Ljava/lang/Object;
.source "AppsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/apps/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/apps/AppsFragment$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "newInstance",
        "Ltop/niunaijun/blackboxa/view/apps/AppsFragment;",
        "userID",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(I)Ltop/niunaijun/blackboxa/view/apps/AppsFragment;
    .locals 3

    .line 52
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;-><init>()V

    const/4 v1, 0x1

    .line 53
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
