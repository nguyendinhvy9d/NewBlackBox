.class public Lio/vanta/core/system/JarConfig;
.super Ljava/lang/Object;
.source "JarConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/JarConfig$JarDefinition;
    }
.end annotation


# static fields
.field public static final CACHE_CLEANUP_INTERVAL_MS:J = 0x493e0L

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final EMPTY_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

.field public static final ENABLE_ASYNC_LOADING:Z = true

.field public static final ENABLE_FILE_HASHING:Z = true

.field public static final ENABLE_SIZE_VALIDATION:Z = true

.field public static final JUNIT_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

.field public static final MAX_BUFFER_SIZE:I = 0x8000

.field public static final MAX_CACHE_SIZE:I = 0xa

.field public static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final MAX_RETRY_DELAY_MS:J = 0x1388L

.field public static final MIN_BUFFER_SIZE:I = 0x400

.field public static final RETRY_DELAY_MS:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 32
    new-instance v0, Lio/vanta/core/system/JarConfig$JarDefinition;

    const-string v5, "Empty JAR for fallback DEX loading"

    const/4 v6, 0x1

    const-string v1, "empty.jar"

    const-string v2, "empty.apk"

    const-wide/16 v3, 0x64

    invoke-direct/range {v0 .. v6}, Lio/vanta/core/system/JarConfig$JarDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    sput-object v0, Lio/vanta/core/system/JarConfig;->EMPTY_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

    .line 40
    new-instance v1, Lio/vanta/core/system/JarConfig$JarDefinition;

    const-string v6, "JUnit testing framework support"

    const/4 v7, 0x0

    const-string v2, "junit.jar"

    const-string v3, "junit.apk"

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v1 .. v7}, Lio/vanta/core/system/JarConfig$JarDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    sput-object v1, Lio/vanta/core/system/JarConfig;->JUNIT_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJarDefinition(Ljava/lang/String;)Lio/vanta/core/system/JarConfig$JarDefinition;
    .registers 6

    .line 74
    invoke-static {}, Lio/vanta/core/system/JarConfig;->getRequiredJars()[Lio/vanta/core/system/JarConfig$JarDefinition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 75
    invoke-virtual {v3}, Lio/vanta/core/system/JarConfig$JarDefinition;->getAssetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOptimalBufferSize()I
    .registers 4

    .line 97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x20000000

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    const v0, 0x8000

    return v0

    :cond_13
    const-wide/32 v2, 0x10000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    const/16 v0, 0x2000

    return v0

    :cond_1d
    const/16 v0, 0x400

    return v0
.end method

.method public static getRequiredJars()[Lio/vanta/core/system/JarConfig$JarDefinition;
    .registers 3

    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [Lio/vanta/core/system/JarConfig$JarDefinition;

    const/4 v1, 0x0

    sget-object v2, Lio/vanta/core/system/JarConfig;->EMPTY_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/vanta/core/system/JarConfig;->JUNIT_JAR:Lio/vanta/core/system/JarConfig$JarDefinition;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static validateFile(Ljava/io/File;Lio/vanta/core/system/JarConfig$JarDefinition;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_19

    .line 88
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/vanta/core/system/JarConfig$JarDefinition;->getMinSize()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-gez p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    :goto_19
    return v0
.end method
