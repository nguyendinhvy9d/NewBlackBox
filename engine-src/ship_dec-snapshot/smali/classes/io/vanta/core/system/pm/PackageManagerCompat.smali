.class public Lio/vanta/core/system/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 378
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lio/vanta/core/env/AppSystemEnv;->isBlackPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    .line 381
    :cond_0
    iget-boolean p0, p1, Lio/vanta/core/system/pm/BPackageUserState;->installed:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Lio/vanta/core/system/pm/BPackageUserState;->hidden:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method private static fixJar(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .line 390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isQ()Z

    move-result v1

    const-string v2, "/system/framework/org.apache.http.legacy.boot.jar"

    if-eqz v1, :cond_1

    .line 392
    const-string v1, "/system/framework/org.apache.http.legacy.jar"

    invoke-static {v1}, Lio/vanta/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
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
    .locals 3

    .line 221
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
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
    .locals 6

    .line 284
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 289
    :cond_0
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 293
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 295
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 298
    :cond_1
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 302
    :cond_2
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

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_3

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_3
    iget-object v4, p0, Lio/vanta/core/system/pm/BPackage;->installOption:Lio/vanta/entity/pm/InstallOption;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 309
    :cond_4
    :goto_0
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

    if-eqz p1, :cond_5

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_5

    .line 315
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    goto :goto_2

    .line 318
    :cond_5
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_7

    .line 319
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 320
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_1
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 321
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 324
    :cond_7
    :goto_2
    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_a

    .line 326
    :cond_8
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 327
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 328
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 329
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_3
    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 330
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 337
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_a
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isL()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p2, :cond_b

    .line 341
    :try_start_2
    invoke-static {p2}, Lvanta/android/content/pm/BRApplicationInfoL;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoLContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/content/pm/ApplicationInfoLContext;->primaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_b
    if-eqz v0, :cond_c

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 346
    :cond_c
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz p1, :cond_d

    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_d

    .line 347
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, p1, v3

    goto :goto_4

    .line 349
    :cond_d
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 352
    :cond_e
    :goto_4
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
    :cond_f
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_13

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

    if-eqz p0, :cond_10

    .line 360
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_deviceEncryptedDataDir(Ljava/lang/Object;)V

    .line 362
    :cond_10
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_credentialEncryptedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 363
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_credentialEncryptedDataDir(Ljava/lang/Object;)V

    .line 365
    :cond_11
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_deviceProtectedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 366
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_deviceProtectedDataDir(Ljava/lang/Object;)V

    .line 368
    :cond_12
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/content/pm/ApplicationInfoNContext;->_check_credentialProtectedDataDir()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 369
    invoke-static {v2}, Lvanta/android/content/pm/BRApplicationInfoN;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ApplicationInfoNContext;

    move-result-object p0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvanta/android/content/pm/ApplicationInfoNContext;->_set_credentialProtectedDataDir(Ljava/lang/Object;)V

    .line 372
    :cond_13
    invoke-static {v2}, Lio/vanta/core/system/pm/PackageManagerCompat;->fixJar(Landroid/content/pm/ApplicationInfo;)V

    return-object v2

    :catch_0
    return-object v0
.end method

.method public static generateInstrumentationInfo(Lio/vanta/core/system/pm/BPackage$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 276
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 278
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 279
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePackageInfo(Lio/vanta/core/system/pm/BPackage;IJJLio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 5

    .line 57
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p6, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
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

    if-nez p2, :cond_1

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

    :cond_1
    and-int/lit16 p2, p1, 0x100

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 78
    new-array p2, p3, [I

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_2
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_6

    .line 81
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_3
    move p2, p3

    :goto_0
    if-lez p2, :cond_4

    .line 83
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 84
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    :cond_4
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, p3

    :goto_1
    if-lez p2, :cond_6

    .line 88
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 89
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_8

    .line 93
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 94
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 97
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_2
    if-ge p5, p2, :cond_7

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

    goto :goto_2

    .line 102
    :cond_7
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_8
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_a

    .line 106
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 107
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 110
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_3
    if-ge p5, p2, :cond_9

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

    goto :goto_3

    .line 115
    :cond_9
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_a
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_f

    .line 119
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 120
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 123
    new-array p4, p2, [Landroid/content/pm/ServiceInfo;

    move p5, p3

    move v2, p5

    :goto_4
    if-ge p5, p2, :cond_e

    .line 125
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Service;

    .line 127
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateServiceInfo(Lio/vanta/core/system/pm/BPackage$Service;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_c

    .line 130
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_d

    add-int/lit8 v4, v2, 0x1

    .line 131
    aput-object v3, p4, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v4, v2, 0x1

    .line 134
    aput-object v3, p4, v2

    :goto_5
    move v2, v4

    :cond_d
    :goto_6
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    .line 137
    :cond_e
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ServiceInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_f
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_12

    .line 141
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 142
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 145
    new-array p4, p2, [Landroid/content/pm/ProviderInfo;

    move p5, p3

    move v2, p5

    :goto_7
    if-ge p5, p2, :cond_11

    .line 147
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 148
    invoke-static {v3, p1, p6, p7}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    add-int/lit8 v4, v2, 0x1

    .line 150
    aput-object v3, p4, v2

    move v2, v4

    :cond_10
    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    .line 153
    :cond_11
    invoke-static {p4, v2}, Lio/vanta/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_12
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_13

    .line 157
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 158
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 160
    new-array p4, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move p4, p3

    :goto_8
    if-ge p4, p2, :cond_13

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

    goto :goto_8

    :cond_13
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_15

    .line 168
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 169
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 171
    new-array p4, p2, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p4, p3

    :goto_9
    if-ge p4, p2, :cond_14

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

    goto :goto_9

    .line 176
    :cond_14
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 177
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15

    .line 179
    new-array p4, p2, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 180
    new-array p4, p2, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    :goto_a
    if-ge p3, p2, :cond_15

    .line 182
    iget-object p4, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 183
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p4, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 194
    :cond_15
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/vanta/fake/service/GmsCallerFix;->logSigQ(Ljava/lang/String;I)V

    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_18

    if-eqz v1, :cond_17

    .line 198
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_17

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-nez p2, :cond_16

    goto :goto_b

    .line 201
    :cond_16
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_c

    .line 199
    :cond_17
    :goto_b
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 204
    :cond_18
    :goto_c
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result p2

    if-eqz p2, :cond_1b

    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1b

    if-eqz v1, :cond_1a

    .line 206
    iget-object p1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_19

    goto :goto_d

    .line 213
    :cond_19
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_e

    .line 207
    :cond_1a
    :goto_d
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 208
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1b

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

    :cond_1b
    :goto_e
    invoke-static {v0}, Lio/vanta/fake/service/GmsCallerFix;->xjLogSig(Landroid/content/pm/PackageInfo;)V

    return-object v0
.end method

.method public static generatePackageInfo(Lio/vanta/core/system/pm/BPackageSettings;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    move v8, p3

    .line 48
    :try_start_0
    invoke-static/range {v1 .. v8}, Lio/vanta/core/system/pm/PackageManagerCompat;->generatePackageInfo(Lio/vanta/core/system/pm/BPackage;IJJLio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static generatePermissionInfo(Lio/vanta/core/system/pm/BPackage$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 265
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 267
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 268
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Permission;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    .line 245
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 249
    :cond_0
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 250
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 252
    :cond_1
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 253
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2

    .line 255
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 257
    :cond_2
    iget-object p0, p0, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateServiceInfo(Lio/vanta/core/system/pm/BPackage$Service;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 233
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lio/vanta/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILio/vanta/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
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
    .locals 2

    .line 409
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getBPackageSetting(Ljava/lang/String;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_0

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

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
