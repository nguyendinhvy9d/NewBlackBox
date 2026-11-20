.class public final Ltop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3;
.super Ljava/lang/Object;
.source "ViewBindingEx.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/util/ViewBindingExKt;->inflate(Landroid/app/Dialog;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewBindingEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3\n+ 2 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt\n*L\n1#1,37:1\n26#2,2:38\n*S KotlinDebug\n*F\n+ 1 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3\n*L\n21#1:38,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $this_inflate:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3;->$this_inflate:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/viewbinding/ViewBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Ltop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3;->$this_inflate:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "getLayoutInflater(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v1, 0x4

    .line 38
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/viewbinding/ViewBinding;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/LayoutInflater;

    aput-object v6, v4, v5

    const-string v5, "inflate"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    .line 39
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$3;->invoke()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method
