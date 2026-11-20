.class public final Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;
.super Ljava/lang/Object;
.source "AppsAdapter.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
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


# instance fields
.field final synthetic $itemView:Landroid/view/View;

.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;->$itemView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->access$isAttached$p(Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;->$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
