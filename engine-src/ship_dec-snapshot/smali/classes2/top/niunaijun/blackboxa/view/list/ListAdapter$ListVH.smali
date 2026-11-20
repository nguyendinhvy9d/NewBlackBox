.class public final Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;
.super Lcbfg/rvadapter/RVHolder;
.source "ListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/list/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListVH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbfg/rvadapter/RVHolder<",
        "Ltop/niunaijun/blackboxa/bean/InstalledAppBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;",
        "Lcbfg/rvadapter/RVHolder;",
        "Ltop/niunaijun/blackboxa/bean/InstalledAppBean;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;",
        "getBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;",
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
.field private final binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcbfg/rvadapter/RVHolder;-><init>(Landroid/view/View;)V

    .line 21
    invoke-static {p1}, Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;
    .locals 1

    .line 21
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    return-object v0
.end method

.method public bridge synthetic setContent(Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->setContent(Ltop/niunaijun/blackboxa/bean/InstalledAppBean;ZLjava/lang/Object;)V

    return-void
.end method

.method public setContent(Ltop/niunaijun/blackboxa/bean/InstalledAppBean;ZLjava/lang/Object;)V
    .locals 0

    const-string p2, "item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;->getName()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;->packageName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;->getPackageName()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/list/ListAdapter$ListVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemPackageBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;->isInstall()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    return-void
.end method
