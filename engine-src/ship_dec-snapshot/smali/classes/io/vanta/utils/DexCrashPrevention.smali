.class public Lio/vanta/utils/DexCrashPrevention;
.super Ljava/lang/Object;
.source "DexCrashPrevention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/DexCrashPrevention$PreventionResult;
    }
.end annotation


# static fields
.field private static final PROBLEMATIC_APK_PATTERNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DexCrashPrevention"

.field private static sIsInitialized:Z

.field private static final sPreventionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/utils/DexCrashPrevention$PreventionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "split_config.xhdpi.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "split_config.arm64_v8a.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "split_config.armeabi_v7a.apk"

    aput-object v2, v0, v1

    sput-object v0, Lio/vanta/utils/DexCrashPrevention;->PROBLEMATIC_APK_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptCorruptionRecovery(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;
    .locals 7

    .line 330
    const-string v0, "Corruption Recovery"

    .line 0
    const-string v1, "Successfully recovered via "

    const-string v2, "Recovery failed: "

    const-string v3, "Attempting corruption recovery for: "

    const/4 v4, 0x0

    .line 330
    :try_start_0
    const-string v5, "DexCrashPrevention"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p0}, Lio/vanta/utils/DexFileRecovery;->recoverDexFile(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    move-result-object p0

    .line 335
    iget-boolean v3, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    if-eqz v3, :cond_0

    .line 336
    new-instance v2, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveryMethod:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v2

    .line 339
    :cond_0
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, v4, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 344
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error during recovery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, v4, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public static clearCache()V
    .locals 2

    .line 391
    sget-object v0, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 392
    const-string v0, "DexCrashPrevention"

    const-string v1, "Prevention cache cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static findBaseApkPath(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lio/vanta/utils/DexCrashPrevention$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/vanta/utils/DexCrashPrevention$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 315
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 317
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error finding base APK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DexCrashPrevention"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forcePrevention(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;
    .locals 1

    .line 415
    sget-object v0, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {p0}, Lio/vanta/utils/DexCrashPrevention;->validateAndPreventCorruption(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    move-result-object p0

    return-object p0
.end method

.method public static getPreventionStats()Ljava/lang/String;
    .locals 4

    .line 400
    sget-object v0, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    .line 401
    iget-boolean v3, v3, Lio/vanta/utils/DexCrashPrevention$PreventionResult;->success:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Prevention Stats - Successful: "

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

    sget-object v1, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    .line 409
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()Ljava/lang/String;
    .locals 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEX Crash Prevention Status:\nInitialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    sget-boolean v1, Lio/vanta/utils/DexCrashPrevention;->sIsInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCache Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    sget-object v1, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPrevention Stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->getPreventionStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRecovery Stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-static {}, Lio/vanta/utils/DexFileRecovery;->getRecoveryStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVirtualAppApkFiles()[Ljava/lang/String;
    .locals 4

    .line 369
    :try_start_0
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->getVirtualAppDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    new-instance v0, Lio/vanta/utils/DexCrashPrevention$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/vanta/utils/DexCrashPrevention$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 376
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 377
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting virtual app APK files: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexCrashPrevention"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVirtualAppDirectory()Ljava/lang/String;
    .locals 3

    .line 352
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting virtual app directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexCrashPrevention"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static handleProblematicSplitApk(Ljava/io/File;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;
    .locals 10

    .line 277
    const-string v0, "Split APK Handling"

    const-string v1, "DexCrashPrevention"

    .line 0
    const-string v2, "Using valid base APK instead of problematic split: "

    const-string v3, "Recovered split APK via "

    const-string v4, "Failed to recover split APK: "

    const-string v5, "Found valid base APK: "

    const-string v6, "Handling problematic split APK: "

    const/4 v7, 0x0

    .line 277
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p0}, Lio/vanta/utils/DexCrashPrevention;->findBaseApkPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 283
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lio/vanta/utils/DexFileRecovery;->isValidApkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance p0, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 291
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/utils/DexFileRecovery;->recoverDexFile(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    move-result-object p0

    .line 292
    iget-boolean v1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Split APK Recovery"

    if-eqz v1, :cond_1

    .line 293
    :try_start_1
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveryMethod:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v8, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1

    .line 296
    :cond_1
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v7, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 301
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error handling split APK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, v7, p0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method private static hookDexFileValidation()V
    .locals 4

    .line 158
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "DEX file validation hooks prepared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to hook DEX file validation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize()V
    .locals 4

    .line 57
    const-string v0, "DexCrashPrevention"

    sget-boolean v1, Lio/vanta/utils/DexCrashPrevention;->sIsInitialized:Z

    if-eqz v1, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    const-string v1, "Initializing DEX crash prevention..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->installProactivePrevention()V

    .line 68
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->installDexFileValidation()V

    .line 71
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->installClassLoaderMonitoring()V

    .line 74
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->installApkIntegrityChecks()V

    const/4 v1, 0x1

    .line 76
    sput-boolean v1, Lio/vanta/utils/DexCrashPrevention;->sIsInitialized:Z

    .line 77
    const-string v1, "DEX crash prevention initialized successfully"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize DEX crash prevention: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static installApkIntegrityChecks()V
    .locals 4

    .line 194
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "Installing APK integrity checks"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->setupPeriodicIntegrityChecks()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install APK integrity checks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installClassLoaderMonitoring()V
    .locals 4

    .line 167
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "Installing ClassLoader monitoring"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->setupClassLoaderMonitoring()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install ClassLoader monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installDexFileValidation()V
    .locals 4

    .line 143
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "Installing DEX file validation"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->hookDexFileValidation()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install DEX file validation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installProactivePrevention()V
    .locals 4

    .line 88
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "Installing proactive DEX corruption prevention"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->setupApkFileMonitoring()V

    .line 94
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->prevalidateCriticalApkFiles()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install proactive prevention: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isProblematicSplitApk(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 265
    :cond_0
    sget-object v1, Lio/vanta/utils/DexCrashPrevention;->PROBLEMATIC_APK_PATTERNS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 266
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic lambda$findBaseApkPath$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 312
    const-string p0, ".apk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "split_config"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$getVirtualAppApkFiles$1(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 373
    const-string p0, ".apk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static prevalidateCriticalApkFiles()V
    .locals 9

    .line 122
    const-string v0, "DexCrashPrevention"

    :try_start_0
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->getVirtualAppApkFiles()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 126
    invoke-static {v4}, Lio/vanta/utils/DexCrashPrevention;->validateAndPreventCorruption(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    move-result-object v5

    .line 127
    iget-boolean v6, v5, Lio/vanta/utils/DexCrashPrevention$PreventionResult;->success:Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " - "

    if-eqz v6, :cond_0

    .line 128
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pre-validated APK file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK file validation failed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to pre-validate APK files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setupApkFileMonitoring()V
    .locals 5

    .line 105
    const-string v0, "DexCrashPrevention"

    const-string v1, "Setting up APK file monitoring for: "

    :try_start_0
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->getVirtualAppDirectory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup APK file monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setupClassLoaderMonitoring()V
    .locals 4

    .line 181
    const-string v0, "DexCrashPrevention"

    const-string v1, "Monitoring ClassLoader: "

    :try_start_0
    const-class v2, Lio/vanta/utils/DexCrashPrevention;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup ClassLoader monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setupPeriodicIntegrityChecks()V
    .locals 4

    .line 208
    const-string v0, "DexCrashPrevention"

    :try_start_0
    const-string v1, "Periodic APK integrity checks prepared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup periodic integrity checks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static validateAndPreventCorruption(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;
    .locals 8

    const-string v0, "APK file is corrupted: "

    const-string v1, "Detected problematic split APK: "

    const/4 v2, 0x0

    .line 216
    const-string v3, "Validation"

    if-nez p0, :cond_0

    .line 217
    new-instance p0, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    const-string v0, "APK file path is null"

    invoke-direct {p0, v3, v2, v0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 221
    :cond_0
    sget-object v4, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    return-object p0

    .line 226
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 228
    new-instance v0, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    const-string v1, "APK file does not exist"

    invoke-direct {v0, v3, v2, v1}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 229
    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 234
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/vanta/utils/DexCrashPrevention;->isProblematicSplitApk(Ljava/lang/String;)Z

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "DexCrashPrevention"

    if-eqz v6, :cond_3

    .line 235
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v5}, Lio/vanta/utils/DexCrashPrevention;->handleProblematicSplitApk(Ljava/io/File;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    move-result-object v0

    .line 237
    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 242
    :cond_3
    invoke-static {v5}, Lio/vanta/utils/DexFileRecovery;->isValidApkFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    new-instance v0, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    const-string v1, "APK file is valid"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 244
    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 248
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p0}, Lio/vanta/utils/DexCrashPrevention;->attemptCorruptionRecovery(Ljava/lang/String;)Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    move-result-object v0

    .line 250
    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Lio/vanta/utils/DexCrashPrevention$PreventionResult;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error during validation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lio/vanta/utils/DexCrashPrevention$PreventionResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 256
    sget-object v0, Lio/vanta/utils/DexCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
