.class public Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "TileSourceFactory.java"


# static fields
.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final WIKIMEDIA:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private static mTileSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 100
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const-string v1, "https://a.tile.openstreetmap.org/"

    const/4 v10, 0x0

    aput-object v1, v6, v10

    const-string v1, "https://b.tile.openstreetmap.org/"

    const/4 v11, 0x1

    aput-object v1, v6, v11

    const-string v1, "https://c.tile.openstreetmap.org/"

    const/4 v12, 0x2

    aput-object v1, v6, v12

    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    const/16 v13, 0xf

    invoke-direct {v8, v12, v13}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    const-string v1, "Mapnik"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    const-string v7, "\u00a9 OpenStreetMap contributors"

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 115
    new-instance v14, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "https://maps.wikimedia.org/osm-intl/"

    aput-object v2, v1, v10

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-direct {v2, v11, v13}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    const-string v15, "Wikimedia"

    const/16 v16, 0x1

    const/16 v17, 0x13

    const/16 v18, 0x100

    const-string v19, ".png"

    const-string v21, "Wikimedia maps | Map data \u00a9 OpenStreetMap contributors"

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    invoke-direct/range {v14 .. v22}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    sput-object v14, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->WIKIMEDIA:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 127
    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v7, v11, [Ljava/lang/String;

    const-string v2, "http://openptmap.org/tiles/"

    aput-object v2, v7, v10

    const-string v8, "\u00a9 OpenStreetMap contributors"

    const-string v2, "OSMPublicTransport"

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x100

    const-string v6, ".png"

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 132
    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 137
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    new-array v8, v9, [Ljava/lang/String;

    const-string v13, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v13, v8, v10

    const-string v15, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v15, v8, v11

    const-string v16, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v16, v8, v12

    const-string v3, "CloudMadeStandardTiles"

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v6, 0x100

    const-string v7, ".png"

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 144
    new-instance v17, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    new-array v2, v9, [Ljava/lang/String;

    aput-object v13, v2, v10

    aput-object v15, v2, v11

    aput-object v16, v2, v12

    const-string v18, "CloudMadeSmallTiles"

    const/16 v19, 0x0

    const/16 v20, 0x15

    const/16 v21, 0x40

    const-string v22, ".png"

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v17, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 153
    new-instance v18, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "https://overlay.openstreetmap.nl/openfietskaart-overlay/"

    aput-object v3, v2, v10

    const-string v25, "\u00a9 OpenStreetMap contributors"

    const-string v19, "Fiets"

    const/16 v20, 0x3

    const/16 v21, 0x12

    const/16 v22, 0x100

    const-string v23, ".png"

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v25}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 157
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v8, v11, [Ljava/lang/String;

    const-string v3, "https://overlay.openstreetmap.nl/basemap/"

    aput-object v3, v8, v10

    const-string v3, "BaseNL"

    const-string v7, ".png"

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 161
    new-instance v15, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "https://overlay.openstreetmap.nl/roads/"

    aput-object v3, v2, v10

    const-string v22, "\u00a9 OpenStreetMap contributors"

    const-string v16, "RoadsNL"

    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x100

    const-string v20, ".png"

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v22}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 168
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v8, v11, [Ljava/lang/String;

    const-string v3, "https://tiles.wmflabs.org/hikebike/"

    aput-object v3, v8, v10

    const-string v3, "HikeBikeMap"

    const-string v7, ".png"

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 177
    new-instance v15, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "https://tiles.openseamap.org/seamark/"

    aput-object v4, v3, v10

    const-string v22, "OpenSeaMap"

    const-string v16, "OpenSeaMap"

    const/16 v17, 0x3

    const-string v20, ".png"

    move-object/from16 v21, v3

    invoke-direct/range {v15 .. v22}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 181
    new-instance v16, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/"

    aput-object v4, v3, v10

    const-string v23, "USGS"

    const-string v17, "USGS National Map Topo"

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x100

    const-string v21, ""

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v23}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    sput-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 188
    new-instance v15, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/"

    aput-object v5, v4, v10

    const-string v22, "USGS"

    const-string v16, "USGS National Map Sat"

    const/16 v17, 0x0

    const/16 v18, 0xf

    const/16 v19, 0x100

    const-string v20, ""

    move-object/from16 v21, v4

    invoke-direct/range {v15 .. v22}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 202
    new-instance v16, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "https://wms.chartbundle.com/tms/v1.0/wac/"

    aput-object v5, v4, v10

    const-string v23, "chartbundle.com"

    const-string v17, "ChartbundleWAC"

    const/16 v18, 0x4

    const/16 v19, 0xc

    const/16 v20, 0x100

    const-string v21, ".png?type=google"

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v23}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    sput-object v4, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 210
    new-instance v16, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "https://wms.chartbundle.com/tms/v1.0/enrh/"

    aput-object v6, v5, v10

    const-string v6, "chartbundle.com"

    aput-object v6, v5, v11

    const-string v17, "ChartbundleENRH"

    const-string v21, ".png?type=google"

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v5, v16

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 217
    new-instance v16, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "https://wms.chartbundle.com/tms/v1.0/enrl/"

    aput-object v8, v7, v10

    aput-object v6, v7, v11

    const-string v17, "ChartbundleENRL"

    const-string v21, ".png?type=google"

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v22}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v6, v16

    sput-object v6, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 225
    new-instance v16, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "https://a.tile.opentopomap.org/"

    aput-object v8, v7, v10

    const-string v8, "https://b.tile.opentopomap.org/"

    aput-object v8, v7, v11

    const-string v8, "https://c.tile.opentopomap.org/"

    aput-object v8, v7, v12

    const-string v23, "Kartendaten: \u00a9 OpenStreetMap-Mitwirkende, SRTM | Kartendarstellung: \u00a9 OpenTopoMap (CC-BY-SA)"

    const-string v17, "OpenTopoMap"

    const/16 v18, 0x0

    const/16 v19, 0x11

    const-string v21, ".png"

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v23}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    sput-object v7, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 235
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    .line 236
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 80
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static containsTileSource(Ljava/lang/String;)Z
    .locals 2

    .line 39
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 40
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getTileSource(I)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 57
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No tile source at position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 31
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such tile source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    return-object v0
.end method

.method public static removeTileSources(Ljava/lang/String;)I
    .locals 3

    .line 91
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 92
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
