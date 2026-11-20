.class public final Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;
.super Lcbfg/rvadapter/RVHolder;
.source "AppsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAppsVH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbfg/rvadapter/RVHolder<",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;",
        "Lcbfg/rvadapter/RVHolder;",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;",
        "getBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;",
        "setContent",
        "",
        "item",
        "isSelected",
        "",
        "payload",
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
.field private final binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcbfg/rvadapter/RVHolder;-><init>(Landroid/view/View;)V

    .line 153
    invoke-static {p1}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
    .locals 1

    .line 153
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    return-object v0
.end method

.method public bridge synthetic setContent(Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Ltop/niunaijun/blackboxa/bean/AppInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->setContent(Ltop/niunaijun/blackboxa/bean/AppInfo;ZLjava/lang/Object;)V

    return-void
.end method

.method public setContent(Ltop/niunaijun/blackboxa/bean/AppInfo;ZLjava/lang/Object;)V
    .locals 1

    const-string p2, "item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :try_start_0
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->access$getDEFAULT_ICON_COLOR$cp()I

    move-result v0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const-string p1, "Unknown App"

    goto :goto_0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$FallbackAppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in fallback ViewHolder: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
