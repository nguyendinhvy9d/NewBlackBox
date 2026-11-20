.class public Lio/vanta/core/system/pm/BPackageManagerService;
.super Lio/vanta/core/system/pm/IBPackageManagerService$Stub;
.source "BPackageManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BPackageManagerService"

.field public static sGuestConsumer:Ljava/lang/String;

.field public static sService:Lio/vanta/core/system/pm/BPackageManagerService;

.field private static final sUserManager:Lio/vanta/core/system/user/BUserManagerService;


# instance fields
.field private final mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

.field final mInstallLock:Ljava/lang/Object;

.field private final mPackageChangedHandler:Landroid/content/BroadcastReceiver;

.field private final mPackageMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lio/vanta/core/system/pm/Settings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSettings(Lio/vanta/core/system/pm/BPackageManagerService;)Lio/vanta/core/system/pm/Settings;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/pm/BPackageManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sService:Lio/vanta/core/system/pm/BPackageManagerService;

    .line 58
    invoke-static {}, Lio/vanta/core/system/user/BUserManagerService;->get()Lio/vanta/core/system/user/BUserManagerService;

    move-result-object v0

    sput-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;-><init>()V

    .line 56
    new-instance v0, Lio/vanta/core/system/pm/Settings;

    invoke-direct {v0}, Lio/vanta/core/system/pm/Settings;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 61
    iget-object v0, v0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lio/vanta/core/system/pm/BPackageManagerService$1;

    invoke-direct {v0, p0}, Lio/vanta/core/system/pm/BPackageManagerService$1;-><init>(Lio/vanta/core/system/pm/BPackageManagerService;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v1, Lio/vanta/core/system/pm/ComponentResolver;

    invoke-direct {v1}, Lio/vanta/core/system/pm/ComponentResolver;-><init>()V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    .line 70
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p4, :cond_38

    .line 192
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_11

    .line 194
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_11
    if-le p1, p3, :cond_38

    .line 198
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 199
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 202
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, p3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_31

    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_31

    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean p3, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p1, p3, :cond_38

    .line 205
    :cond_31
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method static fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static get()Lio/vanta/core/system/pm/BPackageManagerService;
    .registers 1

    .line 65
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sService:Lio/vanta/core/system/pm/BPackageManagerService;

    return-object v0
.end method

.method private getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 8

    .line 252
    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 253
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 254
    :try_start_7
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v1, p1}, Lio/vanta/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 257
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    iget-object v3, v3, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_22

    .line 258
    monitor-exit v0

    return-object v2

    .line 259
    :cond_22
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 261
    :cond_2c
    monitor-exit v0

    return-object v2

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private getInstalledApplicationsListInternal(III)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 386
    sget-object p3, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {p3, p2}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 389
    :cond_d
    iget-object p3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p3

    .line 391
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackageSettings;

    .line 402
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 403
    invoke-virtual {v2, p2}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v2

    .line 402
    invoke-static {v3, p1, v2, p2}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 405
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 408
    :cond_41
    monitor-exit p3

    return-object v0

    :catchall_43
    move-exception p1

    .line 409
    monitor-exit p3
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_43

    throw p1
.end method

.method private installPackageAsUserLocked(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;
    .registers 16

    const-string v0, "Installing potentially Nomad-related app: "

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 654
    new-instance v3, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {v3}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 657
    :try_start_e
    sget-object v6, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v6, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v7

    if-nez v7, :cond_19

    .line 658
    invoke-virtual {v6, p3}, Lio/vanta/core/system/user/BUserManagerService;->createUser(I)Lio/vanta/core/system/user/BUserInfo;

    .line 660
    :cond_19
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 661
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_277

    .line 662
    :try_start_43
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 663
    invoke-static {p1, v6}, Lio/vanta/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_57

    goto :goto_60

    :catchall_57
    move-exception p1

    move-object v5, v6

    goto/16 :goto_278

    .line 665
    :cond_5b
    :try_start_5b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_60
    move-object v5, v6

    .line 670
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_9f

    .line 672
    const-string p1, "getPackageArchiveInfo error.Please check whether APK is normal."

    invoke-virtual {v3, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_7f
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 676
    :cond_9f
    :try_start_9f
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 677
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v8

    .line 678
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 679
    const-string p1, "Cannot clone VantaCore app from within VantaCore. This would create infinite recursion and is not allowed for security reasons."

    invoke-virtual {v3, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_ba
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_88

    .line 683
    :cond_c4
    :try_start_c4
    const-string v8, "nomad"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dc

    const-string v8, "vspace"

    .line 684
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dc

    const-string v8, "virtual"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f4

    .line 686
    :cond_dc
    const-string v8, "BPackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ". Proceed with caution."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_f4
    invoke-static {v5}, Lio/vanta/utils/AbiUtils;->isSupport(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 691
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 692
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 693
    invoke-static {}, Lio/vanta/VantaCore;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_13d

    const-string v0, "The box does not support 32-bit Application"

    goto :goto_13f

    :cond_13d
    const-string v0, "The box does not support 64-bit Application"

    :goto_13f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 692
    invoke-virtual {v3, p1, p3}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_14b
    .catchall {:try_start_c4 .. :try_end_14b} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_154

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_154
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_88

    .line 695
    :cond_15f
    :try_start_15f
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-nez p1, :cond_183

    .line 697
    const-string p1, "parser apk error."

    invoke-virtual {v3, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_16f
    .catchall {:try_start_15f .. :try_end_16f} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_178

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_178
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_88

    .line 699
    :cond_183
    :try_start_183
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lio/vanta/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    .line 702
    invoke-virtual {p2}, Lio/vanta/entity/pm/InstallOption;->hasSplits()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 703
    iget-object v0, p2, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    .line 704
    array-length v8, v0

    new-array v8, v8, [Ljava/lang/String;

    move v9, v7

    .line 705
    :goto_193
    array-length v10, v0

    if-ge v9, v10, :cond_1ae

    .line 706
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "split_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_193

    .line 708
    :cond_1ae
    iput-object v8, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 709
    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 710
    const-string v8, "BPackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installPackageAsUserLocked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " carrying "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " split APK(s)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1db
    const/4 v0, 0x1

    .line 713
    invoke-virtual {p2, v0}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result v6

    if-eqz v6, :cond_1f0

    .line 714
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 716
    :cond_1f0
    iget-object v6, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p1, p2}, Lio/vanta/core/system/pm/Settings;->getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lio/vanta/entity/pm/InstallOption;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object v6

    .line 719
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p3}, Lio/vanta/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 721
    invoke-static {}, Lio/vanta/core/system/pm/BPackageInstallerService;->get()Lio/vanta/core/system/pm/BPackageInstallerService;

    move-result-object v7

    invoke-virtual {v7, v6, p3}, Lio/vanta/core/system/pm/BPackageInstallerService;->installPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;I)I

    move-result v7

    if-gez v7, :cond_225

    .line 723
    const-string p1, "install apk error."

    invoke-virtual {v3, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1
    :try_end_211
    .catchall {:try_start_183 .. :try_end_211} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_21a

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_21a
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_88

    .line 725
    :cond_225
    :try_start_225
    iget-object v7, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v7
    :try_end_228
    .catchall {:try_start_225 .. :try_end_228} :catchall_277

    .line 726
    :try_start_228
    invoke-virtual {v6, v0, p3}, Lio/vanta/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 727
    invoke-virtual {v6}, Lio/vanta/core/system/pm/BPackageSettings;->save()Z

    .line 728
    monitor-exit v7
    :try_end_22f
    .catchall {:try_start_228 .. :try_end_22f} :catchall_274

    .line 729
    :try_start_22f
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v7, v6, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v0, v7}, Lio/vanta/core/system/pm/ComponentResolver;->removeAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    .line 730
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v7, v6, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v0, v7}, Lio/vanta/core/system/pm/ComponentResolver;->addAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    .line 731
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/pm/Settings;->scanPackage(Ljava/lang/String;)V

    .line 732
    iget-object p1, v6, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->onPackageInstalled(Ljava/lang/String;I)V
    :try_end_24b
    .catchall {:try_start_22f .. :try_end_24b} :catchall_277

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p1

    if-eqz p1, :cond_254

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_254
    const-string p1, "BPackageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "install finish: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_25d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catchall_274
    move-exception p1

    .line 728
    :try_start_275
    monitor-exit v7
    :try_end_276
    .catchall {:try_start_275 .. :try_end_276} :catchall_274

    :try_start_276
    throw p1
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_277

    :catchall_277
    move-exception p1

    .line 735
    :goto_278
    :try_start_278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_290

    if-eqz v5, :cond_286

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p1

    if-eqz p1, :cond_286

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_286
    const-string p1, "BPackageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "install finish: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_25d

    :catchall_290
    move-exception p1

    if-eqz v5, :cond_29c

    .line 737
    invoke-virtual {p2, v4}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_29c

    .line 738
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 740
    :cond_29c
    const-string p2, "BPackageManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "install finish: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    throw p1
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 4

    .line 747
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/vanta/utils/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;

    move-result-object v0

    .line 748
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lio/vanta/utils/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 749
    invoke-static {v0, v1, p1}, Lio/vanta/utils/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception p1

    .line 752
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 217
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_2d

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    invoke-direct {p0, v0, p3, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 230
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 231
    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 232
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 238
    :cond_2d
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 239
    :try_start_30
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_38
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_14
    move-object v2, p1

    if-eqz v0, :cond_2e

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    invoke-virtual {p0, v0, p3, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 145
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 146
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 147
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-object p1

    .line 153
    :cond_2e
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 154
    :try_start_31
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 156
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_50

    .line 158
    iget-object v0, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 159
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v5, v0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 165
    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :cond_56
    move-object v3, p2

    move v4, p3

    move v6, p4

    .line 163
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {p2, v2, v3, v4, v6}, Lio/vanta/core/system/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_61
    move-exception v0

    move-object p2, v0

    .line 166
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_31 .. :try_end_64} :catchall_61

    throw p2
.end method

.method private updateFlags(II)I
    .registers 4

    const/high16 p2, 0xc0000

    and-int v0, p1, p2

    if-eqz v0, :cond_7

    return p1

    :cond_7
    or-int/2addr p1, p2

    return p1
.end method

.method private static xjMaybeCacheConsumer([Ljava/lang/String;)V
    .registers 5

    :try_start_0
    if-eqz p0, :cond_29

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_29

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_27
    sput-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sGuestConsumer:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    return-void
.end method


# virtual methods
.method public addPackageMonitor(Lio/vanta/core/system/pm/PackageMonitor;)V
    .registers 3

    .line 790
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPackage(Ljava/lang/String;I)V
    .registers 4

    .line 578
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_18

    .line 581
    :cond_7
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 582
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_19

    :goto_18
    return-void

    .line 585
    :cond_19
    invoke-static {}, Lio/vanta/core/system/pm/BPackageInstallerService;->get()Lio/vanta/core/system/pm/BPackageInstallerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/pm/BPackageInstallerService;->clearPackage(Lio/vanta/core/system/pm/BPackageSettings;I)I

    return-void
.end method

.method public deleteUser(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 596
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackageSettings;

    .line 597
    iget-object v2, v2, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V

    goto :goto_d

    .line 599
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 8

    .line 322
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 323
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 324
    :try_start_d
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Lio/vanta/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 327
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_25

    .line 328
    monitor-exit v0

    return-object v1

    .line 330
    :cond_25
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 329
    invoke-static {v2, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 332
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getAppId(Ljava/lang/String;)I
    .registers 3

    .line 779
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_d

    .line 781
    iget p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 7

    .line 92
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 93
    :cond_a
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    :try_start_14
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    .line 97
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 101
    :cond_22
    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 103
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 105
    :try_start_29
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_3f

    .line 107
    iget-object v1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 108
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 110
    :cond_3f
    monitor-exit v0

    return-object v1

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getBPackageSetting(Ljava/lang/String;)Lio/vanta/core/system/pm/BPackageSettings;
    .registers 3

    .line 812
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    return-object p1
.end method

.method public getBPackageSettings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
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

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/vanta/core/system/pm/BPackageManagerService;->getInstalledApplicationsListInternal(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 362
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 365
    :cond_10
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 367
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackageSettings;

    .line 375
    iget-object v3, v3, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 377
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 380
    :cond_42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_49
    move-exception p1

    .line 381
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_13 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/vanta/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 615
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p1}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 616
    :cond_d
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 617
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 618
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackageSettings;

    .line 619
    invoke-virtual {v3, p1}, Lio/vanta/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v3, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v4, v4, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lio/vanta/core/GmsCore;->isGoogleAppOrService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 620
    new-instance v4, Lio/vanta/entity/pm/InstalledPackage;

    invoke-direct {v4}, Lio/vanta/entity/pm/InstalledPackage;-><init>()V

    .line 621
    iput p1, v4, Lio/vanta/entity/pm/InstalledPackage;->userId:I

    .line 622
    iget-object v3, v3, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iput-object v3, v4, Lio/vanta/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    .line 623
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 626
    :cond_4c
    monitor-exit v0

    return-object v1

    :catchall_4e
    move-exception p1

    .line 627
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 7

    .line 267
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 268
    :cond_a
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 270
    :try_start_14
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    .line 272
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 277
    :cond_22
    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 280
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_29
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 283
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3e

    if-eqz p1, :cond_3d

    .line 285
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generatePackageInfo(Lio/vanta/core/system/pm/BPackageSettings;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception p1

    .line 283
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public getPackagesForUid(II)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x15f92

    if-ne p1, v0, :cond_14

    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sGuestConsumer:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_10
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 632
    :cond_14
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    .line 633
    :cond_20
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 634
    :try_start_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 635
    invoke-static {p1}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result v3

    .line 636
    iget-object v4, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/vanta/core/system/pm/BPackageSettings;

    .line 637
    iget-object v6, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v6, v6, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 638
    invoke-virtual {v5, p2}, Lio/vanta/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p0, v6}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_58

    invoke-virtual {p0, v6}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_36

    .line 639
    :cond_58
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 642
    :cond_5c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 643
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object p1

    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 645
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_77
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lio/vanta/core/system/pm/BPackageManagerService;->xjMaybeCacheConsumer([Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_84
    move-exception p1

    .line 649
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_23 .. :try_end_86} :catchall_84

    throw p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 338
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 339
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 340
    :try_start_d
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Lio/vanta/core/system/pm/ComponentResolver;->getProvider(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Provider;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 342
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_25

    .line 343
    monitor-exit v0

    return-object v1

    .line 345
    :cond_25
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 344
    invoke-static {v2, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 347
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 8

    .line 307
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 308
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 309
    :try_start_d
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Lio/vanta/core/system/pm/ComponentResolver;->getReceiver(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 311
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_25

    .line 312
    monitor-exit v0

    return-object v1

    .line 314
    :cond_25
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 313
    invoke-static {v2, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateActivityInfo(Lio/vanta/core/system/pm/BPackage$Activity;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 316
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .registers 8

    .line 292
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 293
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 294
    :try_start_d
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Lio/vanta/core/system/pm/ComponentResolver;->getService(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Service;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 296
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_25

    .line 297
    monitor-exit v0

    return-object v1

    .line 299
    :cond_25
    invoke-virtual {p1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 298
    invoke-static {v2, p2, p1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateServiceInfo(Lio/vanta/core/system/pm/BPackage$Service;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 301
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p1
.end method

.method getSettings()Lio/vanta/core/system/pm/Settings;
    .registers 2

    .line 786
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    return-object v0
.end method

.method public installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;
    .registers 5

    .line 517
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 518
    new-instance p1, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p1}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p2, "Bcore license invalid or expired"

    invoke-virtual {p1, p2}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 520
    :cond_16
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->installPackageAsUserLocked(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1f
    move-exception p1

    .line 522
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .registers 6

    .line 604
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 605
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 606
    :try_start_d
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez p1, :cond_19

    .line 608
    monitor-exit v0

    return v1

    .line 609
    :cond_19
    invoke-virtual {p1, p2}, Lio/vanta/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1f
    move-exception p1

    .line 610
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw p1
.end method

.method onPackageInstalled(Ljava/lang/String;I)V
    .registers 5

    .line 805
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/PackageMonitor;

    .line 806
    invoke-interface {v1, p1, p2}, Lio/vanta/core/system/pm/PackageMonitor;->onPackageInstalled(Ljava/lang/String;I)V

    goto :goto_6

    .line 808
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPackageInstalled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", userId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BPackageManagerService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onPackageUninstalled(Ljava/lang/String;ZI)V
    .registers 6

    .line 798
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/PackageMonitor;

    .line 799
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/PackageMonitor;->onPackageUninstalled(Ljava/lang/String;ZI)V

    goto :goto_6

    .line 801
    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPackageUninstalled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BPackageManagerService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 12
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 468
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_21
    move-object v2, p1

    if-eqz v0, :cond_3b

    .line 476
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    invoke-virtual {p0, v0, p2, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 483
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 484
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 485
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    return-object p1

    .line 491
    :cond_3b
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 492
    :try_start_3e
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_5b

    .line 495
    iget-object v0, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 496
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v5, v0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    move v4, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/pm/ComponentResolver;->queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :cond_5b
    move v4, p2

    move-object v3, p3

    move v6, p4

    .line 499
    iget-object p2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {p2, v2, v3, v4, v6}, Lio/vanta/core/system/pm/ComponentResolver;->queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_66
    move-exception v0

    move-object p2, v0

    .line 501
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_66

    throw p2
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    sget-object p2, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {p2, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 508
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p2

    .line 511
    :cond_19
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver;->queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 13
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 415
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_25

    .line 418
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 419
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_25
    move-object v3, p1

    if-eqz v1, :cond_3f

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    invoke-virtual {p0, v1, p2, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 432
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 433
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 434
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    return-object p1

    .line 441
    :cond_3f
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    if-eqz v0, :cond_6e

    .line 443
    :try_start_44
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_5c

    .line 446
    iget-object v0, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 448
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v6, v0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    move v5, p2

    move-object v4, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    goto :goto_5d

    :cond_5c
    const/4 p2, 0x0

    :goto_5d
    if-eqz p2, :cond_65

    .line 451
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_6c

    :cond_65
    if-nez p2, :cond_6c

    .line 455
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    :cond_6c
    monitor-exit p1

    return-object p2

    .line 460
    :cond_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_44 .. :try_end_6f} :catchall_74

    .line 461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_74
    move-exception v0

    move-object p2, v0

    .line 460
    :try_start_76
    monitor-exit p1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_74

    throw p2
.end method

.method public queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;
    .registers 5
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

    .line 246
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0, p1, v0, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removePackageMonitor(Lio/vanta/core/system/pm/PackageMonitor;)V
    .registers 3

    .line 794
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 171
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 172
    :cond_a
    invoke-direct {p0, p1, p3, p2, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 173
    invoke-direct {p0, p1, p3, p2, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 178
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_a
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/core/system/pm/ComponentResolver;->queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 184
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 7

    .line 116
    sget-object v0, Lio/vanta/core/system/pm/BPackageManagerService;->sUserManager:Lio/vanta/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Lio/vanta/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 117
    :cond_a
    invoke-direct {p0, p1, p3, p2, p4}, Lio/vanta/core/system/pm/BPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_1f

    const/4 p2, 0x0

    .line 123
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1f
    return-object v1
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 4

    .line 590
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 821
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    invoke-virtual {v0}, Lio/vanta/core/system/pm/Settings;->scanPackage()V

    .line 822
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 823
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v3, v1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v2, v3}, Lio/vanta/core/system/pm/ComponentResolver;->removeAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    .line 824
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v1, v1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v2, v1}, Lio/vanta/core/system/pm/ComponentResolver;->addAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    goto :goto_f

    :cond_2a
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 10

    .line 557
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_58

    .line 559
    :try_start_6
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez v2, :cond_13

    .line 561
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_55

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_58

    return-void

    .line 562
    :cond_13
    :try_start_13
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/vanta/core/system/BProcessManagerService;->killAllByPackageName(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2}, Lio/vanta/core/system/pm/BPackageSettings;->getUserIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 564
    invoke-static {}, Lio/vanta/core/system/pm/BPackageInstallerService;->get()Lio/vanta/core/system/pm/BPackageInstallerService;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v7, v6}, Lio/vanta/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;ZI)I

    move-result v5

    if-gez v5, :cond_3e

    goto :goto_22

    .line 568
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v7, v4}, Lio/vanta/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    goto :goto_22

    .line 570
    :cond_46
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    invoke-virtual {v3, p1}, Lio/vanta/core/system/pm/Settings;->removePackage(Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {p1, v2}, Lio/vanta/core/system/pm/ComponentResolver;->removeAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    .line 572
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_13 .. :try_end_53} :catchall_55

    .line 573
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    return-void

    :catchall_55
    move-exception p1

    .line 572
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw p1

    :catchall_58
    move-exception p1

    .line 573
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 529
    :try_start_6
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackageSettings;

    if-nez v2, :cond_13

    .line 531
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_52

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_55

    return-void

    .line 533
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 534
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_52

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_55

    return-void

    .line 536
    :cond_1c
    :try_start_1c
    invoke-virtual {v2}, Lio/vanta/core/system/pm/BPackageSettings;->getUserState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 537
    :goto_29
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lio/vanta/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 538
    invoke-static {}, Lio/vanta/core/system/pm/BPackageInstallerService;->get()Lio/vanta/core/system/pm/BPackageInstallerService;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p2}, Lio/vanta/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;ZI)I

    if-eqz v4, :cond_46

    .line 544
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mSettings:Lio/vanta/core/system/pm/Settings;

    invoke-virtual {v3, p1}, Lio/vanta/core/system/pm/Settings;->removePackage(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lio/vanta/core/system/pm/BPackageManagerService;->mComponentResolver:Lio/vanta/core/system/pm/ComponentResolver;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-virtual {v3, v2}, Lio/vanta/core/system/pm/ComponentResolver;->removeAllComponents(Lio/vanta/core/system/pm/BPackage;)V

    goto :goto_4c

    .line 547
    :cond_46
    invoke-virtual {v2, p2}, Lio/vanta/core/system/pm/BPackageSettings;->removeUser(I)V

    .line 548
    invoke-virtual {v2}, Lio/vanta/core/system/pm/BPackageSettings;->save()Z

    .line 550
    :goto_4c
    invoke-virtual {p0, p1, v4, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    .line 551
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_52

    .line 552
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p1

    .line 551
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1

    :catchall_55
    move-exception p1

    .line 552
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p1
.end method
