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
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/DexFileRecovery-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;-><init>()V

    return-void
.end method

.method private extractDexFromApk(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .line 296
    const-string v0, "DexFileRecovery"

    .line 0
    const-string v1, "classes_"

    .line 296
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 297
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "classes.dex"

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_4

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

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 306
    :cond_0
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

    .line 308
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x2000

    .line 310
    :try_start_3
    new-array v3, v3, [B

    .line 312
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    .line 313
    invoke-virtual {v1, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 315
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 317
    :cond_2
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

    .line 320
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_0
    move-exception v3

    .line 307
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p1, :cond_3

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    .line 320
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_4
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_4

    :catchall_4
    move-exception p1

    .line 296
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_d
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
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

    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .locals 3

    const-string v0, "Successfully extracted DEX from corrupted APK: "

    .line 277
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".apk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0, v1}, Lio/vanta/utils/DexFileRecovery$DexExtractionStrategy;->extractDexFromApk(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

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
    :cond_1
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "Failed to extract DEX from corrupted APK"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 279
    :cond_2
    :goto_0
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "Not an APK file or file doesn\'t exist"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
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
    .locals 1

    .line 266
    const-string v0, "DEX Extraction"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method
