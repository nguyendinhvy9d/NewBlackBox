.class Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;
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
    name = "AlternativeApkStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/DexFileRecovery-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
    .locals 8

    .line 149
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-static {v3}, Lio/vanta/utils/DexFileRecovery;->isValidApkFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const-string p1, "DexFileRecovery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found valid alternative APK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/vanta/utils/DexFileRecovery$AlternativeApkStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance p1, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    const-string v0, "No valid alternative APK files found"

    invoke-direct {p1, v0}, Lio/vanta/utils/DexFileRecovery$RecoveryResult;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    new-instance v0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in alternative APK strategy: "

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

    .line 138
    const-string v0, "Alternative APK"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
