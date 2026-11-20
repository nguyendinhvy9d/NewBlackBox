.class public Lio/vanta/core/system/JarManagerTest;
.super Ljava/lang/Object;
.source "JarManagerTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JarManagerTest"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static testConfiguration()V
    .registers 8

    .line 79
    const-string v0, "Testing JAR configuration"

    const-string v1, "JarManagerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lio/vanta/core/system/JarConfig;->getRequiredJars()[Lio/vanta/core/system/JarConfig$JarDefinition;

    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JAR definitions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    array-length v2, v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_7b

    aget-object v4, v0, v3

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JAR: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Lio/vanta/core/system/JarConfig$JarDefinition;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MinSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 88
    invoke-virtual {v4}, Lio/vanta/core/system/JarConfig$JarDefinition;->getMinSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    invoke-virtual {v4}, Lio/vanta/core/system/JarConfig$JarDefinition;->isRequired()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-virtual {v4}, Lio/vanta/core/system/JarConfig$JarDefinition;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 94
    :cond_7b
    invoke-static {}, Lio/vanta/core/system/JarConfig;->getOptimalBufferSize()I

    move-result v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Optimal buffer size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "Validation enabled: true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "Hashing enabled: true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "Async loading enabled: true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static testJarFileRetrieval(Lio/vanta/core/system/JarManager;)V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lio/vanta/core/system/JarManager;->getEmptyJar()Ljava/io/File;

    move-result-object v0

    const-string v1, "JarManagerTest"

    if-eqz v0, :cond_e

    .line 57
    const-string v0, "Empty JAR retrieved successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 59
    :cond_e
    const-string v0, "Empty JAR retrieval failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_13
    invoke-virtual {p0}, Lio/vanta/core/system/JarManager;->getJunitJar()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 64
    const-string v0, "JUnit JAR retrieved successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 66
    :cond_1f
    const-string v0, "JUnit JAR retrieval failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_24
    const-string v0, "empty.jar"

    invoke-virtual {p0, v0}, Lio/vanta/core/system/JarManager;->getJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 71
    const-string p0, "Generic JAR retrieval for empty.jar successful"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_32
    const-string p0, "Generic JAR retrieval for empty.jar failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static testJarManager()V
    .registers 7

    .line 11
    const-string v0, "JUnit JAR info: "

    const-string v1, "Empty JAR info: "

    const-string v2, "Cache stats: "

    const-string v3, "Starting JAR Manager test"

    const-string v4, "JarManagerTest"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_d
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v3

    .line 17
    const-string v5, "Testing async initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v3}, Lio/vanta/core/system/JarManager;->initializeAsync()V

    const-wide/16 v5, 0x7d0

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 24
    invoke-virtual {v3}, Lio/vanta/core/system/JarManager;->isReady()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 25
    const-string v5, "Async initialization not complete, trying sync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v3}, Lio/vanta/core/system/JarManager;->initializeSync()V

    .line 30
    :cond_2c
    const-string v5, "Testing JAR file retrieval"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v3}, Lio/vanta/core/system/JarManagerTest;->testJarFileRetrieval(Lio/vanta/core/system/JarManager;)V

    .line 34
    const-string v5, "Testing cache statistics"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v3}, Lio/vanta/core/system/JarManager;->getCacheStats()Ljava/lang/String;

    move-result-object v5

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v2, "Testing individual JAR info"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v2, "empty.jar"

    invoke-virtual {v3, v2}, Lio/vanta/core/system/JarManager;->getJarInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v5, "junit.jar"

    invoke-virtual {v3, v5}, Lio/vanta/core/system/JarManager;->getJarInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "JAR Manager test completed successfully"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception v0

    .line 49
    const-string v1, "JAR Manager test failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
