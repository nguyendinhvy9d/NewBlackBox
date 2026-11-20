.class public final Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HubAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/hub/HubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "v",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "num",
        "Landroid/widget/TextView;",
        "getNum",
        "()Landroid/widget/TextView;",
        "device",
        "getDevice",
        "add",
        "getAdd",
        "menu",
        "getMenu",
        "apps",
        "Landroid/widget/LinearLayout;",
        "getApps",
        "()Landroid/widget/LinearLayout;",
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
.field private final add:Landroid/widget/TextView;

.field private final apps:Landroid/widget/LinearLayout;

.field private final device:Landroid/widget/TextView;

.field private final menu:Landroid/widget/TextView;

.field private final num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 105
    sget v0, Ltop/niunaijun/blackboxa/R$id;->card_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->num:Landroid/widget/TextView;

    .line 106
    sget v0, Ltop/niunaijun/blackboxa/R$id;->card_device:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->device:Landroid/widget/TextView;

    .line 107
    sget v0, Ltop/niunaijun/blackboxa/R$id;->card_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->add:Landroid/widget/TextView;

    .line 108
    sget v0, Ltop/niunaijun/blackboxa/R$id;->card_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->menu:Landroid/widget/TextView;

    .line 109
    sget v0, Ltop/niunaijun/blackboxa/R$id;->card_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->apps:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final getAdd()Landroid/widget/TextView;
    .locals 1

    .line 107
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->add:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getApps()Landroid/widget/LinearLayout;
    .locals 1

    .line 109
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->apps:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getDevice()Landroid/widget/TextView;
    .locals 1

    .line 106
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->device:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMenu()Landroid/widget/TextView;
    .locals 1

    .line 108
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->menu:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNum()Landroid/widget/TextView;
    .locals 1

    .line 105
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/HubAdapter$VH;->num:Landroid/widget/TextView;

    return-object v0
.end method
