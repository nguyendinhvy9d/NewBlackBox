.class public final Lio/vanta/Vanta;
.super Ljava/lang/Object;
.source "Vanta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/Vanta$InitCallback;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "4.0.0"

.field private static final TAG:Ljava/lang/String; = "VantaSDK"

.field private static sContext:Landroid/content/Context;

.field private static volatile sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLicenseListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V
    .registers 1

    .line 156
    invoke-static {p0}, Lio/vanta/license/LicenseManager;->addListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V

    return-void
.end method

.method public static addLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V
    .registers 2

    .line 203
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/VantaCore;->addAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V

    return-void
.end method

.method public static addServiceAvailableCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 207
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/VantaCore;->addServiceAvailableCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .registers 3

    .line 35
    new-instance v0, Lio/vanta/Vanta$1;

    invoke-direct {v0, p1}, Lio/vanta/Vanta$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0}, Lio/vanta/Vanta;->attachBaseContext(Landroid/app/Application;Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V

    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V
    .registers 7

    .line 45
    const-string v0, "VantaSDK"

    sput-object p1, Lio/vanta/Vanta;->sContext:Landroid/content/Context;

    .line 47
    :try_start_4
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/VantaCore;->closeCodeInit()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_23

    :catchall_c
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCodeInit error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_23
    :try_start_23
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lio/vanta/VantaCore;->onBeforeMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_42

    :catchall_2b
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBeforeMainApplicationAttach error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_42
    :try_start_42
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/vanta/VantaCore;->doAttachBaseContext(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4a

    goto :goto_61

    :catchall_4a
    move-exception p2

    .line 62
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doAttachBaseContext error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_61
    :try_start_61
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lio/vanta/VantaCore;->onAfterMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_69

    goto :goto_80

    :catchall_69
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onAfterMainApplicationAttach error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    return-void
.end method

.method private static checkLicenseEnforcement()V
    .registers 0

    return-void
.end method

.method public static clearPackage(Ljava/lang/String;I)V
    .registers 3

    .line 164
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 165
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->clearPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;
    .registers 1

    .line 219
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;
    .registers 1

    .line 215
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getEngine()Lio/vanta/VantaCore;
    .registers 1

    .line 223
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledApplications(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstalledPackages(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLicenseExpirationFormatted()Ljava/lang/String;
    .registers 1

    .line 114
    const-string v0, "Lifetime"

    return-object v0
.end method

.method public static getLicenseExpiresAt()J
    .registers 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static getLicenseMessage()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "License active"

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 211
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 106
    const-string v0, "4.0.0"

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lio/vanta/Vanta$InitCallback;)V
    .registers 4

    if-eqz p0, :cond_8

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lio/vanta/Vanta;->sContext:Landroid/content/Context;

    :cond_8
    const/4 p0, 0x1

    .line 86
    sput-boolean p0, Lio/vanta/Vanta;->sInitialized:Z

    .line 87
    const-string p1, "VantaSDK"

    const-string v0, "Vanta SDK initialized successfully (version 4.0.0)"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_19

    .line 89
    const-string p1, "License active"

    invoke-interface {p2, p0, p1}, Lio/vanta/Vanta$InitCallback;->onResult(ZLjava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static installExistingPackage(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;
    .registers 3

    .line 126
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 127
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->installPackageAsUser(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public static installGms(I)Lio/vanta/entity/pm/InstallResult;
    .registers 2

    .line 189
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 190
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/VantaCore;->installGms(I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public static installPackage(Ljava/io/File;I)Lio/vanta/entity/pm/InstallResult;
    .registers 3

    .line 121
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 122
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->installPackageAsUser(Ljava/io/File;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public static isGmsInstalled(I)Z
    .registers 2

    .line 185
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/VantaCore;->isInstallGms(I)Z

    move-result p0

    return p0
.end method

.method public static isGmsSupported()Z
    .registers 1

    .line 181
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isSupportGms()Z

    move-result v0

    return v0
.end method

.method public static isInitialized()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLicenseValid()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 3

    .line 169
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static launchPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 137
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 138
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->launchApk(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static onCreate(Landroid/app/Application;)V
    .registers 4

    .line 73
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lio/vanta/Vanta;->sContext:Landroid/content/Context;

    .line 75
    :try_start_6
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object p0

    invoke-virtual {p0}, Lio/vanta/VantaCore;->doCreate()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doCreate error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VantaSDK"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static removeLicenseListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V
    .registers 1

    .line 160
    invoke-static {p0}, Lio/vanta/license/LicenseManager;->removeListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V

    return-void
.end method

.method public static stopAll()V
    .registers 1

    .line 148
    :try_start_0
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/core/system/BProcessManagerService;->killAll()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method

.method public static stopPackage(Ljava/lang/String;I)V
    .registers 3

    .line 142
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 143
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->stopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static uninstallGms(I)Z
    .registers 2

    .line 194
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 195
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/VantaCore;->uninstallGms(I)Z

    move-result p0

    return p0
.end method

.method public static uninstallPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 131
    invoke-static {}, Lio/vanta/Vanta;->checkLicenseEnforcement()V

    .line 132
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/vanta/VantaCore;->uninstallPackageAsUser(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method
