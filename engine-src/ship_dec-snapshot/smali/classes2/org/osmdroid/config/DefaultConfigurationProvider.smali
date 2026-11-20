.class public Lorg/osmdroid/config/DefaultConfigurationProvider;
.super Ljava/lang/Object;
.source "DefaultConfigurationProvider.java"

# interfaces
.implements Lorg/osmdroid/config/IConfigurationProvider;


# static fields
.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "osmdroid"


# instance fields
.field protected animationSpeedDefault:I

.field protected animationSpeedShort:I

.field protected cacheMapTileCount:S

.field protected cacheTileOvershoot:S

.field protected debugMapTileDownloader:Z

.field protected debugMapView:Z

.field protected debugMode:Z

.field protected debugTileProviders:Z

.field protected expirationAdder:J

.field protected expirationOverride:Ljava/lang/Long;

.field protected gpsWaitTime:J

.field protected httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

.field protected httpProxy:Ljava/net/Proxy;

.field protected isMapViewHardwareAccelerated:Z

.field private final mAdditionalHttpRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalizedUserAgent:Ljava/lang/String;

.field protected mTileDownloaderFollowRedirects:Z

.field protected mTileGCBulkPauseInMillis:J

.field protected mTileGCBulkSize:I

.field protected mTileGCFrequencyInMillis:J

.field protected mapViewRecycler:Z

.field protected osmdroidBasePath:Ljava/io/File;

.field protected osmdroidTileCache:Ljava/io/File;

.field protected tileDownloadMaxQueueSize:S

.field protected tileDownloadThreads:S

.field protected tileFileSystemCacheMaxBytes:J

.field protected tileFileSystemCacheTrimBytes:J

.field protected tileFileSystemMaxQueueSize:S

.field protected tileFileSystemThreads:S

.field protected userAgentHttpHeader:Ljava/lang/String;

.field protected userAgentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    .line 38
    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    .line 40
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    .line 41
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    .line 42
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    .line 44
    const-string v2, "osmdroid"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    .line 45
    const-string v2, "User-Agent"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const/16 v2, 0x9

    .line 47
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    const/4 v2, 0x2

    .line 48
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    const/16 v2, 0x8

    .line 49
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    const/16 v2, 0x28

    .line 50
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    .line 51
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    const-wide/32 v2, 0x25800000

    .line 52
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    const-wide/32 v2, 0x1f400000

    .line 53
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v2, 0x0

    .line 57
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 59
    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    const/16 v2, 0x3e8

    .line 60
    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    const/16 v2, 0x1f4

    .line 61
    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    .line 62
    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    .line 63
    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    const-wide/32 v2, 0x493e0

    .line 64
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    const/16 v0, 0x14

    .line 65
    iput v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    const-wide/16 v2, 0x1f4

    .line 66
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    .line 67
    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return-void
.end method

.method private static commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 478
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 604
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 605
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private static load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 445
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 447
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 465
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdditionalHttpRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAnimationSpeedDefault()I
    .locals 1

    .line 514
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return v0
.end method

.method public getAnimationSpeedShort()I
    .locals 1

    .line 524
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return v0
.end method

.method public getCacheMapTileCount()S
    .locals 1

    .line 161
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return v0
.end method

.method public getCacheMapTileOvershoot()S
    .locals 1

    .line 544
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    return v0
.end method

.method public getExpirationExtendedDuration()J
    .locals 2

    .line 486
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-wide v0
.end method

.method public getExpirationOverrideDuration()Ljava/lang/Long;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsWaitTime()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-wide v0
.end method

.method public getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getHttpProxy()Ljava/net/Proxy;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getNormalizedUserAgent()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getOsmdroidBasePath()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 257
    const-string v0, "OsmDroid"

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    if-nez v1, :cond_1

    .line 258
    invoke-static {p1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v1

    .line 259
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "osmdroid"

    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    iget-object p1, v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 264
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    .line 267
    const-string p1, "Directory not created"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create base path at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-object p1
.end method

.method public getOsmdroidTileCache()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "tiles"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    .line 295
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create tile cache path at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-object p1
.end method

.method public getTileDownloadMaxQueueSize()S
    .locals 1

    .line 191
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return v0
.end method

.method public getTileDownloadThreads()S
    .locals 1

    .line 171
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return v0
.end method

.method public getTileFileSystemCacheMaxBytes()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-wide v0
.end method

.method public getTileFileSystemCacheTrimBytes()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-wide v0
.end method

.method public getTileFileSystemMaxQueueSize()S
    .locals 1

    .line 201
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return v0
.end method

.method public getTileFileSystemThreads()S
    .locals 1

    .line 181
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return v0
.end method

.method public getTileGCBulkPauseInMillis()J
    .locals 2

    .line 569
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    return-wide v0
.end method

.method public getTileGCBulkSize()I
    .locals 1

    .line 559
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    return v0
.end method

.method public getTileGCFrequencyInMillis()J
    .locals 2

    .line 549
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    return-wide v0
.end method

.method public getUserAgentHttpHeader()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugMapTileDownloader()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return v0
.end method

.method public isDebugMapView()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return v0
.end method

.method public isDebugTileProviders()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return v0
.end method

.method public isMapTileDownloaderFollowRedirects()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return v0
.end method

.method public isMapViewHardwareAccelerated()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return v0
.end method

.method public isMapViewRecyclerFriendly()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6

    .line 323
    invoke-direct {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    .line 328
    const-string v0, "osmdroid.basePath"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "osmdroid.cachePath"

    if-nez v1, :cond_2

    .line 330
    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 331
    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 334
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "osmdroid"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    new-instance v3, Ljava/io/File;

    const-string v4, "tiles"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 339
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-static {v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 343
    invoke-virtual {p0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 344
    invoke-virtual {p0, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 349
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 350
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 351
    const-string v0, "osmdroid.DebugMode"

    iget-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMode(Z)V

    .line 352
    const-string v0, "osmdroid.DebugDownloading"

    iget-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapTileDownloader(Z)V

    .line 353
    const-string v0, "osmdroid.DebugMapView"

    iget-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapView(Z)V

    .line 354
    const-string v0, "osmdroid.DebugTileProvider"

    iget-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugTileProviders(Z)V

    .line 355
    const-string v0, "osmdroid.HardwareAcceleration"

    iget-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewHardwareAccelerated(Z)V

    .line 356
    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v0, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, p1, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V

    .line 358
    const-string p1, "osmdroid.gpsWaitTime"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setGpsWaitTime(J)V

    .line 359
    const-string p1, "osmdroid.tileDownloadThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadThreads(S)V

    .line 360
    const-string p1, "osmdroid.tileFileSystemThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemThreads(S)V

    .line 361
    const-string p1, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadMaxQueueSize(S)V

    .line 362
    const-string p1, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemMaxQueueSize(S)V

    .line 363
    const-string p1, "osmdroid.ExpirationExtendedDuration"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setExpirationExtendedDuration(J)V

    .line 364
    const-string p1, "osmdroid.mapViewRecycler"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewRecyclerFriendly(Z)V

    .line 365
    const-string p1, "osmdroid.ZoomSpeedDefault"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedDefault(I)V

    .line 366
    const-string p1, "osmdroid.animationSpeedShort"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedShort(I)V

    .line 367
    const-string p1, "osmdroid.cacheTileOvershoot"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setCacheMapTileOvershoot(S)V

    .line 368
    const-string p1, "osmdroid.TileDownloaderFollowRedirects"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapTileDownloaderFollowRedirects(Z)V

    .line 370
    const-string p1, "osmdroid.ExpirationOverride"

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    .line 371
    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 372
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 388
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "cache.db"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 390
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x0

    .line 393
    :goto_1
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 396
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v2

    add-long/2addr v0, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_5

    long-to-double p1, v0

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr v0, p1

    double-to-long v0, v0

    .line 397
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 398
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    :cond_5
    return-void
.end method

.method public save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 405
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 406
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osmdroid.basePath"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osmdroid.cachePath"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v0, "osmdroid.DebugMode"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMode()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 409
    const-string v0, "osmdroid.DebugDownloading"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 410
    const-string v0, "osmdroid.DebugMapView"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapView()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v0, "osmdroid.DebugTileProvider"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v0, "osmdroid.HardwareAcceleration"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v0, "osmdroid.TileDownloaderFollowRedirects"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapTileDownloaderFollowRedirects()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v1, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, p1, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V

    .line 416
    const-string p2, "osmdroid.gpsWaitTime"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string p2, "osmdroid.cacheMapTileCount"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string p2, "osmdroid.tileDownloadThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string p2, "osmdroid.tileFileSystemThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string p2, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string p2, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string p2, "osmdroid.ExpirationExtendedDuration"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 423
    iget-object p2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 424
    const-string v0, "osmdroid.ExpirationOverride"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 426
    :cond_0
    const-string p2, "osmdroid.ZoomSpeedDefault"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 427
    const-string p2, "osmdroid.animationSpeedShort"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string p2, "osmdroid.mapViewRecycler"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    const-string p2, "osmdroid.cacheTileOvershoot"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-static {p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public setAnimationSpeedDefault(I)V
    .locals 0

    .line 509
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return-void
.end method

.method public setAnimationSpeedShort(I)V
    .locals 0

    .line 519
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return-void
.end method

.method public setCacheMapTileCount(S)V
    .locals 0

    .line 166
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return-void
.end method

.method public setCacheMapTileOvershoot(S)V
    .locals 0

    .line 539
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    return-void
.end method

.method public setDebugMapTileDownloader(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return-void
.end method

.method public setDebugMapView(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return-void
.end method

.method public setDebugTileProviders(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return-void
.end method

.method public setExpirationExtendedDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 492
    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-void

    .line 494
    :cond_0
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-void
.end method

.method public setExpirationOverrideDuration(Ljava/lang/Long;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-void
.end method

.method public setGpsWaitTime(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-void
.end method

.method public setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setMapTileDownloaderFollowRedirects(Z)V
    .locals 0

    .line 579
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return-void
.end method

.method public setMapViewHardwareAccelerated(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return-void
.end method

.method public setMapViewRecyclerFriendly(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return-void
.end method

.method public setOsmdroidBasePath(Ljava/io/File;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-void
.end method

.method public setOsmdroidTileCache(Ljava/io/File;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-void
.end method

.method public setTileDownloadMaxQueueSize(S)V
    .locals 0

    .line 196
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return-void
.end method

.method public setTileDownloadThreads(S)V
    .locals 0

    .line 176
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return-void
.end method

.method public setTileFileSystemCacheMaxBytes(J)V
    .locals 0

    .line 216
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-void
.end method

.method public setTileFileSystemCacheTrimBytes(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-void
.end method

.method public setTileFileSystemMaxQueueSize(S)V
    .locals 0

    .line 206
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return-void
.end method

.method public setTileFileSystemThreads(S)V
    .locals 0

    .line 186
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return-void
.end method

.method public setTileGCBulkPauseInMillis(J)V
    .locals 0

    .line 574
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    return-void
.end method

.method public setTileGCBulkSize(I)V
    .locals 0

    .line 564
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    return-void
.end method

.method public setTileGCFrequencyInMillis(J)V
    .locals 0

    .line 554
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    return-void
.end method

.method public setUserAgentHttpHeader(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentValue(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-void
.end method
