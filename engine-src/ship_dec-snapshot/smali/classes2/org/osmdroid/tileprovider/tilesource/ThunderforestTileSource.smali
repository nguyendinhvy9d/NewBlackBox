.class public Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "ThunderforestTileSource.java"


# static fields
.field public static final CYCLE:I = 0x0

.field public static final LANDSCAPE:I = 0x2

.field public static final MOBILE_ATLAS:I = 0x7

.field public static final NEIGHBOURHOOD:I = 0x8

.field public static final OUTDOORS:I = 0x3

.field public static final PIONEER:I = 0x6

.field public static final SPINAL_MAP:I = 0x5

.field private static final THUNDERFOREST_MAPID:Ljava/lang/String; = "THUNDERFOREST_MAPID"

.field public static final TRANSPORT:I = 0x1

.field public static final TRANSPORT_DARK:I = 0x4

.field private static final baseUrl:[Ljava/lang/String;

.field private static final uiMap:[Ljava/lang/String;

.field private static final urlMap:[Ljava/lang/String;


# instance fields
.field private final mMap:I

.field private final mMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    .line 37
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "cycle"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "transport"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "landscape"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "outdoors"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "transport-dark"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "spinal-map"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "pioneer"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "mobile-atlas"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "neighbourhood"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CycleMap"

    aput-object v1, v0, v3

    const-string v1, "Transport"

    aput-object v1, v0, v4

    const-string v1, "Landscape"

    aput-object v1, v0, v5

    const-string v1, "Outdoors"

    aput-object v1, v0, v6

    const-string v1, "TransportDark"

    aput-object v1, v0, v7

    const-string v1, "Spinal"

    aput-object v1, v0, v8

    const-string v1, "Pioneer"

    aput-object v1, v0, v9

    const-string v1, "MobileAtlas"

    aput-object v1, v0, v10

    const-string v1, "Neighbourhood"

    aput-object v1, v0, v11

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    .line 62
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "https://a.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v3

    const-string v1, "https://b.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v4

    const-string v1, "https://c.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v5

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .line 83
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    aget-object v2, v0, p2

    sget-object v7, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    const-string v8, "Maps \u00a9 Thunderforest, Data \u00a9 OpenStreetMap contributors."

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x100

    const-string v6, ".png"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput p2, v1, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    .line 85
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->retrieveMapId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    return-void
.end method

.method public static haveMapId(Landroid/content/Context;)Z
    .locals 1

    .line 118
    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final mapName(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    .line 74
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 75
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getTileURLString(J)Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    iget v3, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    aget-object v2, v2, v3

    const-string v3, "{map}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string p1, ".png?apikey="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveMapId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
