.class public Lio/vanta/core/system/JarManager;
.super Ljava/lang/Object;
.source "JarManager.java"


# static fields
.field private static final BUFFER_SIZE:I

.field private static final MAX_RETRY_DELAY:J = 0x1388L

.field private static final REQUIRED_JARS:[Lio/vanta/core/system/JarConfig$JarDefinition;

.field private static final TAG:Ljava/lang/String; = "JarManager"

.field private static volatile sInstance:Lio/vanta/core/system/JarManager;


# instance fields
.field private final mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mJarCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/JarConfig$JarDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_jN0YPLQzyCqgEBFyCHhSwUE1HE(Lio/vanta/core/system/JarManager;)V
    .registers 1

    invoke-direct {p0}, Lio/vanta/core/system/JarManager;->lambda$initializeAsync$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 22
    invoke-static {}, Lio/vanta/core/system/JarConfig;->getRequiredJars()[Lio/vanta/core/system/JarConfig$JarDefinition;

    move-result-object v0

    sput-object v0, Lio/vanta/core/system/JarManager;->REQUIRED_JARS:[Lio/vanta/core/system/JarConfig$JarDefinition;

    .line 23
    invoke-static {}, Lio/vanta/utils/JarUtils;->getOptimalBufferSize()I

    move-result v0

    sput v0, Lio/vanta/core/system/JarManager;->BUFFER_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/JarManager;->mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/JarManager;->mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private copyJarFromAssets(Landroid/content/Context;Lio/vanta/core/system/JarConfig$JarDefinition;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-string v0, "Failed to close input stream for: "

    const-string v1, "JarManager"

    .line 0
    const-string v2, "Failed to create target directory: "

    const-string v3, "Asset not found: "

    .line 176
    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    .line 180
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 186
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_3b

    .line 188
    :cond_28
    new-instance p3, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 192
    :cond_3b
    :goto_3b
    invoke-static {v4, p3, p2}, Lio/vanta/utils/JarUtils;->copyFileWithProgress(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_69

    if-eqz v4, :cond_55

    .line 197
    :try_start_40
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    return-void

    .line 182
    :cond_56
    :try_start_56
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p1

    if-eqz v4, :cond_81

    .line 197
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_81

    :catch_70
    move-exception p3

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_81
    :goto_81
    throw p1
.end method

.method public static getInstance()Lio/vanta/core/system/JarManager;
    .registers 2

    .line 36
    sget-object v0, Lio/vanta/core/system/JarManager;->sInstance:Lio/vanta/core/system/JarManager;

    if-nez v0, :cond_17

    .line 37
    const-class v0, Lio/vanta/core/system/JarManager;

    monitor-enter v0

    .line 38
    :try_start_7
    sget-object v1, Lio/vanta/core/system/JarManager;->sInstance:Lio/vanta/core/system/JarManager;

    if-nez v1, :cond_12

    .line 39
    new-instance v1, Lio/vanta/core/system/JarManager;

    invoke-direct {v1}, Lio/vanta/core/system/JarManager;-><init>()V

    sput-object v1, Lio/vanta/core/system/JarManager;->sInstance:Lio/vanta/core/system/JarManager;

    .line 41
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 43
    :cond_17
    :goto_17
    sget-object v0, Lio/vanta/core/system/JarManager;->sInstance:Lio/vanta/core/system/JarManager;

    return-object v0
.end method

.method private getTargetFile(Lio/vanta/core/system/JarConfig$JarDefinition;)Ljava/io/File;
    .registers 4

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lio/vanta/core/system/JarConfig$JarDefinition;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private initializeJarEnvironment()V
    .registers 10

    .line 116
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 121
    const-string v1, "Starting JAR environment initialization"

    const-string v2, "JarManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v1, Lio/vanta/core/system/JarManager;->REQUIRED_JARS:[Lio/vanta/core/system/JarConfig$JarDefinition;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_33

    aget-object v5, v1, v4

    .line 125
    :try_start_15
    invoke-direct {p0, v0, v5}, Lio/vanta/core/system/JarManager;->processJarFile(Landroid/content/Context;Lio/vanta/core/system/JarConfig$JarDefinition;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_30

    :catch_19
    move-exception v6

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to process JAR file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 133
    :cond_33
    invoke-direct {p0}, Lio/vanta/core/system/JarManager;->verifyJarEnvironment()V

    return-void

    .line 118
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VantaCore context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isFileValid(Ljava/io/File;Lio/vanta/core/system/JarConfig$JarDefinition;)Z
    .registers 10

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "JarManager"

    if-nez v0, :cond_1c

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "File does not exist: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 214
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_39

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "File is empty: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 220
    :cond_39
    invoke-static {p1, p2}, Lio/vanta/core/system/JarConfig;->validateFile(Ljava/io/File;Lio/vanta/core/system/JarConfig$JarDefinition;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "File validation failed for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", min: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getMinSize()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 228
    :cond_78
    invoke-static {p1}, Lio/vanta/utils/JarUtils;->calculateFileHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 230
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$initializeAsync$0()V
    .registers 5

    .line 56
    const-string v0, "JarManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lio/vanta/core/system/JarManager;->initializeJarEnvironment()V

    .line 57
    iget-object v2, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    const-string v2, "JAR environment initialized successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_19
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 62
    :goto_11
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_17
    move-exception v0

    goto :goto_20

    :catch_19
    move-exception v2

    .line 60
    :try_start_1a
    const-string v3, "Failed to initialize JAR environment"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    goto :goto_11

    .line 62
    :goto_20
    iget-object v2, p0, Lio/vanta/core/system/JarManager;->mIsInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    throw v0
.end method

.method private processJarFile(Landroid/content/Context;Lio/vanta/core/system/JarConfig$JarDefinition;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing JAR file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lio/vanta/core/system/JarConfig$JarDefinition;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JarManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lio/vanta/core/system/JarManager;->mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0, p2}, Lio/vanta/core/system/JarManager;->getTargetFile(Lio/vanta/core/system/JarConfig$JarDefinition;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-direct {p0, v1, p2}, Lio/vanta/core/system/JarManager;->isFileValid(Ljava/io/File;Lio/vanta/core/system/JarConfig$JarDefinition;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "JAR file already exists and is valid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 158
    :cond_5b
    invoke-direct {p0, p1, p2, v1}, Lio/vanta/core/system/JarManager;->copyJarFromAssets(Landroid/content/Context;Lio/vanta/core/system/JarConfig$JarDefinition;Ljava/io/File;)V

    .line 161
    invoke-direct {p0, v1, p2}, Lio/vanta/core/system/JarManager;->isFileValid(Ljava/io/File;Lio/vanta/core/system/JarConfig$JarDefinition;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 165
    iget-object p1, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Successfully processed JAR file: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_7c
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "JAR file verification failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_91
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid JAR definition: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyJarEnvironment()V
    .registers 10

    .line 243
    sget-object v0, Lio/vanta/core/system/JarManager;->REQUIRED_JARS:[Lio/vanta/core/system/JarConfig$JarDefinition;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    const-string v5, "JarManager"

    if-ge v4, v1, :cond_4f

    aget-object v6, v0, v4

    .line 244
    invoke-virtual {v6}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v7

    .line 245
    iget-object v8, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    if-eqz v8, :cond_20

    .line 246
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4c

    .line 247
    :cond_20
    invoke-virtual {v6}, Lio/vanta/core/system/JarConfig$JarDefinition;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Required JAR file missing: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_4c

    .line 251
    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Optional JAR file missing: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_4f
    if-nez v2, :cond_57

    .line 257
    const-string v0, "JAR environment verification failed - some required files are missing"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_57
    const-string v0, "JAR environment verification passed"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearCache()V
    .registers 3

    .line 265
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 266
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 267
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 268
    const-string v0, "JarManager"

    const-string v1, "JAR cache cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCacheStats()Ljava/lang/String;
    .registers 5

    .line 273
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/JarManager;->mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/core/system/JarManager;->mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 273
    const-string v1, "JAR Cache Stats - Files: %d, Hashes: %d, Definitions: %d, Initialized: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyJar()Ljava/io/File;
    .registers 2

    .line 106
    const-string v0, "empty.jar"

    invoke-virtual {p0, v0}, Lio/vanta/core/system/JarManager;->getJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 90
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "JarManager"

    if-nez v0, :cond_12

    .line 91
    const-string v0, "JAR environment not initialized, attempting sync initialization"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lio/vanta/core/system/JarManager;->initializeSync()V

    .line 95
    :cond_12
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_23

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v0

    .line 100
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JAR file not found in cache: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getJarInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 279
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mJarCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 280
    iget-object v1, p0, Lio/vanta/core/system/JarManager;->mJarDefinitions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/JarConfig$JarDefinition;

    .line 281
    iget-object v2, p0, Lio/vanta/core/system/JarManager;->mJarHashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_5f

    if-nez v1, :cond_1d

    goto :goto_5f

    .line 288
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v2, :cond_4a

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :cond_4a
    const-string v2, "N/A"

    .line 290
    :goto_4c
    invoke-virtual {v1}, Lio/vanta/core/system/JarConfig$JarDefinition;->isRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v0, v2, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 287
    const-string v0, "JAR: %s, Size: %d bytes, Hash: %s, Required: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 284
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JAR not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJunitJar()Ljava/io/File;
    .registers 2

    .line 111
    const-string v0, "junit.jar"

    invoke-virtual {p0, v0}, Lio/vanta/core/system/JarManager;->getJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public initializeAsync()V
    .registers 4

    .line 50
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_21

    .line 54
    :cond_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/vanta/core/system/JarManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/vanta/core/system/JarManager$$ExternalSyntheticLambda0;-><init>(Lio/vanta/core/system/JarManager;)V

    const-string v2, "JarManager-Init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_21
    :goto_21
    return-void
.end method

.method public initializeSync()V
    .registers 4

    .line 69
    const-string v0, "JarManager"

    iget-object v1, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 74
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lio/vanta/core/system/JarManager;->initializeJarEnvironment()V

    .line 75
    iget-object v1, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    const-string v1, "JAR environment initialized successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v1

    .line 78
    const-string v2, "Failed to initialize JAR environment"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "JAR environment initialization failed"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isReady()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lio/vanta/core/system/JarManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
