.class public Lio/vanta/core/system/pm/installer/CreatePackageExecutor;
.super Ljava/lang/Object;
.source "CreatePackageExecutor.java"

# interfaces
.implements Lio/vanta/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I
    .registers 4

    .line 13
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 16
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 17
    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    const/4 p1, 0x0

    return p1
.end method
