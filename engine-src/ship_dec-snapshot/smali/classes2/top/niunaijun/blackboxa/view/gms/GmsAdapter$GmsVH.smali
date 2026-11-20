.class public final Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;
.super Lcbfg/rvadapter/RVHolder;
.source "GmsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GmsVH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbfg/rvadapter/RVHolder<",
        "Ltop/niunaijun/blackboxa/bean/GmsBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;",
        "Lcbfg/rvadapter/RVHolder;",
        "Ltop/niunaijun/blackboxa/bean/GmsBean;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;",
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
.field private final binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;


# direct methods
.method public static synthetic $r8$lambda$9tq59Cagk2Zh5qEA3_AJF04trGQ(Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->setContent$lambda$0(Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcbfg/rvadapter/RVHolder;-><init>(Landroid/view/View;)V

    .line 21
    invoke-static {p1}, Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    return-void
.end method

.method private static final setContent$lambda$0(Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic setContent(Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ltop/niunaijun/blackboxa/bean/GmsBean;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->setContent(Ltop/niunaijun/blackboxa/bean/GmsBean;ZLjava/lang/Object;)V

    return-void
.end method

.method public setContent(Ltop/niunaijun/blackboxa/bean/GmsBean;ZLjava/lang/Object;)V
    .locals 0

    const-string p2, "item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsBean;->getUserName()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;->checkbox:Landroid/widget/Switch;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/GmsBean;->isInstalledGms()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 25
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemGmsBinding;->checkbox:Landroid/widget/Switch;

    new-instance p2, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
