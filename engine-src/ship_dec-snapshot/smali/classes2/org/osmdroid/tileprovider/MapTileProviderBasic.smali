.class public Lorg/osmdroid/tileprovider/MapTileProviderBasic;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "MapTileProviderBasic.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field private final mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

.field private final mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

.field private final mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

.field protected tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 6

    .line 69
    new-instance v1, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v2, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 2

    .line 79
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 80
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    if-eqz p5, :cond_0

    .line 83
    iput-object p5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    .line 88
    :cond_0
    new-instance p5, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {p5}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object p5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 91
    :goto_0
    new-instance p5, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    .line 92
    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p4

    invoke-direct {p5, p1, p4, p3}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 93
    iget-object p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 96
    invoke-static {p1, p3, p4}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getMapTileFileStorageProviderBase(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    move-result-object p4

    .line 97
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {v0, p1, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 101
    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {p1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    .line 104
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p1, p5}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 106
    invoke-virtual {p1, p4}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 107
    invoke-virtual {p1, v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 109
    new-instance p1, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-direct {p1, p3, v1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 110
    iget-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileComputers()Ljava/util/List;

    move-result-object p2

    new-instance p3, Lorg/osmdroid/util/MapTileAreaZoomComputer;

    const/4 v1, -0x1

    invoke-direct {p3, v1}, Lorg/osmdroid/util/MapTileAreaZoomComputer;-><init>(I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileComputers()Ljava/util/List;

    move-result-object p2

    new-instance p3, Lorg/osmdroid/util/MapTileAreaBorderComputer;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Lorg/osmdroid/util/MapTileAreaBorderComputer;-><init>(I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/osmdroid/tileprovider/MapTileCache;->setAutoEnsureCapacity(Z)V

    .line 116
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/osmdroid/tileprovider/MapTileCache;->setStressedMemory(Z)V

    .line 119
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object p2

    invoke-virtual {p2, p5}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 120
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 121
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 125
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileContainers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->setOfflineFirst(Z)Z

    return-void
.end method

.method public static getMapTileFileStorageProviderBase(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .locals 0

    .line 185
    instance-of p2, p2, Lorg/osmdroid/tileprovider/modules/TileWriter;

    if-eqz p2, :cond_0

    .line 186
    new-instance p2, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {p2, p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-object p2

    .line 188
    :cond_0
    new-instance p2, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {p2, p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-object p2
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 142
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    return-void
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object v0
.end method

.method protected isDowngradedMode(J)Z
    .locals 7

    .line 150
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;->getNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->useDataConnection()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 156
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 157
    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 159
    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v6

    if-eq v3, v2, :cond_4

    if-le v3, v6, :cond_5

    :cond_4
    move v3, v6

    .line 163
    :cond_5
    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v5

    if-eq v4, v2, :cond_6

    if-ge v4, v5, :cond_3

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    if-eq v3, v2, :cond_a

    if-ne v4, v2, :cond_8

    goto :goto_1

    .line 172
    :cond_8
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result p1

    if-lt p1, v3, :cond_a

    if-le p1, v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_a
    :goto_1
    return v1
.end method

.method public setOfflineFirst(Z)Z
    .locals 8

    .line 199
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    if-ne v3, v1, :cond_0

    .line 200
    iget-object v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    if-ne v6, v7, :cond_0

    move v3, v5

    :cond_0
    if-ne v4, v1, :cond_1

    .line 203
    iget-object v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    if-ne v6, v7, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v1, :cond_6

    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ge v4, v3, :cond_4

    if-eqz p1, :cond_4

    return v0

    :cond_4
    if-le v4, v3, :cond_5

    if-nez p1, :cond_5

    return v0

    .line 217
    :cond_5
    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-interface {p1, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-interface {p1, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_6
    :goto_1
    return v2
.end method
