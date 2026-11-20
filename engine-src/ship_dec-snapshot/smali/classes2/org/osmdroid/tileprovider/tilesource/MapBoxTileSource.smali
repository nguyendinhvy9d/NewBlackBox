.class public Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "MapBoxTileSource.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "MAPBOX_ACCESS_TOKEN"

.field private static final MAPBOX_MAPID:Ljava/lang/String; = "MAPBOX_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mapBoxMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://api.mapbox.com/v4/"

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 36
    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v1, ""

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 46
    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v1, ""

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->retrieveAccessToken(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mapbox"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    .line 79
    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string p1, ""

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 p6, 0x1

    .line 94
    new-array v6, p6, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p7, v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string p1, ""

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 61
    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 62
    iput-object p2, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    .line 63
    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mapbox"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMapBoxMapId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getMapBoxMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string p1, ".png?access_token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveAccessToken(Landroid/content/Context;)V
    .locals 1

    .line 111
    const-string v0, "MAPBOX_ACCESS_TOKEN"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .locals 1

    .line 103
    const-string v0, "MAPBOX_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setMapboxMapid(Ljava/lang/String;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mapbox"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    return-void
.end method
