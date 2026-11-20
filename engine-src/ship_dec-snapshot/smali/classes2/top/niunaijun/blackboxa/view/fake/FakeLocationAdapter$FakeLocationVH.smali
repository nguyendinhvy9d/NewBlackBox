.class public final Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;
.super Lcbfg/rvadapter/RVHolder;
.source "FakeLocationAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FakeLocationVH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbfg/rvadapter/RVHolder<",
        "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;",
        "Lcbfg/rvadapter/RVHolder;",
        "Ltop/niunaijun/blackboxa/bean/FakeLocationBean;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;",
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
.field private final binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcbfg/rvadapter/RVHolder;-><init>(Landroid/view/View;)V

    .line 23
    invoke-static {p1}, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    return-void
.end method


# virtual methods
.method public bridge synthetic setContent(Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->setContent(Ltop/niunaijun/blackboxa/bean/FakeLocationBean;ZLjava/lang/Object;)V

    return-void
.end method

.method public setContent(Ltop/niunaijun/blackboxa/bean/FakeLocationBean;ZLjava/lang/Object;)V
    .locals 3

    const-string p2, "item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getName()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getFakeLocation()Lio/vanta/entity/location/BLocation;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getFakeLocationPattern()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->fakeLocation:Landroid/widget/TextView;

    .line 32
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getFakeLocation()Lio/vanta/entity/location/BLocation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/FakeLocationBean;->getFakeLocation()Lio/vanta/entity/location/BLocation;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/vanta/entity/location/BLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%f, %f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->fakeLocation:Landroid/widget/TextView;

    sget p2, Ltop/niunaijun/blackboxa/R$string;->real_location:I

    new-array v0, p3, [Ljava/lang/String;

    invoke-static {p2, v0}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_1
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationAdapter$FakeLocationVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemFakeBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    invoke-virtual {p1, p3}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    return-void
.end method
