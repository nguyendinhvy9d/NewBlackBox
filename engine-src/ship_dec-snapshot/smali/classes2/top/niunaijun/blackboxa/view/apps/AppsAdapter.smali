.class public final Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;
.super Lcbfg/rvadapter/RVHolderFactory;
.source "AppsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;,
        Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$Companion;,
        Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u00020\u0001:\u0003\u000c\r\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;",
        "Lcbfg/rvadapter/RVHolderFactory;",
        "<init>",
        "()V",
        "createViewHolder",
        "Lcbfg/rvadapter/RVHolder;",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "item",
        "Companion",
        "AppsVH",
        "FallbackAppsVH",
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
.field public static final Companion:Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$Companion;

.field private static final DEFAULT_ICON_COLOR:I

.field private static final MAX_ICON_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AppsAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->Companion:Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$Companion;

    .line 28
    const-string v0, "#CCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->DEFAULT_ICON_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcbfg/rvadapter/RVHolderFactory;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ICON_COLOR$cp()I
    .locals 1

    .line 23
    sget v0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->DEFAULT_ICON_COLOR:I

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;ILjava/lang/Object;)Lcbfg/rvadapter/RVHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcbfg/rvadapter/RVHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_0
    new-instance p2, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;

    sget p3, Ltop/niunaijun/blackboxa/R$layout;->item_app:I

    invoke-virtual {p0, p3, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;-><init>(Landroid/view/View;)V

    check-cast p2, Lcbfg/rvadapter/RVHolder;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error creating ViewHolder: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppsAdapter"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p2, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;

    sget p3, Ltop/niunaijun/blackboxa/R$layout;->item_app:I

    invoke-virtual {p0, p3, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;-><init>(Landroid/view/View;)V

    check-cast p2, Lcbfg/rvadapter/RVHolder;

    return-object p2
.end method
