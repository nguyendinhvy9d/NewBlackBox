.class Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;
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
    name = "BackupRestoreStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/DexFileRecovery-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;-><init>()V

    return-void
.end method

.method private findBackupFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 358
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.][^.]+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    new-instance v1, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 370
    aget-object v1, p1, v0

    .line 371
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 372
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error finding backup file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexFileRecovery"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$findBackupFile$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 364
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ".bak"

    .line 365
    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".backup"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".old"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .locals 3

    const-string v0, "Found valid backup file: "

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;->findBackupFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/vanta/utils/DexFileRecovery;->isValidApkFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "DexFileRecovery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    invoke-virtual {p0}, Lio/vanta/utils/DexFileRecovery$BackupRestoreStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 350
    :cond_0
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "No valid backup files found"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 352
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in backup restore strategy: "

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

    .line 332
    const-string v0, "Backup Restore"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
