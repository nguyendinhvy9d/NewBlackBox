.class public final Ltop/niunaijun/blackboxa/view/hub/HubAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HubAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u00e7\u0001\u00126\u0010\u0003\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0004\u0012K\u0010\u000c\u001aG\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u000b0\r\u0012!\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u00126\u0010\u0012\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u000b0\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u001a\u001a\u00020\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001cJ\u000e\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\tJ\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0008\u0010$\u001a\u00020\u0005H\u0016J\u0018\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\u0005H\u0016R>\u0010\u0003\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000RS\u0010\u000c\u001aG\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u000b0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u000b0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010\u0012\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u000b0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/hub/HubAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;",
        "onLaunch",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "userId",
        "",
        "packageName",
        "",
        "onAppMenu",
        "Lkotlin/Function3;",
        "Landroid/view/View;",
        "anchor",
        "onAddApp",
        "Lkotlin/Function1;",
        "onCardMenu",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "all",
        "",
        "Ltop/niunaijun/blackboxa/view/hub/OCard;",
        "shown",
        "query",
        "submit",
        "list",
        "",
        "filter",
        "text",
        "applyFilter",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "getItemCount",
        "onBindViewHolder",
        "holder",
        "position",
        "VH",
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
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/OCard;",
            ">;"
        }
    .end annotation
.end field

.field private final onAddApp:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onAppMenu:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onCardMenu:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onLaunch:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private final shown:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/OCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0j5METYeqY6C32uquM-vqEbp4sU(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onBindViewHolder$lambda$3(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DGMIIdvDt017Gsh9GYYJ10lsjIQ(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onBindViewHolder$lambda$1(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAX9fkkLPih8Hom6RkvVu0ccCXg(Ltop/niunaijun/blackboxa/view/hub/AppEntry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->applyFilter$lambda$0(Ltop/niunaijun/blackboxa/view/hub/AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gQDT3_ahqV3CdODyvTc0WGN8WvQ(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onBindViewHolder$lambda$4(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xoEQqxPjzFY9kZFo-8wK-RYdMrA(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onBindViewHolder$lambda$2(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onLaunch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAppMenu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAddApp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCardMenu"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onLaunch:Lkotlin/jvm/functions/Function2;

    .line 36
    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onAppMenu:Lkotlin/jvm/functions/Function3;

    .line 37
    iput-object p3, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onAddApp:Lkotlin/jvm/functions/Function1;

    .line 38
    iput-object p4, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onCardMenu:Lkotlin/jvm/functions/Function2;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->all:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    .line 43
    const-string p1, ""

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->query:Ljava/lang/String;

    return-void
.end method

.method private final applyFilter()V
    .locals 15

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->query:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->all:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackboxa/view/hub/OCard;

    .line 57
    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result v2

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getRemark()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getDevice()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getApps()Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    const-string v5, " "

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v12, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda4;-><init>()V

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u00f4"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->query:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final applyFilter$lambda$0(Ltop/niunaijun/blackboxa/view/hub/AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$1(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onAddApp:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$2(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onCardMenu:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getMenu()Landroid/widget/TextView;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$3(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onLaunch:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$4(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;Landroid/view/View;)Z
    .locals 0

    .line 98
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onAppMenu:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final filter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->query:Ljava/lang/String;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->applyFilter()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onBindViewHolder(Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->shown:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/niunaijun/blackboxa/view/hub/OCard;

    .line 73
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getNum()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getRemark()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getDevice()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getDevice()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "m\u00e1y m\u1eb7c \u0111\u1ecbnh"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getGmsOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "  \u00b7  GMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_3
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getDevice()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getAdd()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getMenu()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 84
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    const-string v0, "(\u00f4 tr\u1ed1ng \u2014 b\u1ea5m + \u0111\u1ec3 th\u00eam app)"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000

    .line 88
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0x655f5a

    .line 89
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    .line 90
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 93
    :cond_4
    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/hub/OCard;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackboxa/view/hub/AppEntry;

    .line 94
    sget v3, Ltop/niunaijun/blackboxa/R$layout;->item_o_app:I

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 95
    sget v4, Ltop/niunaijun/blackboxa/R$id;->app_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget v4, Ltop/niunaijun/blackboxa/R$id;->app_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/view/hub/AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v4, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2, v2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda2;-><init>(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v4, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p2, v2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$$ExternalSyntheticLambda3;-><init>(Ltop/niunaijun/blackboxa/view/hub/HubAdapter;Ltop/niunaijun/blackboxa/view/hub/OCard;Ltop/niunaijun/blackboxa/view/hub/AppEntry;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->getApps()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Ltop/niunaijun/blackboxa/R$layout;->item_o_card:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final submit(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/OCard;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->all:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->applyFilter()V

    return-void
.end method
