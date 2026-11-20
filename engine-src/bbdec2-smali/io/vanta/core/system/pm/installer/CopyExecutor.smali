.class public Lio/vanta/core/system/pm/installer/CopyExecutor;
.super Ljava/lang/Object;
.source "CopyExecutor.java"

# interfaces
.implements Lio/vanta/core/system/pm/installer/Executor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CopyExecutor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I
    .locals 9

    .line 22
    const-string p3, ": "

    const-string v0, "CopyExecutor"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lio/vanta/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lio/vanta/utils/NativeUtils;->copyNativeLib(Ljava/io/File;Ljava/io/File;)V

    .line 24
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v7, v7, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lio/vanta/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lio/vanta/utils/NativeUtils;->copyNativeLib(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 29
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No usable native libs in split "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Native libs copy notice for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v4, v4, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p3, 0x2

    .line 36
    invoke-virtual {p2, p3}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 38
    new-instance p3, Ljava/io/File;

    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lio/vanta/core/env/BEnvironment;->getBaseApkDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x8

    .line 41
    :try_start_3
    invoke-virtual {p2, v3}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 42
    invoke-static {p3, v2}, Lio/vanta/utils/FileUtils;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 44
    invoke-static {p3, v2}, Lio/vanta/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_2

    .line 47
    :cond_1
    invoke-static {p3, v2}, Lio/vanta/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 49
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 51
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 54
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length p2, p2

    if-lez p2, :cond_5

    .line 55
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length p2, p2

    new-array p3, p2, [Ljava/lang/String;

    move v2, v1

    .line 56
    :goto_3
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 57
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v4, v4, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v4, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v4, v4, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Lio/vanta/core/env/BEnvironment;->getSplitApkDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Lio/vanta/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 60
    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 63
    :cond_3
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iput-object p3, v2, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copied "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " split APK(s) for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x1

    return p1

    :cond_4
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p2, p1}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    :cond_5
    :goto_4
    return v1
.end method
