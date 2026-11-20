.class public final Lcom/imuxuan/floatingview/FloatingView;
.super Ljava/lang/Object;
.source "FloatingView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imuxuan/floatingview/FloatingView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/imuxuan/floatingview/FloatingView;",
        "",
        "<init>",
        "()V",
        "customView",
        "Lcom/imuxuan/floatingview/FloatingMagnetView;",
        "view",
        "getView",
        "()Lcom/imuxuan/floatingview/FloatingMagnetView;",
        "attach",
        "activity",
        "Landroid/app/Activity;",
        "detach",
        "add",
        "remove",
        "v",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

.field private static final instance:Lcom/imuxuan/floatingview/FloatingView;


# instance fields
.field private customView:Lcom/imuxuan/floatingview/FloatingMagnetView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imuxuan/floatingview/FloatingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imuxuan/floatingview/FloatingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    .line 36
    new-instance v0, Lcom/imuxuan/floatingview/FloatingView;

    invoke-direct {v0}, Lcom/imuxuan/floatingview/FloatingView;-><init>()V

    sput-object v0, Lcom/imuxuan/floatingview/FloatingView;->instance:Lcom/imuxuan/floatingview/FloatingView;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/imuxuan/floatingview/FloatingView;
    .registers 1

    .line 20
    sget-object v0, Lcom/imuxuan/floatingview/FloatingView;->instance:Lcom/imuxuan/floatingview/FloatingView;

    return-object v0
.end method

.method public static final get()Lcom/imuxuan/floatingview/FloatingView;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    invoke-virtual {v0}, Lcom/imuxuan/floatingview/FloatingView$Companion;->get()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add()Lcom/imuxuan/floatingview/FloatingView;
    .registers 1

    return-object p0
.end method

.method public final attach(Landroid/app/Activity;)Lcom/imuxuan/floatingview/FloatingView;
    .registers 2

    return-object p0
.end method

.method public final customView(Lcom/imuxuan/floatingview/FloatingMagnetView;)Lcom/imuxuan/floatingview/FloatingView;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/imuxuan/floatingview/FloatingView;->customView:Lcom/imuxuan/floatingview/FloatingMagnetView;

    return-object p0
.end method

.method public final detach(Landroid/app/Activity;)Lcom/imuxuan/floatingview/FloatingView;
    .registers 2

    return-object p0
.end method

.method public final getView()Lcom/imuxuan/floatingview/FloatingMagnetView;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/imuxuan/floatingview/FloatingView;->customView:Lcom/imuxuan/floatingview/FloatingMagnetView;

    return-object v0
.end method

.method public final remove()Lcom/imuxuan/floatingview/FloatingView;
    .registers 1

    return-object p0
.end method
