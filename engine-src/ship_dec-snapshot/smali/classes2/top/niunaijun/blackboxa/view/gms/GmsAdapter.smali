.class public final Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;
.super Lcbfg/rvadapter/RVHolderFactory;
.source "GmsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;",
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
        "GmsVH",
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
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcbfg/rvadapter/RVHolderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;ILjava/lang/Object;)Lcbfg/rvadapter/RVHolder;
    .locals 0
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

    .line 15
    new-instance p2, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;

    sget p3, Ltop/niunaijun/blackboxa/R$layout;->item_gms:I

    invoke-virtual {p0, p3, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ltop/niunaijun/blackboxa/view/gms/GmsAdapter$GmsVH;-><init>(Landroid/view/View;)V

    check-cast p2, Lcbfg/rvadapter/RVHolder;

    return-object p2
.end method
