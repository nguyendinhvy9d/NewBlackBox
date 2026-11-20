.class public final Ltop/niunaijun/blackboxa/view/main/MainActivity$setupGrid$5;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/main/MainActivity;->setupGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/main/MainActivity$setupGrid$5",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "s",
        "",
        "st",
        "",
        "c",
        "a",
        "onTextChanged",
        "b",
        "afterTextChanged",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/main/MainActivity;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackboxa/view/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/main/MainActivity$setupGrid$5;->this$0:Ltop/niunaijun/blackboxa/view/main/MainActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 123
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/main/MainActivity$setupGrid$5;->this$0:Ltop/niunaijun/blackboxa/view/main/MainActivity;

    invoke-static {p2}, Ltop/niunaijun/blackboxa/view/main/MainActivity;->access$getAdapter$p(Ltop/niunaijun/blackboxa/view/main/MainActivity;)Ltop/niunaijun/blackboxa/view/hub/HubAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    invoke-virtual {p2, p1}, Ltop/niunaijun/blackboxa/view/hub/HubAdapter;->filter(Ljava/lang/String;)V

    return-void
.end method
