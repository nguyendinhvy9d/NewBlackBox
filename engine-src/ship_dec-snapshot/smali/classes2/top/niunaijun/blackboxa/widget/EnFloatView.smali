.class public final Ltop/niunaijun/blackboxa/widget/EnFloatView;
.super Lcom/imuxuan/floatingview/FloatingMagnetView;
.source "EnFloatView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016JB\u0010\u0018\u001a\u00020\u00112:\u0010\u0019\u001a6\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u000bj\u0002`\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000RF\u0010\n\u001a:\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000bj\u0004\u0018\u0001`\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/widget/EnFloatView;",
        "Lcom/imuxuan/floatingview/FloatingMagnetView;",
        "mContext",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "TAG",
        "",
        "rockerView",
        "Ltop/niunaijun/blackboxa/widget/RockerView;",
        "mListener",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "angle",
        "distance",
        "",
        "Ltop/niunaijun/blackboxa/widget/LocationListener;",
        "initRockerView",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "setListener",
        "listener",
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
.field private final TAG:Ljava/lang/String;

.field private mListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private rockerView:Ltop/niunaijun/blackboxa/widget/RockerView;


# direct methods
.method public static synthetic $r8$lambda$6aksw3p7DiiGxHrPuILTH3Af4Ro(Ltop/niunaijun/blackboxa/widget/EnFloatView;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/widget/EnFloatView;->initRockerView$lambda$0(Ltop/niunaijun/blackboxa/widget/EnFloatView;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/imuxuan/floatingview/FloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    const-string p1, "RockerManager"

    iput-object p1, v1, Ltop/niunaijun/blackboxa/widget/EnFloatView;->TAG:Ljava/lang/String;

    .line 18
    sget p1, Ltop/niunaijun/blackboxa/R$layout;->view_float_rocker:I

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p1, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/EnFloatView;->initRockerView()V

    return-void
.end method

.method private final initRockerView()V
    .locals 2

    .line 24
    sget v0, Ltop/niunaijun/blackboxa/R$id;->rocker:I

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/widget/EnFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/widget/RockerView;

    iput-object v0, p0, Ltop/niunaijun/blackboxa/widget/EnFloatView;->rockerView:Ltop/niunaijun/blackboxa/widget/RockerView;

    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Ltop/niunaijun/blackboxa/widget/EnFloatView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackboxa/widget/EnFloatView$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/widget/EnFloatView;)V

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackboxa/widget/RockerView;->setListener(Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;)V

    :cond_0
    return-void
.end method

.method private static final initRockerView$lambda$0(Ltop/niunaijun/blackboxa/widget/EnFloatView;IFF)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p1, p2, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x3a83126f    # 0.001f

    mul-float/2addr p3, p1

    .line 31
    iget-object p0, p0, Ltop/niunaijun/blackboxa/widget/EnFloatView;->mListener:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/EnFloatView;->rockerView:Ltop/niunaijun/blackboxa/widget/RockerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackboxa/widget/RockerView;->setCanMove(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/EnFloatView;->rockerView:Ltop/niunaijun/blackboxa/widget/RockerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackboxa/widget/RockerView;->setCanMove(Z)V

    .line 43
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/imuxuan/floatingview/FloatingMagnetView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/EnFloatView;->mListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
