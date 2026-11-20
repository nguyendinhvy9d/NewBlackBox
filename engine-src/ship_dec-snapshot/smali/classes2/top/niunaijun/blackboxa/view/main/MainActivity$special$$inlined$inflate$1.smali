.class public final Ltop/niunaijun/blackboxa/view/main/MainActivity$special$$inlined$inflate$1;
.super Ljava/lang/Object;
.source "ViewBindingEx.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/main/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewBindingEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$1\n+ 2 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt\n*L\n1#1,37:1\n26#2,2:38\n*S KotlinDebug\n*F\n+ 1 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt$inflate$1\n*L\n13#1:38,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_inflate:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/main/MainActivity$special$$inlined$inflate$1;->$this_inflate:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/viewbinding/ViewBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/MainActivity$special$$inlined$inflate$1;->$this_inflate:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "getLayoutInflater(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v1, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/LayoutInflater;

    aput-object v4, v2, v3

    const-string v3, "inflate"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 39
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ltop/niunaijun/blackboxa/databinding/ActivityMainBinding;

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type top.niunaijun.blackboxa.databinding.ActivityMainBinding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/main/MainActivity$special$$inlined$inflate$1;->invoke()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method
