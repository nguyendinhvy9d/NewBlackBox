.class Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;
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
    name = "DexExtractionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/DexFileRecovery-IA;)V
    .registers 2

    invoke-direct {p0}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;-><init>()V

    return-void
.end method

.method private extractDexFromApk(Ljava/io/File;)Ljava/lang/String;
    .registers 10

    .line 296
    const-string v0, "DexFileRecovery"

    .line 0
    const-string v1, "classes_"

    .line 296
    :try_start_4
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_ac

    .line 297
    :try_start_9
    const-string p1, "classes.dex"

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_9e

    .line 300
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "dex_recovery"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 306
    :cond_29
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".dex"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_a2

    .line 308
    :try_start_49
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_92

    const/16 v3, 0x2000

    .line 310
    :try_start_50
    new-array v3, v3, [B

    .line 312
    :goto_52
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5e

    const/4 v6, 0x0

    .line 313
    invoke-virtual {v1, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_88

    goto :goto_52

    .line 315
    :cond_5e
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_92

    if-eqz p1, :cond_66

    :try_start_63
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 317
    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extracted DEX to: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_a2

    .line 320
    :try_start_84
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_ac

    return-object p1

    :catchall_88
    move-exception v3

    .line 307
    :try_start_89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v1

    :try_start_8e
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_91
    throw v3
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v1

    if-eqz p1, :cond_9d

    :try_start_95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception p1

    :try_start_9a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9d
    :goto_9d
    throw v1
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_a2

    .line 320
    :cond_9e
    :try_start_9e
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_ac

    goto :goto_c3

    :catchall_a2
    move-exception p1

    .line 296
    :try_start_a3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v1

    :try_start_a8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ab
    throw p1
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to extract DEX from APK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .registers 5

    const-string v0, "Successfully extracted DEX from corrupted APK: "

    .line 277
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".apk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_44

    .line 283
    :cond_1a
    invoke-direct {p0, v1}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;->extractDexFromApk(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 285
    const-string v1, "DexFileRecovery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    invoke-virtual {p0}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 289
    :cond_3c
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "Failed to extract DEX from corrupted APK"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 279
    :cond_44
    :goto_44
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "Not an APK file or file doesn\'t exist"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    return-object p1

    :catch_4c
    move-exception p1

    .line 291
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in DEX extraction strategy: "

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
    .registers 2

    .line 266
    const-string v0, "DEX Extraction"

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method
