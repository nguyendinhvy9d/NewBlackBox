.class public final Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$initSearchView$1;
.super Ljava/lang/Object;
.source "FakeManagerActivity.kt"

# interfaces
.implements Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/fake/FakeManagerActivity$initSearchView$1",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;",
        "onQueryTextChange",
        "",
        "newText",
        "",
        "onQueryTextCleared",
        "onQueryTextSubmit",
        "query",
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
.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$initSearchView$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "newText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$initSearchView$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;

    invoke-static {v0, p1}, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;->access$filterApp(Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextCleared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
