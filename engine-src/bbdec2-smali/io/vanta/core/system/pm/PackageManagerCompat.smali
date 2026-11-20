.class public Lio/vanta/core/system/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 378
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lio/vanta/core/env/AppSystemEnv;->isBlackPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_a

    return p2

    .line 381
    :cond_a
    iget-boolean p0, p1, Lio/vanta/core/system/pm/BPackageUserState;->installed:Z

    if-eqz p0, :cond_15

    iget-boolean p0, p1, Lio/vanta/core/system/pm/BPackageUserState;->hidden:Z

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    return p2
.end method

.method private static fixJar(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isQ()Z

    move-result v1

    const-string v2, "/system/framework/org.apache.http.legacy.boot.jar"

    if-eqz v1, :cond_1d

    .line 392
    const-string v1, "/system/framework/org.apache.http.legacy.jar"

    invoke-static {v1}, Lio/vanta/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 393
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 395
    :cond_19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 398
    :cond_1d
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_20
    const/4 v1, 0x0

    .line 405
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    return-void
.end method

.method public static generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 221
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_c
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 226
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 227
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 228
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Activity;->owner:Lio/vanta/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 10

    .line 284
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return-object v0

    .line 289
    :cond_a
    :try_start_a
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1af

    .line 293
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_29

    .line 295
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 298
    :cond_29
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_38

    .line 300
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 302
    :cond_38
    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 303
    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_64

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_64

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_73

    .line 306
    :cond_64
    iget-object v4, p0, Lio/vanta/core/system/pm/BPackage;->installOption:Lio/vanta/entity/pm/InstallOption;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result v4

    if-nez v4, :cond_73

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 309
    :cond_73
    :goto_73
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 310
    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 311
    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    iget p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    iput p1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 314
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_9d

    .line 315
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    goto :goto_cb

    .line 318
    :cond_9d
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_cb

    .line 319
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 320
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_bf

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_c3

    :cond_bf
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_c3
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 321
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 324
    :cond_cb
    :goto_cb
    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_d4

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_100

    .line 326
    :cond_d4
    :try_start_d4
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_100

    .line 327
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_100

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_100

    .line 328
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 329
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_f8

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_fa

    :cond_f8
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_fa
    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 330
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;
    :try_end_100
    .catchall {:try_start_d4 .. :try_end_100} :catchall_100

    .line 337
    :catchall_100
    :cond_100
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isL()Z

    move-result p1

    if-eqz p1, :cond_14d

    if-eqz p2, :cond_110

    .line 341
    :try_start_108
    invoke-static {p2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/content/pm/ApplicationInfoLContext;->primaryCpuAbi()Ljava/lang/String;

    move-result-object v0
    :try_end_110
    .catchall {:try_start_108 .. :try_end_110} :catchall_110

    :catchall_110
    :cond_110
    if-eqz v0, :cond_118

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_128

    .line 346
    :cond_118
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz p1, :cond_126

    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_126

    .line 347
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, p1, v3

    goto :goto_128

    .line 349
    :cond_126
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 352
    :cond_128
    :goto_128
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lvanta/android/content/pm/ApplicationInfoLContext;->_set_primaryCpuAbi(Ljava/lang/Object;)V

    .line 353
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p1

    invoke-static {p2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/pm/ApplicationInfoLContext;->scanPublicSourceDir()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lvanta/android/content/pm/ApplicationInfoLContext;->_set_scanPublicSourceDir(Ljava/lang/Object;)V

    .line 354
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p1

    invoke-static {p2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p2

    invoke-interface {p2}, Lvanta/android/content/pm/ApplicationInfoLContext;->scanSourceDir()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lvanta/android/content/pm/ApplicationInfoLContext;->_set_scanSourceDir(Ljava/lang/Object;)V

    .line 356
    :cond_14d
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_1ab

    .line 357
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p0, p3}, Lio/vanta/core/env/BEnvironment;->getDeDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 359
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_deviceEncryptedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_172

    .line 360
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_deviceEncryptedDataDir(Ljava/lang/Object;)V

    .line 362
    :cond_172
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_credentialEncryptedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_185

    .line 363
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_credentialEncryptedDataDir(Ljava/lang/Object;)V

    .line 365
    :cond_185
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_deviceProtectedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_198

    .line 366
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_deviceProtectedDataDir(Ljava/lang/Object;)V

    .line 368
    :cond_198
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_credentialProtectedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_1ab

    .line 369
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_credentialProtectedDataDir(Ljava/lang/Object;)V

    .line 372
    :cond_1ab
    invoke-static {v2}, Lio/vanta/core/system/pm/PackageManagerCompat;->fixJar(Landroid/content/pm/ApplicationInfo;)V

    return-object v2

    :catch_1af
    return-object v0
.end method

.method public static generateInstrumentationInfo(Lio/vanta/core/system/pm/BPackage$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    .line 276
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 278
    :cond_b
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 279
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePackageInfo(Lio/vanta/core/system/pm/BPackage;IJJLio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 13

    .line 57
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p6, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 62
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    iget v2, p0, Lio/vanta/core/system/pm/BPackage;->mVersionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 64
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 66
    iget v2, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserLabel:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 67
    invoke-static {p0, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 70
    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 71
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_44

    .line 72
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 73
    iget-object p3, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_44
    and-int/lit16 p2, p1, 0x100

    const/4 p3, 0x0

    if-eqz p2, :cond_4d

    .line 78
    new-array p2, p3, [I

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_4d
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_83

    .line 81
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    if-eqz p2, :cond_5c

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_5d

    :cond_5c
    move p2, p3

    :goto_5d
    if-lez p2, :cond_6a

    .line 83
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 84
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    :cond_6a
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p2, :cond_75

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_76

    :cond_75
    move p2, p3

    :goto_76
    if-lez p2, :cond_83

    .line 88
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 89
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_83
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_b3

    .line 93
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 94
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b3

    .line 97
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_95
    if-ge p5, p2, :cond_ab

    .line 99
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Activity;

    add-int/lit8 v4, v2, 0x1

    .line 100
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_95

    .line 102
    :cond_ab
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_b3
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_e3

    .line 106
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 107
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_e3

    .line 110
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_c5
    if-ge p5, p2, :cond_db

    .line 112
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Activity;

    add-int/lit8 v4, v2, 0x1

    .line 113
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_c5

    .line 115
    :cond_db
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_e3
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_123

    .line 119
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 120
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_123

    .line 123
    new-array p4, p2, [Landroid/content/pm/ServiceInfo;

    move p5, p3

    move v2, p5

    :goto_f5
    if-ge p5, p2, :cond_11b

    .line 125
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Service;

    .line 127
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateServiceInfo(Lio/vanta/core/system/pm/BPackage$Service;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_106

    goto :goto_118

    :cond_106
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_113

    .line 130
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_118

    add-int/lit8 v4, v2, 0x1

    .line 131
    aput-object v3, p4, v2

    goto :goto_117

    :cond_113
    add-int/lit8 v4, v2, 0x1

    .line 134
    aput-object v3, p4, v2

    :goto_117
    move v2, v4

    :cond_118
    :goto_118
    add-int/lit8 p5, p5, 0x1

    goto :goto_f5

    .line 137
    :cond_11b
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ServiceInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_123
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_155

    .line 141
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 142
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_155

    .line 145
    new-array p4, p2, [Landroid/content/pm/ProviderInfo;

    move p5, p3

    move v2, p5

    :goto_135
    if-ge p5, p2, :cond_14d

    .line 147
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 148
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_14a

    add-int/lit8 v4, v2, 0x1

    .line 150
    aput-object v3, p4, v2

    move v2, v4

    :cond_14a
    add-int/lit8 p5, p5, 0x1

    goto :goto_135

    .line 153
    :cond_14d
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_155
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_17d

    .line 157
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 158
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_17d

    .line 160
    new-array p4, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move p4, p3

    :goto_168
    if-ge p4, p2, :cond_17d

    .line 162
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lio/vanta/core/system/pm/BPackage$Instrumentation;

    .line 162
    invoke-static {p6, p1}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateInstrumentationInfo(Lio/vanta/core/system/pm/BPackage$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_168

    :cond_17d
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_1c8

    .line 168
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 169
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1a5

    .line 171
    new-array p4, p2, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p4, p3

    :goto_190
    if-ge p4, p2, :cond_1a5

    .line 173
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p6, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lio/vanta/core/system/pm/BPackage$Permission;

    invoke-static {p6, p1}, Lio/vanta/core/system/pm/PackageManagerCompat;->generatePermissionInfo(Lio/vanta/core/system/pm/BPackage$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_190

    .line 176
    :cond_1a5
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 177
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1c8

    .line 179
    new-array p4, p2, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 180
    new-array p4, p2, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    :goto_1b7
    if-ge p3, p2, :cond_1c8

    .line 182
    iget-object p4, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 183
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p4, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b7

    .line 194
    :cond_1c8
    :try_start_1c8
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c8 .. :try_end_1d6} :catch_1d6

    :catch_1d6
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/vanta/fake/service/GmsCallerFix;->logSigQ(Ljava/lang/String;I)V

    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_1f4

    if-eqz v1, :cond_1f0

    .line 198
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1f0

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-nez p2, :cond_1eb

    goto :goto_1f0

    .line 201
    :cond_1eb
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_1f4

    .line 199
    :cond_1f0
    :goto_1f0
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 204
    :cond_1f4
    :goto_1f4
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result p2

    if-eqz p2, :cond_22c

    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_22c

    if-eqz v1, :cond_20b

    .line 206
    iget-object p1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_206

    goto :goto_20b

    .line 213
    :cond_206
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_22c

    .line 207
    :cond_20b
    :goto_20b
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 208
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    if-eqz p2, :cond_22c

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_22c

    .line 209
    invoke-static {p1}, Lvanta/android/content/pm/BRPackageParserSigningDetails;->get(Ljava/lang/Object;)Lvanta/android/content/pm/PackageParserSigningDetailsContext;

    move-result-object p2

    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-interface {p2, p0}, Lvanta/android/content/pm/PackageParserSigningDetailsContext;->_set_signatures(Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lvanta/android/content/pm/BRSigningInfo;->get()Lvanta/android/content/pm/SigningInfoStatic;

    move-result-object p0

    invoke-interface {p0, p1}, Lvanta/android/content/pm/SigningInfoStatic;->_new(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/SigningInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_22c
    :goto_22c
    invoke-static {v0}, Lio/vanta/fake/service/GmsCallerFix;->xjLogSig(Landroid/content/pm/PackageInfo;)V

    return-object v0
.end method

.method public static generatePackageInfo(Lio/vanta/core/system/pm/BPackageSettings;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 44
    :cond_4
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    if-eqz v1, :cond_14

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    move v8, p3

    .line 48
    :try_start_f
    invoke-static/range {v1 .. v8}, Lio/vanta/core/system/pm/PackageManagerCompat;->generatePackageInfo(Lio/vanta/core/system/pm/BPackage;IJJLio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    :cond_14
    return-object v0
.end method

.method public static generatePermissionInfo(Lio/vanta/core/system/pm/BPackage$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    .line 265
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 267
    :cond_b
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 268
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 245
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 249
    :cond_c
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 250
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v2, :cond_18

    return-object v1

    .line 252
    :cond_18
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 253
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2c

    .line 255
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 257
    :cond_2c
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateServiceInfo(Lio/vanta/core/system/pm/BPackage$Service;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 233
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_c
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 238
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 239
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 240
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Service;->owner:Lio/vanta/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 4

    .line 409
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getBPackageSetting(Ljava/lang/String;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 411
    invoke-static {}, Lvanta/android/content/res/BRAssetManager;->get()Lvanta/android/content/res/AssetManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/res/AssetManagerStatic;->_new()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lvanta/android/content/res/BRAssetManager;->get(Ljava/lang/Object;)Lvanta/android/content/res/AssetManagerContext;

    move-result-object v1

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, p1}, Lvanta/android/content/res/AssetManagerContext;->addAssetPath(Ljava/lang/String;)Ljava/lang/Integer;

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 414
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p1

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method
