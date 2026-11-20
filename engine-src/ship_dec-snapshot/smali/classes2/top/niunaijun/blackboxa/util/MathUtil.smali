.class public Ltop/niunaijun/blackboxa/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angle2Radian(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # 3.141592653589793

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static getDistance(FFFF)I
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 4

    .line 13
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static getPointByCutLength(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 6

    .line 23
    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/util/MathUtil;->getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    .line 24
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-double v2, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    add-int/2addr v1, v4

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v2, p1

    double-to-int p1, v2

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 3

    .line 29
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 30
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v2, v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 33
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ge p1, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1    # 1.4E-45f

    :goto_0
    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static radian2Angle(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # 3.141592653589793

    div-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    return-wide p0
.end method
