.class public Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "CloudmadeTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mStyle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    move-object p1, p0

    const/4 p2, 0x1

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getStyle()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getStyle()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 9

    .line 31
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeKey()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const-string v1, "OsmDroid"

    const-string v2, "CloudMade key is not set. You should enter it in the manifest and call CloudmadeUtil.retrieveCloudmadeKey()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeToken()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getTileSizePixels()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 37
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mImageFilenameEnding:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 36
    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setStyle(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    return-void
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->setStyle(Ljava/lang/Integer;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2

    .line 48
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 50
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting integer style: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OsmDroid"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
