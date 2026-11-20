.class public final Lcom/imuxuan/floatingview/FloatingView$Companion;
.super Ljava/lang/Object;
.source "FloatingView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imuxuan/floatingview/FloatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/imuxuan/floatingview/FloatingView$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/imuxuan/floatingview/FloatingView;",
        "get",
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
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/imuxuan/floatingview/FloatingView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/imuxuan/floatingview/FloatingView;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 38
    # getter for: Lcom/imuxuan/floatingview/FloatingView;->instance:Lcom/imuxuan/floatingview/FloatingView;
    invoke-static {}, Lcom/imuxuan/floatingview/FloatingView;->access$getInstance$cp()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v0

    return-object v0
.end method
