.class public Lio/vanta/core/system/pm/installer/RemoveAppExecutor;
.super Ljava/lang/Object;
.source "RemoveAppExecutor.java"

# interfaces
.implements Lio/vanta/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I
    .locals 0

    .line 12
    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    const/4 p1, 0x0

    return p1
.end method
