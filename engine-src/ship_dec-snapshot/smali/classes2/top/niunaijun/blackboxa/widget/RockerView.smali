.class public Ltop/niunaijun/blackboxa/widget/RockerView;
.super Landroid/view/SurfaceView;
.source "RockerView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_AREA_COLOR:I

.field private static final DEFAULT_AREA_RADIUS:I = 0x64

.field private static final DEFAULT_CALLBACK_CYCLE:I = 0x12c

.field private static final DEFAULT_REFRESH_CYCLE:I = 0x1e

.field private static final DEFAULT_ROCKER_COLOR:I

.field private static final DEFAULT_ROCKER_RADIUS:I = 0x23

.field public static final EVENT_ACTION:I = 0x1

.field public static final EVENT_CLOCK:I = 0x2

.field private static mCallbackOk:Z

.field private static mCallbackThread:Ljava/lang/Thread;

.field private static mDrawOk:Z

.field private static mDrawThread:Ljava/lang/Thread;


# instance fields
.field private canMove:Z

.field private mAreaBitmap:Landroid/graphics/Bitmap;

.field private mAreaColor:I

.field private mAreaPosition:Landroid/graphics/Point;

.field private mAreaRadius:I

.field private mCallbackCycle:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefreshCycle:I

.field private mRockerBitmap:Landroid/graphics/Bitmap;

.field private mRockerColor:I

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRockerRadius:I


# direct methods
.method public static synthetic $r8$lambda$6OkhvlBt1rCu9kxUk5KejZk200I(Ltop/niunaijun/blackboxa/widget/RockerView;)V
    .locals 0

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->lambda$surfaceCreated$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sput v2, Ltop/niunaijun/blackboxa/widget/RockerView;->DEFAULT_AREA_COLOR:I

    .line 31
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Ltop/niunaijun/blackboxa/widget/RockerView;->DEFAULT_ROCKER_COLOR:I

    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawOk:Z

    .line 40
    sput-boolean v0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackOk:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 51
    iput p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    .line 52
    iput p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    const/4 p3, 0x1

    .line 59
    iput-boolean p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->canMove:Z

    const/16 p3, 0x1e

    .line 66
    iput p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRefreshCycle:I

    const/16 p3, 0x12c

    .line 67
    iput p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackCycle:I

    .line 84
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackboxa/widget/RockerView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setPaint()V

    .line 89
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->configSurfaceView()V

    .line 97
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->configSurfaceHolder()V

    return-void
.end method

.method private configSurfaceHolder()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mHolder:Landroid/view/SurfaceHolder;

    .line 122
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 123
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private configSurfaceView()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setKeepScreenOn(Z)V

    .line 115
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setFocusableInTouchMode(Z)V

    .line 117
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setZOrderOnTop(Z)V

    return-void
.end method

.method private drawArea(Landroid/graphics/Canvas;)V
    .locals 7

    .line 297
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 300
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRocker(Landroid/graphics/Canvas;)V
    .locals 7

    .line 313
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 321
    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getAngleConvert(F)F
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # 3.141592653589793

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    .line 343
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x5a

    add-long/2addr v0, v2

    long-to-float p1, v0

    return p1
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    sget p1, Ltop/niunaijun/blackboxa/widget/RockerView;->DEFAULT_AREA_COLOR:I

    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaColor:I

    .line 102
    sget p1, Ltop/niunaijun/blackboxa/widget/RockerView;->DEFAULT_ROCKER_COLOR:I

    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerColor:I

    const/16 p1, 0x64

    .line 103
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    const/16 p1, 0x23

    .line 104
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    return-void
.end method

.method private synthetic lambda$surfaceCreated$0()V
    .locals 2

    .line 177
    :goto_0
    sget-boolean v0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackOk:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->listenerCallback()V

    .line 183
    :try_start_0
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackCycle:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private listenerCallback()V
    .locals 6

    .line 329
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    const/high16 v1, -0x40800000

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;->callback(IFF)V

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Ltop/niunaijun/blackboxa/util/MathUtil;->getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    .line 334
    invoke-direct {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getAngleConvert(F)F

    move-result v0

    .line 335
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static {v1, v3, v4, v5}, Ltop/niunaijun/blackboxa/util/MathUtil;->getDistance(FFFF)I

    move-result v1

    int-to-float v1, v1

    .line 336
    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    invoke-interface {v3, v2, v0, v1}, Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;->callback(IFF)V

    :cond_1
    return-void
.end method

.method private setPaint()V
    .locals 2

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getAreaBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 379
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAreaColor()I
    .locals 1

    .line 411
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaColor:I

    return v0
.end method

.method public getAreaRadius()I
    .locals 1

    .line 363
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    return v0
.end method

.method public getCallbackCycle()I
    .locals 1

    .line 403
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackCycle:I

    return v0
.end method

.method public getRefreshCycle()I
    .locals 1

    .line 395
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRefreshCycle:I

    return v0
.end method

.method public getRockerBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 387
    iget-object v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRockerColor()I
    .locals 1

    .line 420
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerColor:I

    return v0
.end method

.method public getRockerRadius()I
    .locals 1

    .line 371
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 349
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 350
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 351
    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/widget/RockerView;->drawArea(Landroid/graphics/Canvas;)V

    .line 352
    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/widget/RockerView;->drawRocker(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 129
    iget v0, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    iget v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    if-gez v1, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    if-eq p2, v3, :cond_3

    if-eqz p2, :cond_3

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 151
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 158
    new-instance p3, Landroid/graphics/Point;

    div-int/lit8 p4, p1, 0x2

    div-int/lit8 v0, p2, 0x2

    invoke-direct {p3, p4, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    .line 159
    new-instance p3, Landroid/graphics/Point;

    iget-object p4, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    invoke-direct {p3, p4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 162
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 163
    div-int/lit8 p1, p1, 0x2

    .line 164
    iget p2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 165
    iput p2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    .line 166
    :cond_0
    iget p2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    if-ne p2, p3, :cond_1

    int-to-double p1, p1

    const-wide/high16 p3, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p1, p3

    double-to-int p1, p1

    .line 167
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    .line 223
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ltop/niunaijun/blackboxa/util/MathUtil;->getDistance(FFFF)I

    move-result v1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 227
    iget v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    if-le v1, v2, :cond_0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 233
    iget v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    if-gt v1, v2, :cond_1

    .line 235
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    .line 239
    invoke-static {v1, v2, v3}, Ltop/niunaijun/blackboxa/util/MathUtil;->getPointByCutLength(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 242
    :goto_0
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1, v2}, Ltop/niunaijun/blackboxa/util/MathUtil;->getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    .line 244
    invoke-direct {p0, v1}, Ltop/niunaijun/blackboxa/widget/RockerView;->getAngleConvert(F)F

    move-result v1

    .line 245
    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Ltop/niunaijun/blackboxa/util/MathUtil;->getDistance(FFFF)I

    move-result v2

    int-to-float v2, v2

    .line 246
    iget-object v3, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    invoke-interface {v3, v0, v1, v2}, Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;->callback(IFF)V

    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 251
    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaPosition:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 252
    iget-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    if-eqz p1, :cond_3

    const/high16 v1, -0x40800000

    const/4 v2, 0x0

    .line 253
    invoke-interface {p1, v0, v1, v2}, Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;->callback(IFF)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 210
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawOk:Z

    .line 211
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackOk:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 213
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawOk:Z

    .line 214
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackOk:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 267
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/widget/RockerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 273
    :cond_1
    :goto_0
    sget-boolean v1, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawOk:Z

    if-eqz v1, :cond_4

    .line 274
    iget-boolean v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->canMove:Z

    if-eqz v1, :cond_2

    .line 277
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 278
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 280
    invoke-direct {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->drawArea(Landroid/graphics/Canvas;)V

    .line 281
    invoke-direct {p0, v0}, Ltop/niunaijun/blackboxa/widget/RockerView;->drawRocker(Landroid/graphics/Canvas;)V

    .line 283
    :cond_2
    iget v2, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRefreshCycle:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 289
    :goto_1
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 286
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 291
    :cond_3
    throw v2

    :cond_4
    :goto_3
    return-void
.end method

.method public setAreaBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 383
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAreaColor(I)V
    .locals 0

    .line 415
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaColor:I

    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAreaRadius(I)V
    .locals 0

    .line 367
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mAreaRadius:I

    return-void
.end method

.method public setCallbackCycle(I)V
    .locals 0

    .line 407
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackCycle:I

    return-void
.end method

.method public setCanMove(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->canMove:Z

    return-void
.end method

.method public setListener(Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;)V
    .locals 0

    .line 429
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mListener:Ltop/niunaijun/blackboxa/widget/RockerView$RockerListener;

    return-void
.end method

.method public setRefreshCycle(I)V
    .locals 0

    .line 399
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRefreshCycle:I

    return-void
.end method

.method public setRockerBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 391
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRockerColor(I)V
    .locals 0

    .line 424
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerColor:I

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRockerRadius(I)V
    .locals 0

    .line 375
    iput p1, p0, Ltop/niunaijun/blackboxa/widget/RockerView;->mRockerRadius:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 173
    :try_start_0
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawThread:Ljava/lang/Thread;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 176
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ltop/niunaijun/blackboxa/widget/RockerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackboxa/widget/RockerView$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/widget/RockerView;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackThread:Ljava/lang/Thread;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 202
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mDrawOk:Z

    .line 203
    sput-boolean p1, Ltop/niunaijun/blackboxa/widget/RockerView;->mCallbackOk:Z

    return-void
.end method
