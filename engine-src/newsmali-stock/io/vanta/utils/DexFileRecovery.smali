.class public Lio/vanta/utils/DexFileRecovery;
.super Ljava/lang/Object;
.source "DexFileRecovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;,
        Lio/vanta/utils/DexFileRecovery$HostAppApkStrategy;,
        Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;,
        Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;,
        Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;,
        Lio/vanta/utils/DexFileRecovery$RecoveryResult;,
        Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;
    }
.end annotation


# static fields
.field private static final MAX_RECOVERY_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DexFileRecovery"

.field private static final sRecoveryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/utils/DexFileRecovery$RecoveryResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRecoveryStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryStrategies:Ljava/util/List;

    .line 40
    invoke-static {}, Lio/vanta/utils/DexFileRecovery;->initializeRecoveryStrategies()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .registers 2

    .line 415
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 416
    const-string v0, "DexFileRecovery"

    const-string v1, "Recovery cache cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static forceRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .registers 2

    .line 439
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {p0}, Lio/vanta/utils/DexFileRecovery;->recoverDexFile(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    move-result-object p0

    return-object p0
.end method

.method public static getRecoveryStats()Ljava/lang/String;
    .registers 4

    .line 424
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    .line 425
    iget-boolean v3, v3, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    if-eqz v3, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 432
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Recovery Stats - Successful: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Total Attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    .line 433
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initializeRecoveryStrategies()V
    .registers 3

    .line 83
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryStrategies:Ljava/util/List;

    new-instance v1, Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;-><init>(Lio/vanta/utils/DexFileRecovery-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lio/vanta/utils/DexFileRecovery$HostAppApkStrategy;

    invoke-direct {v1, v2}, Lio/vanta/utils/DexFileRecovery$HostAppApkStrategy;-><init>(Lio/vanta/utils/DexFileRecovery-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;

    invoke-direct {v1, v2}, Lio/vanta/utils/DexFileRecovery$SystemApkStrategy;-><init>(Lio/vanta/utils/DexFileRecovery-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;

    invoke-direct {v1, v2}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;-><init>(Lio/vanta/utils/DexFileRecovery-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;

    invoke-direct {v1, v2}, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;-><init>(Lio/vanta/utils/DexFileRecovery-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lio/vanta/utils/DexFileRecovery$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/vanta/utils/DexFileRecovery$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialized "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recovery strategies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexFileRecovery"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isValidApkFile(Ljava/io/File;)Z
    .registers 10

    .line 389
    const-string v0, ": "

    const-string v1, "DexFileRecovery"

    .line 0
    const-string v2, "APK validation failed for "

    const/4 v3, 0x0

    if-eqz p0, :cond_8a

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_8a

    .line 395
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_67

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-gez v4, :cond_1d

    return v3

    .line 400
    :cond_1d
    :try_start_1d
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_45

    .line 401
    :try_start_22
    const-string v5, "classes.dex"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 402
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_3b

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    move v5, v3

    .line 403
    :goto_37
    :try_start_37
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_45

    return v5

    :catchall_3b
    move-exception v5

    .line 400
    :try_start_3c
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v4

    :try_start_41
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    :catch_45
    move-exception v4

    .line 404
    :try_start_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_66} :catch_67

    return v3

    :catch_67
    move-exception v2

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error validating APK file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    return v3
.end method

.method static synthetic lambda$initializeRecoveryStrategies$0(Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;)I
    .registers 2

    .line 90
    invoke-interface {p1}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getPriority()I

    move-result p1

    invoke-interface {p0}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getPriority()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static recoverDexFile(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .registers 8

    if-nez p0, :cond_a

    .line 98
    new-instance p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "Corrupted file path is null"

    invoke-direct {p0, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 102
    :cond_a
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ": "

    const-string v3, "DexFileRecovery"

    if-eqz v1, :cond_37

    .line 103
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Using cached recovery result for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 108
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to recover corrupted DEX file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lio/vanta/utils/DexFileRecovery;->sRecoveryStrategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;

    .line 113
    :try_start_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying recovery strategy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {v1, p0}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    move-result-object v4

    .line 116
    iget-boolean v5, v4, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    if-eqz v5, :cond_a7

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery successful via "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveredFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v5, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v5, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 121
    :cond_a7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery failed via "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_cb} :catch_cc

    goto :goto_4f

    :catch_cc
    move-exception v4

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recovery strategy "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " threw exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 129
    :cond_f3
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All recovery strategies failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lio/vanta/utils/DexFileRecovery;->sRecoveryCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
