.class public Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MyLocationNewOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# static fields
.field public static final MENU_MY_LOCATION:I


# instance fields
.field protected enableAutoStop:Z

.field protected mCirclePaint:Landroid/graphics/Paint;

.field protected mDirectionArrowBitmap:Landroid/graphics/Bitmap;

.field protected mDirectionArrowCenterX:F

.field protected mDirectionArrowCenterY:F

.field protected mDrawAccuracyEnabled:Z

.field private final mDrawPixel:Landroid/graphics/Point;

.field private final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerToken:Ljava/lang/Object;

.field protected mIsFollowing:Z

.field private mIsLocationEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMapController:Lorg/osmdroid/api/IMapController;

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field public mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

.field private mOptionsMenuEnabled:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPersonBitmap:Landroid/graphics/Bitmap;

.field protected final mPersonHotspot:Landroid/graphics/PointF;

.field private final mRunOnFirstFix:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScale:F

.field private final mSnapPixel:Landroid/graphics/Point;

.field private wasEnabledOnPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 95
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 6

    .line 99
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    .line 72
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 73
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 74
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 75
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    .line 87
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    .line 89
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    .line 100
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mScale:F

    .line 102
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 103
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 104
    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0x64

    const/16 v5, 0xff

    invoke-virtual {v3, v2, v4, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 105
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 109
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lorg/osmdroid/library/R$drawable;->twotone_navigation_black_48:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 109
    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 113
    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    const/high16 v3, 0x421c0000    # 39.0f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    .line 115
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public disableFollowLocation()V
    .locals 2

    .line 408
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->stopAnimation(Z)V

    .line 409
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return-void
.end method

.method public disableMyLocation()V
    .locals 1

    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 493
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 496
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V
    .locals 5

    .line 217
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 219
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 221
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 222
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    .line 221
    invoke-static {v1, v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v1

    double-to-float p2, v1

    div-float/2addr v0, p2

    .line 224
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    :cond_0
    invoke-virtual {p3}, Landroid/location/Location;->hasBearing()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result p2

    const/high16 p3, 0x43b40000    # 360.0f

    cmpl-float v0, p2, p3

    if-ltz v0, :cond_1

    sub-float/2addr p2, p3

    .line 240
    :cond_1
    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 242
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    sub-float/2addr p3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 247
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p2

    neg-float p2, p2

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 252
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public enableFollowLocation()V
    .locals 1

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 391
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public enableMyLocation()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z
    .locals 1

    .line 455
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 457
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z

    move-result p1

    .line 458
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_1
    return p1
.end method

.method public getEnableAutoStop()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public getMyLocationProvider()Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-object v0
.end method

.method public isDrawAccuracyEnabled()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return v0
.end method

.method public isFollowLocationEnabled()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 328
    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    .line 329
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lorg/osmdroid/library/R$string;->my_location:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 328
    invoke-interface {p1, v1, v0, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 332
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/osmdroid/library/R$drawable;->ic_menu_mylocation:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 331
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 334
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return p2
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 161
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 165
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    .line 166
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 167
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 168
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->destroy()V

    .line 171
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 172
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 425
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 427
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;-><init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sub-int/2addr p1, p2

    .line 350
    sget p2, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    if-ne p1, p2, :cond_1

    .line 351
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    .line 353
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    .line 356
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    .line 146
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 147
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 342
    sget p3, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr p3, p2

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 137
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onResume()V

    .line 138
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 3

    .line 272
    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 273
    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p4

    .line 274
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    invoke-virtual {p4, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 275
    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 276
    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    iput p4, p3, Landroid/graphics/Point;->y:I

    .line 277
    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p3

    int-to-double p3, p1

    .line 278
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    mul-double/2addr p3, p3

    mul-double/2addr p1, p1

    add-double/2addr p3, p1

    const-wide/high16 p1, 0x4050000000000000L    # 64.0

    cmpg-double p1, p3, p1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    .line 280
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "snap="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OsmDroid"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isFollowLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 308
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "#runOnFirstFix"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    .line 127
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    .line 131
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    return-void
.end method

.method public setDrawAccuracyEnabled(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return-void
.end method

.method public setEnableAutoStop(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 5

    .line 444
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 445
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 446
    iget-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    if-eqz p1, :cond_0

    .line 447
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1, v0}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void

    .line 448
    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz p1, :cond_1

    .line 449
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method protected setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 209
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-void

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass an IMyLocationProvider to setMyLocationProvider()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return-void
.end method

.method public setPersonHotspot(FF)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected stopLocationProvider()V
    .locals 2

    .line 502
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->stopLocationProvider()V

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
