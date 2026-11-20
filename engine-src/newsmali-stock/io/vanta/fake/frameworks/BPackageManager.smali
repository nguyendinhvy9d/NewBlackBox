.class public Lio/vanta/fake/frameworks/BPackageManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/pm/IBPackageManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile sIsFindingApkPath:Z

.field private static final sPackageManager:Lio/vanta/fake/frameworks/BPackageManager;


# instance fields
.field private final transactionThrottler:Lio/vanta/utils/TransactionThrottler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lio/vanta/fake/frameworks/BPackageManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BPackageManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BPackageManager;->sPackageManager:Lio/vanta/fake/frameworks/BPackageManager;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    .line 32
    new-instance v0, Lio/vanta/utils/TransactionThrottler;

    invoke-direct {v0}, Lio/vanta/utils/TransactionThrottler;-><init>()V

    iput-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    return-void
.end method

.method private crash(Ljava/lang/Throwable;)V
    .registers 2

    .line 683
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private createFallbackApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 7

    .line 687
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Creating fallback ApplicationInfo for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BlackManager"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance p3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 689
    iput-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 690
    iput p2, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x0

    .line 691
    iput p2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 695
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->findActualApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 697
    iput-object v1, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 698
    iput-object v1, p3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_48

    .line 701
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No APK found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using null paths to prevent I/O errors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 702
    iput-object v0, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 703
    iput-object v0, p3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 706
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/app-lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 708
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 709
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 712
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 713
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p2, 0x400000

    or-int/2addr p1, p2

    iput p1, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object p3
.end method

.method private createFallbackLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const/high16 v0, 0x10000000

    .line 125
    :try_start_2
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fallback launch intent failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlackManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_29
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method private createFallbackPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating fallback PackageInfo for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 850
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 851
    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 852
    const-string v1, "1.0"

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 853
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const/4 p1, 0x0

    .line 856
    iput p1, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 857
    new-array p2, p1, [I

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 858
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 859
    new-array p1, p1, [Landroid/content/pm/Signature;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method private findActualApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p1

    .line 720
    const-string v1, ".apk"

    .line 0
    const-string v2, "/vendor/app/"

    const-string v3, "/product/app/"

    const-string v4, "/system_ext/app/"

    const-string v5, "/system/priv-app/"

    const-string v6, "/system/app/"

    const-string v7, "/data/app/"

    const-string v8, "/data/app/~~*/"

    const-string v9, "Skipping PackageManager call to prevent recursion for "

    .line 720
    sget-boolean v10, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    const/4 v11, 0x0

    const-string v12, "BlackManager"

    if-eqz v10, :cond_21

    .line 721
    const-string v0, "findActualApkPath called recursively, returning null to prevent infinite loop."

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_21
    const/4 v10, 0x1

    .line 724
    sput-boolean v10, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    const/4 v13, 0x0

    .line 728
    :try_start_25
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xa

    .line 731
    new-array v14, v9, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v10

    const-string v10, "-*/base.apk"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "*/base.apk"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "-1/base.apk"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v14, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "-2/base.apk"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v14, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/base.apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v14, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v14, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v14, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v14, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v14, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v14, v2

    move v1, v13

    :goto_10e
    if-ge v1, v9, :cond_136

    .line 750
    aget-object v2, v14, v1
    :try_end_112
    .catchall {:try_start_25 .. :try_end_112} :catchall_178

    move-object/from16 v3, p0

    .line 751
    :try_start_114
    invoke-direct {v3, v2}, Lio/vanta/fake/frameworks/BPackageManager;->isValidApkPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found existing APK at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catchall {:try_start_114 .. :try_end_130} :catchall_176

    .line 767
    sput-boolean v13, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    return-object v2

    :cond_133
    add-int/lit8 v1, v1, 0x1

    goto :goto_10e

    :cond_136
    move-object/from16 v3, p0

    .line 758
    :try_start_138
    invoke-direct/range {p0 .. p1}, Lio/vanta/fake/frameworks/BPackageManager;->findHashBasedApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_157

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found hash-based APK at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_138 .. :try_end_154} :catchall_176

    .line 767
    sput-boolean v13, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    return-object v1

    .line 764
    :cond_157
    :try_start_157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing APK found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", using null path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catchall {:try_start_157 .. :try_end_173} :catchall_176

    .line 767
    sput-boolean v13, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    return-object v11

    :catchall_176
    move-exception v0

    goto :goto_17b

    :catchall_178
    move-exception v0

    move-object/from16 v3, p0

    :goto_17b
    sput-boolean v13, Lio/vanta/fake/frameworks/BPackageManager;->sIsFindingApkPath:Z

    .line 768
    throw v0
.end method

.method private findHashBasedApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    .line 774
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_64

    .line 780
    :cond_15
    new-instance v2, Lio/vanta/fake/frameworks/BPackageManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/vanta/fake/frameworks/BPackageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_21

    return-object v0

    .line 785
    :cond_21
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_88

    aget-object v5, v1, v4

    .line 786
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2f

    goto :goto_61

    .line 791
    :cond_2f
    new-instance v6, Lio/vanta/fake/frameworks/BPackageManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lio/vanta/fake/frameworks/BPackageManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3b

    goto :goto_61

    .line 796
    :cond_3b
    array-length v6, v5

    move v7, v3

    :goto_3d
    if-ge v7, v6, :cond_61

    aget-object v8, v5, v7

    .line 797
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_48

    goto :goto_5e

    .line 802
    :cond_48
    new-instance v9, Ljava/io/File;

    const-string v10, "base.apk"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lio/vanta/fake/frameworks/BPackageManager;->isValidApkPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 804
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_65

    return-object p1

    :cond_5e
    :goto_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_64
    :goto_64
    return-object v0

    :catch_65
    move-exception v1

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error searching for hash-based APK path for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BlackManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    return-object v0
.end method

.method public static get()Lio/vanta/fake/frameworks/BPackageManager;
    .registers 1

    .line 36
    sget-object v0, Lio/vanta/fake/frameworks/BPackageManager;->sPackageManager:Lio/vanta/fake/frameworks/BPackageManager;

    return-object v0
.end method

.method private isInstalledFallback(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 650
    :try_start_2
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    return v0

    .line 653
    :catch_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fallback isInstalled check failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", assuming not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlackManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_53

    .line 655
    const-string v2, "com.media.bestrecorder.audiorecorder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "org.nomad.engine"

    .line 656
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 657
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Returning true for known app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " despite fallback failure"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_53
    return v1
.end method

.method private isValidApkPath(Ljava/lang/String;)Z
    .registers 10

    .line 819
    const-string v0, "BlackManager"

    .line 0
    const-string v1, "APK file too small: "

    const-string v2, "APK file not readable: "

    const/4 v3, 0x0

    .line 819
    :try_start_7
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v3

    .line 823
    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1c

    return v3

    .line 829
    :cond_1c
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_33

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 834
    :cond_33
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v2, v4, v6

    if-gez v2, :cond_5e

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_60

    return v3

    :cond_5e
    const/4 p1, 0x1

    return p1

    :catch_60
    move-exception v1

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error checking APK path "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method static synthetic lambda$findHashBasedApkPath$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 780
    const-string p0, "~~"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "=="

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$findHashBasedApkPath$1(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 791
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private shouldUseFallbackMode()Z
    .registers 3

    .line 47
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->getFailureCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->isServiceHealthy()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearPackage(Ljava/lang/String;I)V
    .registers 4

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->clearPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 575
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public forceReinitialize()V
    .registers 4

    .line 52
    const-string v0, "Force reinitializing PackageManager service"

    const-string v1, "BlackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 54
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->resetTransactionThrottler()V

    .line 58
    :try_start_d
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_1b

    .line 60
    const-string v0, "Successfully reinitialized PackageManager service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_1b
    const-string v0, "Failed to reinitialize PackageManager service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    .line 65
    const-string v2, "Error during service reinitialization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 353
    const-string v0, "BlackManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-nez v2, :cond_11

    .line 355
    const-string p2, "PackageManager service is null for getActivityInfo, returning null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 358
    :cond_11
    invoke-interface {v2, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p2

    .line 363
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Exception in getActivityInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2a
    move-exception p2

    .line 360
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException in getActivityInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 285
    const-string v0, "BlackManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceWithFallback()Lio/vanta/core/system/pm/IBPackageManagerService;

    move-result-object v1

    if-nez v1, :cond_12

    .line 287
    const-string v1, "PackageManager service is null for getApplicationInfo, using fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 290
    :cond_12
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception v1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in getApplicationInfo for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    :catch_2f
    move-exception v1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteException in getApplicationInfo for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 557
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 566
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/vanta/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/pm/IBPackageManagerService;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 668
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 87
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BPackageManager;->shouldUseFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Using fallback launch intent for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " due to service failures"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BlackManager"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 92
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, v0, v3, v2, p2}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_68

    .line 103
    :cond_4d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, v0, v3, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :cond_68
    if-eqz v2, :cond_93

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_71

    goto :goto_93

    .line 114
    :cond_71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_93
    :goto_93
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 8

    .line 302
    const-string v0, "BlackManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceWithFallback()Lio/vanta/core/system/pm/IBPackageManagerService;

    move-result-object v1

    if-nez v1, :cond_12

    .line 304
    const-string v1, "PackageManager service is null for getPackageInfo, using fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    .line 307
    :cond_12
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception v1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in getPackageInfo for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    :catch_2f
    move-exception v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteException in getPackageInfo for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->createFallbackPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 4

    .line 675
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/pm/IBPackageManagerService;->getPackagesForUid(II)[Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 677
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 679
    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .registers 7

    .line 370
    const-string v0, "BlackManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-nez v2, :cond_11

    .line 372
    const-string p2, "PackageManager service is null for getProviderInfo, returning null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 375
    :cond_11
    invoke-interface {v2, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p2

    .line 380
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Exception in getProviderInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2a
    move-exception p2

    .line 377
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException in getProviderInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 336
    const-string v0, "BlackManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-nez v2, :cond_11

    .line 338
    const-string p2, "PackageManager service is null for getReceiverInfo, returning null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 341
    :cond_11
    invoke-interface {v2, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p2

    .line 346
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Exception in getReceiverInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2a
    move-exception p2

    .line 343
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException in getReceiverInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 319
    const-string v0, "BlackManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-nez v2, :cond_11

    .line 321
    const-string p2, "PackageManager service is null for getServiceInfo, returning null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 324
    :cond_11
    invoke-interface {v2, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p2

    .line 329
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Exception in getServiceInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2a
    move-exception p2

    .line 326
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException in getServiceInfo for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "package_manager"

    return-object v0
.end method

.method public getServiceWithFallback()Lio/vanta/core/system/pm/IBPackageManagerService;
    .registers 3

    .line 71
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-nez v0, :cond_18

    .line 73
    const-string v0, "BlackManager"

    const-string v1, "PackageManager service is null, attempting reinitialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->forceReinitialize()V

    .line 75
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    :cond_18
    return-object v0
.end method

.method public installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;
    .registers 9

    .line 529
    const-string v0, "BlackManager"

    .line 0
    const-string v1, "Attempt to install VantaCore app detected and blocked: "

    const-string v2, "Could not verify package info for: "

    if-eqz p1, :cond_52

    .line 529
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_5d

    if-nez v3, :cond_52

    .line 532
    :try_start_e
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 534
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 535
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {v1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string v3, "Cannot clone VantaCore app from within VantaCore. This would create infinite recursion and is not allowed for security reasons."

    invoke-virtual {v1, v3}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_40} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_40} :catch_5d

    return-object p1

    :catch_41
    move-exception v1

    .line 542
    :try_start_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    :cond_52
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    .line 548
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .registers 6

    .line 605
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BPackageManager;->shouldUseFallbackMode()Z

    move-result v0

    const-string v1, "BlackManager"

    if-eqz v0, :cond_25

    .line 606
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Using fallback isInstalled check for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " due to service failures"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->isInstalledFallback(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 611
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_37

    .line 613
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    .line 614
    iget-object v2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v2}, Lio/vanta/utils/TransactionThrottler;->reset()V

    return v0

    .line 617
    :cond_37
    const-string v0, "PackageManager service is null, returning false for isInstalled check"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_25 .. :try_end_3c} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3c} :catch_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_3d

    goto :goto_80

    :catch_3d
    move-exception p1

    .line 640
    const-string p2, "Unexpected error in isInstalled check"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_80

    :catch_49
    move-exception p1

    .line 637
    const-string p2, "RemoteException in isInstalled check"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_80

    :catch_55
    move-exception v0

    .line 620
    const-string v2, "PackageManager service died during isInstalled check, clearing service and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 623
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 626
    :try_start_63
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_80

    .line 628
    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    .line 629
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->reset()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_75

    return p1

    :catch_75
    move-exception p1

    .line 633
    const-string p2, "Retry failed for isInstalled check"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    :cond_80
    :goto_80
    const/4 p1, 0x0

    return p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 442
    const-string v0, "BlackManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_f

    .line 444
    invoke-interface {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 446
    :cond_f
    const-string v1, "PackageManager service is null, returning empty list for queryBroadcastReceivers"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_18} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 463
    const-string p2, "RemoteException in queryBroadcastReceivers"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_27
    move-exception v1

    .line 450
    const-string v2, "PackageManager service died during queryBroadcastReceivers, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 454
    :try_start_30
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_43

    .line 456
    invoke-interface {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 459
    const-string p2, "Retry failed for queryBroadcastReceivers"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 499
    const-string v0, "BlackManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_f

    .line 501
    invoke-interface {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 503
    :cond_f
    const-string v1, "PackageManager service is null, returning empty list for queryContentProviders"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_18} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 520
    const-string p2, "RemoteException in queryContentProviders"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_27
    move-exception v1

    .line 507
    const-string v2, "PackageManager service died during queryContentProviders, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 511
    :try_start_30
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_43

    .line 513
    invoke-interface {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 516
    const-string p2, "Retry failed for queryContentProviders"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->shouldThrottle()Z

    move-result v0

    const-string v1, "BlackManager"

    if-eqz v0, :cond_14

    .line 388
    const-string p1, "Throttling queryIntentActivities due to recent failures"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 393
    :cond_14
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->getFailureCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_27

    .line 394
    const-string p1, "Too many failures, returning empty list for queryIntentActivities"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 399
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_39

    .line 401
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 403
    iget-object v2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v2}, Lio/vanta/utils/TransactionThrottler;->reset()V

    return-object v0

    .line 406
    :cond_39
    const-string v0, "PackageManager service is null, returning empty list for queryIntentActivities"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_42
    .catch Landroid/os/DeadObjectException; {:try_start_27 .. :try_end_42} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    .line 433
    const-string p2, "RemoteException in queryIntentActivities"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 435
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_56
    move-exception v0

    .line 410
    const-string v2, "PackageManager service died during queryIntentActivities, clearing cache and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 412
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 415
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->getFailureCount()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_8b

    .line 418
    :try_start_6d
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_90

    .line 420
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 421
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->reset()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7e} :catch_7f

    return-object p1

    :catch_7f
    move-exception p1

    .line 425
    const-string p2, "Retry failed for queryIntentActivities"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_90

    .line 429
    :cond_8b
    const-string p1, "Skipping retry due to too many failures"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_90
    :goto_90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 471
    const-string v0, "BlackManager"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_f

    .line 473
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 475
    :cond_f
    const-string v1, "PackageManager service is null, returning empty list for queryIntentServices"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_18} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 491
    const-string p2, "RemoteException in queryIntentServices"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_27
    move-exception v1

    .line 479
    const-string v2, "PackageManager service died during queryIntentServices, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 482
    :try_start_30
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_43

    .line 484
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 487
    const-string p2, "Retry failed for queryIntentServices"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resetTransactionThrottler()V
    .registers 3

    .line 41
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->reset()V

    .line 42
    const-string v0, "BlackManager"

    const-string v1, "Transaction throttler reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 9

    .line 188
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->shouldThrottle()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BlackManager"

    if-eqz v0, :cond_11

    .line 189
    const-string p1, "Throttling resolveActivity due to recent failures"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 194
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_23

    .line 196
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 198
    iget-object v3, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v3}, Lio/vanta/utils/TransactionThrottler;->reset()V

    return-object v0

    .line 201
    :cond_23
    const-string v0, "PackageManager service is null, returning null for resolveActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_11 .. :try_end_28} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_29

    goto :goto_6c

    :catch_29
    move-exception p1

    .line 224
    const-string p2, "Unexpected error in resolveActivity"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_35
    move-exception p1

    .line 221
    const-string p2, "RemoteException in resolveActivity"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_41
    move-exception v0

    .line 204
    const-string v3, "PackageManager service died during resolveActivity, clearing service and retrying"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 207
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 210
    :try_start_4f
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_6c

    .line 212
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->reset()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p1

    .line 217
    const-string p2, "Retry failed for resolveActivity"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 232
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->shouldThrottle()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BlackManager"

    if-eqz v0, :cond_11

    .line 233
    const-string p1, "Throttling resolveContentProvider due to recent failures"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 238
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_23

    .line 240
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 242
    iget-object v3, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v3}, Lio/vanta/utils/TransactionThrottler;->reset()V

    return-object v0

    .line 245
    :cond_23
    const-string v0, "PackageManager service is null, returning null for resolveContentProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_11 .. :try_end_28} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_29

    goto :goto_6c

    :catch_29
    move-exception p1

    .line 268
    const-string p2, "Unexpected error in resolveContentProvider"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_35
    move-exception p1

    .line 265
    const-string p2, "RemoteException in resolveContentProvider"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_41
    move-exception v0

    .line 248
    const-string v3, "PackageManager service died during resolveContentProvider, clearing service and retrying"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 251
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 254
    :try_start_4f
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_6c

    .line 256
    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->reset()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p1

    .line 261
    const-string p2, "Retry failed for resolveContentProvider"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 278
    invoke-direct {p0, p1}, Lio/vanta/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 9

    .line 144
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->shouldThrottle()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BlackManager"

    if-eqz v0, :cond_11

    .line 145
    const-string p1, "Throttling resolveService due to recent failures"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 150
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_23

    .line 152
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v3}, Lio/vanta/utils/TransactionThrottler;->reset()V

    return-object v0

    .line 157
    :cond_23
    const-string v0, "PackageManager service is null, returning null for resolveService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_11 .. :try_end_28} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_29

    goto :goto_6c

    :catch_29
    move-exception p1

    .line 180
    const-string p2, "Unexpected error in resolveService"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_35
    move-exception p1

    .line 177
    const-string p2, "RemoteException in resolveService"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    goto :goto_6c

    :catch_41
    move-exception v0

    .line 160
    const-string v3, "PackageManager service died during resolveService, clearing service and retrying"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v0, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {v0}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    .line 163
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->clearServiceCache()V

    .line 166
    :try_start_4f
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_6c

    .line 168
    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IBPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p2}, Lio/vanta/utils/TransactionThrottler;->reset()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p1

    .line 173
    const-string p2, "Retry failed for resolveService"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    iget-object p1, p0, Lio/vanta/fake/frameworks/BPackageManager;->transactionThrottler:Lio/vanta/utils/TransactionThrottler;

    invoke-virtual {p1}, Lio/vanta/utils/TransactionThrottler;->recordFailure()V

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 4

    .line 581
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->stopPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 583
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 3

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/pm/IBPackageManagerService;->uninstallPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 599
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .registers 4

    .line 589
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 591
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
