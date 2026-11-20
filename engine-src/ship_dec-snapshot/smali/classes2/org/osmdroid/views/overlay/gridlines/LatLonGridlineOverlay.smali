.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;
.super Ljava/lang/Object;
.source "LatLonGridlineOverlay.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUG2:Z

.field public static backgroundColor:I

.field static final df:Ljava/text/DecimalFormat;

.field public static fontColor:I

.field public static fontSizeDp:S

.field public static lineColor:I

.field public static lineWidth:F

.field private static multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    const/high16 v0, -0x1000000

    .line 31
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    const/4 v1, -0x1

    .line 32
    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    const/16 v1, 0x18

    .line 33
    sput-short v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    .line 34
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 38
    sput-boolean v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    .line 41
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1

    .line 44
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelBackgroundColor(I)V

    .line 45
    sget-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelFontSize(I)V

    .line 46
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelForegroundColor(I)V

    return-void
.end method

.method private static getIncrementor(I)D
    .locals 4

    packed-switch p0, :pswitch_data_0

    .line 449
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3ef999999999999aL    # 2.44140625E-5

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    .line 447
    :pswitch_0    # 0x15
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f0999999999999aL

    goto :goto_0

    .line 445
    :pswitch_1    # 0x14
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f1999999999999aL

    goto :goto_0

    .line 443
    :pswitch_2    # 0x13
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f2999999999999aL

    goto :goto_0

    .line 441
    :pswitch_3    # 0x12
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f3999999999999aL

    goto :goto_0

    .line 439
    :pswitch_4    # 0x11
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f4999999999999aL

    goto :goto_0

    .line 437
    :pswitch_5    # 0x10
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f5999999999999aL

    goto :goto_0

    .line 435
    :pswitch_6    # 0xf
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f6999999999999aL

    goto :goto_0

    .line 433
    :pswitch_7    # 0xe
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f7999999999999aL

    goto :goto_0

    .line 431
    :pswitch_8    # 0xd
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f8999999999999aL

    goto :goto_0

    .line 429
    :pswitch_9    # 0xc
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3f9999999999999aL

    goto :goto_0

    .line 427
    :pswitch_a    # 0xb
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3fa999999999999aL

    goto :goto_0

    .line 425
    :pswitch_b    # 0xa
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL

    goto :goto_0

    .line 421
    :pswitch_c    # 0x9
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fd0000000000000L

    goto :goto_0

    .line 419
    :pswitch_d    # 0x8
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L

    goto :goto_0

    .line 417
    :pswitch_e    # 0x7
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L

    goto :goto_0

    .line 415
    :pswitch_f    # 0x6
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L

    goto/16 :goto_0

    .line 412
    :pswitch_10    # 0x5
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x4008000000000000L

    goto/16 :goto_0

    .line 410
    :pswitch_11    # 0x4
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x4018000000000000L

    goto/16 :goto_0

    .line 408
    :pswitch_12    # 0x3
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x4022000000000000L

    goto/16 :goto_0

    .line 406
    :pswitch_13    # 0x2
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x402e000000000000L

    goto/16 :goto_0

    .line 404
    :pswitch_14    # 0x1 0x0
    sget p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x403e000000000000L

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14    # 0x0
        :pswitch_14    # 0x1
        :pswitch_13    # 0x2
        :pswitch_12    # 0x3
        :pswitch_11    # 0x4
        :pswitch_10    # 0x5
        :pswitch_f    # 0x6
        :pswitch_e    # 0x7
        :pswitch_d    # 0x8
        :pswitch_c    # 0x9
        :pswitch_b    # 0xa
        :pswitch_a    # 0xb
        :pswitch_9    # 0xc
        :pswitch_8    # 0xd
        :pswitch_7    # 0xe
        :pswitch_6    # 0xf
        :pswitch_5    # 0x10
        :pswitch_4    # 0x11
        :pswitch_3    # 0x12
        :pswitch_2    # 0x13
        :pswitch_1    # 0x14
        :pswitch_0    # 0x15
    .end packed-switch
.end method

.method public static getLatLonGrid(Landroid/content/Context;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/FolderOverlay;
    .locals 29

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 51
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v2

    .line 53
    sget-boolean v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "######### getLatLonGrid "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v3, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v3}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    goto/16 :goto_d

    .line 93
    :cond_1
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    .line 94
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    .line 95
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    .line 96
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2

    goto/16 :goto_d

    .line 104
    :cond_2
    sget-boolean v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 105
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "N "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " S "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", 0.0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v12, 0x0

    cmpg-double v1, v8, v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-gez v1, :cond_4

    cmpl-double v1, v10, v12

    if-lez v1, :cond_4

    move v1, v14

    goto :goto_0

    :cond_4
    move v1, v15

    .line 114
    :goto_0
    sget-boolean v16, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v16, :cond_5

    move-wide/from16 v16, v12

    .line 115
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "delta 0.0"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v12

    .line 119
    :goto_1
    invoke-static {v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v12

    .line 126
    invoke-static {v4, v5, v6, v7, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsNS(DDI)[D

    move-result-object v18

    .line 127
    aget-wide v19, v18, v15

    .line 128
    aget-wide v21, v18, v14

    move/from16 p0, v14

    move/from16 v18, v15

    move-wide/from16 v14, v19

    :goto_2
    cmpg-double v19, v14, v21

    move/from16 v20, v1

    .line 131
    const-string v1, ", zoom "

    move-wide/from16 v23, v12

    const-string v12, " to "

    const-string v13, ","

    if-gtz v19, :cond_8

    move-wide/from16 v25, v6

    .line 132
    new-instance v6, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v6}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 133
    invoke-virtual {v6}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-wide/from16 v27, v4

    sget v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    invoke-virtual {v6}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v14, v15, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 139
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v14, v15, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 141
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-boolean v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 143
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "drawing NS "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_6
    invoke-virtual {v6, v4}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 148
    invoke-virtual {v3, v6}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 151
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 152
    invoke-static {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmpl-double v5, v14, v16

    if-lez v5, :cond_7

    const-string v5, "N"

    goto :goto_3

    :cond_7
    const-string v5, "S"

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    add-double v12, v10, v23

    invoke-direct {v1, v14, v15, v12, v13}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 157
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v14, v14, v23

    move/from16 v1, v20

    move-wide/from16 v12, v23

    move-wide/from16 v6, v25

    move-wide/from16 v4, v27

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v27, v4

    move-wide/from16 v25, v6

    move-object/from16 v4, p1

    .line 160
    invoke-static {v10, v11, v8, v9, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsWE(DDI)[D

    move-result-object v0

    .line 161
    aget-wide v5, v0, p0

    .line 162
    aget-wide v7, v0, v18

    move-wide v9, v5

    :goto_4
    cmpg-double v0, v9, v7

    .line 165
    const-string v11, "E"

    const-string v14, "W"

    if-gtz v0, :cond_b

    .line 166
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 167
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v18, v11

    sget v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v11

    sget v15, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v15, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v21, v7

    move-wide/from16 v7, v27

    invoke-direct {v15, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 171
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v15, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v27, v5

    move-wide/from16 v5, v25

    invoke-direct {v15, v5, v6, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 173
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 176
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 177
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    const-string v14, "drawing EW "

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v19, v14

    .line 179
    :goto_5
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 182
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v0, v4}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 183
    invoke-static {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v11, -0x3d4c0000

    .line 184
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v14, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    cmpl-double v14, v9, v16

    if-lez v14, :cond_a

    move-object/from16 v14, v18

    goto :goto_6

    :cond_a
    move-object/from16 v14, v19

    :goto_6
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 186
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 188
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    add-double v14, v5, v23

    invoke-direct {v11, v14, v15, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 189
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v9, v9, v23

    move-wide/from16 v25, v5

    move-wide/from16 v5, v27

    move-wide/from16 v27, v7

    move-wide/from16 v7, v21

    goto/16 :goto_4

    :cond_b
    move-wide/from16 v21, v7

    move-object/from16 v18, v11

    move-object/from16 v19, v14

    move-wide/from16 v7, v27

    move-wide/from16 v27, v5

    move-wide/from16 v5, v25

    if-eqz v20, :cond_13

    .line 193
    sget-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DATELINE zoom "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v14, v27

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v10, v21

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-wide/from16 v10, v21

    move-wide/from16 v14, v27

    :goto_7
    move-wide/from16 v21, v10

    move-wide v9, v14

    :goto_8
    const-wide v25, 0x4066800000000000L    # 180.0

    cmpg-double v0, v9, v25

    if-gtz v0, :cond_e

    .line 199
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 200
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v11

    move-wide/from16 v27, v14

    sget v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v11

    sget v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v14, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 204
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v14, v5, v6, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 206
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 209
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v11, :cond_d

    .line 210
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DATELINE drawing NS"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    :cond_d
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v9, v9, v23

    move-wide/from16 v14, v27

    goto :goto_8

    :cond_e
    move-wide/from16 v27, v14

    const-wide v9, -0x3f99800000000000L    # -180.0

    :goto_9
    cmpg-double v0, v9, v21

    if-gtz v0, :cond_11

    .line 217
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 218
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v11

    sget v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v11

    sget v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v14, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 222
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v14, v5, v6, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 224
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 227
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v11, :cond_f

    .line 228
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DATELINE drawing EW"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_f
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 233
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v0, v4}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 234
    invoke-static {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v11, -0x3d4c0000

    .line 235
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v14, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    cmpl-double v14, v9, v16

    if-lez v14, :cond_10

    move-object/from16 v14, v18

    goto :goto_a

    :cond_10
    move-object/from16 v14, v19

    :goto_a
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 237
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 239
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    add-double v14, v5, v23

    invoke-direct {v11, v14, v15, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 240
    invoke-virtual {v3, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v9, v9, v23

    goto/16 :goto_9

    :cond_11
    move-wide/from16 v0, v27

    :goto_b
    cmpg-double v2, v0, v25

    if-gez v2, :cond_13

    .line 246
    new-instance v2, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v2, v4}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 248
    invoke-static {v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v11, -0x3d4c0000

    .line 249
    invoke-virtual {v2, v11}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmpl-double v8, v0, v16

    if-lez v8, :cond_12

    move-object/from16 v8, v18

    goto :goto_c

    :cond_12
    move-object/from16 v8, v19

    :goto_c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-virtual {v2, v7}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v7}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 253
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    add-double v8, v5, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v7}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 254
    invoke-virtual {v3, v2}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v0, v0, v23

    goto :goto_b

    :cond_13
    :goto_d
    return-object v3
.end method

.method private static getStartEndPointsNS(DDI)[D
    .locals 16

    move/from16 v0, p4

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide v5, 0x4056800000000000L

    const-wide v7, -0x3fa9800000000000L

    if-ge v0, v1, :cond_4

    .line 274
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 275
    invoke-static {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v0

    move-wide v11, v7

    :goto_0
    cmpg-double v13, v11, v9

    if-gez v13, :cond_0

    add-double/2addr v11, v0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    move-wide v13, v5

    :goto_1
    cmpl-double v15, v13, v9

    if-lez v15, :cond_1

    sub-double/2addr v13, v0

    goto :goto_1

    :cond_1
    cmpl-double v0, v13, v5

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v5, v13

    :goto_2
    cmpg-double v0, v11, v7

    if-gez v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v11

    .line 295
    :goto_3
    new-array v0, v4, [D

    aput-wide v7, v0, v2

    aput-wide v5, v0, v3

    return-object v0

    :cond_4
    const-wide/16 v9, 0x0

    cmpl-double v1, p2, v9

    if-lez v1, :cond_5

    move-wide v7, v9

    :cond_5
    cmpg-double v1, p0, v9

    if-gez v1, :cond_6

    move-wide v5, v9

    :cond_6
    move v1, v4

    :goto_4
    if-gt v1, v0, :cond_a

    .line 308
    invoke-static {v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v9

    :cond_7
    :goto_5
    sub-double v11, p2, v9

    cmpg-double v11, v7, v11

    if-gez v11, :cond_8

    add-double/2addr v7, v9

    .line 311
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 312
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "south "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :goto_6
    add-double v11, p0, v9

    cmpl-double v11, v5, v11

    if-lez v11, :cond_9

    sub-double/2addr v5, v9

    .line 318
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 319
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "north "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 324
    :cond_a
    new-array v0, v4, [D

    aput-wide v7, v0, v2

    aput-wide v5, v0, v3

    return-object v0
.end method

.method private static getStartEndPointsWE(DDI)[D
    .locals 17

    move/from16 v0, p4

    .line 339
    invoke-static {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-wide v7, 0x4066800000000000L

    const-wide v9, -0x3f99800000000000L

    if-ge v0, v3, :cond_4

    .line 342
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    move-wide v13, v7

    :goto_0
    cmpl-double v0, v13, v11

    if-lez v0, :cond_0

    sub-double/2addr v13, v1

    goto :goto_0

    .line 348
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    move-wide v15, v9

    :goto_1
    cmpg-double v0, v15, v11

    if-gez v0, :cond_1

    add-double/2addr v15, v1

    goto :goto_1

    :cond_1
    cmpg-double v0, v13, v9

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v9, v13

    :goto_2
    cmpl-double v0, v11, v7

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v11

    .line 358
    :goto_3
    new-array v0, v6, [D

    aput-wide v7, v0, v4

    aput-wide v9, v0, v5

    return-object v0

    :cond_4
    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    if-lez v3, :cond_5

    move-wide v9, v1

    :cond_5
    cmpg-double v3, p2, v1

    if-gez v3, :cond_6

    move-wide v7, v1

    :cond_6
    move v1, v6

    :goto_4
    if-gt v1, v0, :cond_9

    .line 371
    invoke-static {v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v2

    :goto_5
    add-double v11, p2, v2

    cmpl-double v11, v7, v11

    if-lez v11, :cond_7

    sub-double/2addr v7, v2

    goto :goto_5

    :cond_7
    :goto_6
    sub-double v11, p0, v2

    cmpg-double v11, v9, v11

    if-gez v11, :cond_8

    add-double/2addr v9, v2

    .line 379
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 380
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "west "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 384
    :cond_9
    sget-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "return EW set as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_a
    new-array v0, v6, [D

    aput-wide v7, v0, v4

    aput-wide v9, v0, v5

    return-object v0
.end method

.method public static setDefaults()V
    .locals 2

    const/high16 v0, -0x1000000

    .line 460
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    const/4 v1, -0x1

    .line 461
    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    .line 462
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 463
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    const/16 v0, 0x20

    .line 464
    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    const/4 v0, 0x0

    .line 465
    sput-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 466
    sput-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    return-void
.end method
