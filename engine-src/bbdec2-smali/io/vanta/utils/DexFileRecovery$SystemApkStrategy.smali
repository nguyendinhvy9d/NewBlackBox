.class Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;
.super Ljava/lang/Object;
.source "DexFileRecovery.java"

# interfaces
.implements Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/DexFileRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemApkStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/DexFileRecovery-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;-><init>()V

    return-void
.end method

.method static synthetic lambda$attemptRecovery$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 241
    const-string p0, ".apk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .locals 8

    const/4 p1, 0x4

    .line 227
    :try_start_0
    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "/system/app"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/priv-app"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/vendor/app"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "/product/app"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_2

    .line 234
    aget-object v3, v0, v1

    .line 235
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    new-instance v7, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 242
    array-length v7, v6

    if-lez v7, :cond_0

    .line 243
    aget-object v6, v6, v2

    .line 244
    invoke-static {v6}, Lio/vanta/utils/DexFileRecovery;->isValidApkFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    const-string p1, "DexFileRecovery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found valid system APK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "No valid system APK files found"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in system APK strategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 215
    const-string v0, "System APK"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method
