.class public Lio/vanta/core/env/BEnvironment;
.super Ljava/lang/Object;
.source "BEnvironment.java"


# static fields
.field public static EMPTY_JAR:Ljava/io/File;

.field public static JUNIT_JAR:Ljava/io/File;

.field private static final sExternalVirtualRoot:Ljava/io/File;

.field private static final sVirtualRoot:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nomad"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    .line 13
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lio/vanta/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "junit.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lio/vanta/core/env/BEnvironment;->JUNIT_JAR:Ljava/io/File;

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "empty.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lio/vanta/core/env/BEnvironment;->EMPTY_JAR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountsConf()Ljava/io/File;
    .registers 3

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "accounts.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppDir(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 135
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppLibDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 147
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppRootDir()Ljava/io/File;
    .registers 1

    .line 131
    const-string v0, ""

    invoke-static {v0}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseApkDir(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 139
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/base.apk"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 3

    .line 43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDatabasesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "databases"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 97
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "data/user/%d/%s"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataLibDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "lib"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "data/user_de/%d/%s"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "Android/data/%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lio/vanta/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalObbDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "Android/obb/%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalUserDir(I)Ljava/io/File;
    .registers 5

    .line 75
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "storage/emulated/%d/"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalVirtualRoot()Ljava/io/File;
    .registers 1

    .line 31
    sget-object v0, Lio/vanta/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static getFakeLocationConf()Ljava/io/File;
    .registers 3

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "fake-location.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageConf(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.conf"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProcDir()Ljava/io/File;
    .registers 3

    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "proc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProcDir(I)Ljava/io/File;
    .registers 5

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "%d"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-object v0
.end method

.method public static getSharedUserConf()Ljava/io/File;
    .registers 3

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared-user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSplitApkDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 6

    .line 143
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/split_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".apk"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemDir()Ljava/io/File;
    .registers 3

    .line 35
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUidConf()Ljava/io/File;
    .registers 3

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDir(I)Ljava/io/File;
    .registers 5

    .line 79
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "data/user/%d"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserInfoConf()Ljava/io/File;
    .registers 3

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVirtualRoot()Ljava/io/File;
    .registers 1

    .line 27
    sget-object v0, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static getXPModuleConf()Ljava/io/File;
    .registers 3

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xposed-module.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getXSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v1

    invoke-static {p0, v1}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shared_prefs/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load()V
    .registers 1

    .line 19
    sget-object v0, Lio/vanta/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 20
    sget-object v0, Lio/vanta/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 21
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 22
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 23
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-void
.end method
