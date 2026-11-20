.class public Ltop/niunaijun/blackbox/BlackBoxCore;
.super Ljava/lang/Object;
.source "BlackBoxCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;
    }
.end annotation


# static fields
.field private static final sInstance:Ltop/niunaijun/blackbox/BlackBoxCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sInstance:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/BlackBoxCore;
    .locals 1

    .line 24
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sInstance:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 28
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostUid()I
    .locals 1

    .line 40
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v0

    return v0
.end method

.method public static getHostUserId()I
    .locals 1

    .line 44
    invoke-static {}, Lio/vanta/VantaCore;->getHostUserId()I

    move-result v0

    return v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 32
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V
    .locals 1

    .line 168
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addServiceAvailableCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 164
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->addServiceAvailableCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearPackage(Ljava/lang/String;I)V
    .locals 1

    .line 136
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->clearPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public closeCodeInit()V
    .locals 1

    .line 52
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->closeCodeInit()V

    return-void
.end method

.method public deleteUser(I)V
    .locals 1

    .line 144
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->deleteUser(I)V

    return-void
.end method

.method public doAttachBaseContext(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V
    .locals 1

    .line 72
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->doAttachBaseContext(Landroid/content/Context;Lio/vanta/app/configuration/ClientConfiguration;)V

    return-void
.end method

.method public doCreate()V
    .locals 1

    .line 76
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->doCreate()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 180
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public installGms(I)Lio/vanta/entity/pm/InstallResult;
    .locals 1

    .line 156
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->installGms(I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Landroid/net/Uri;I)Lio/vanta/entity/pm/InstallResult;
    .locals 1

    .line 112
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->installPackageAsUser(Landroid/net/Uri;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Ljava/io/File;I)Lio/vanta/entity/pm/InstallResult;
    .locals 1

    .line 108
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->installPackageAsUser(Ljava/io/File;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;
    .locals 1

    .line 104
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->installPackageAsUser(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageWithSplits(Ljava/lang/String;[Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;
    .locals 2

    .line 120
    invoke-static {}, Lio/vanta/entity/pm/InstallOption;->installBySystem()Lio/vanta/entity/pm/InstallOption;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 121
    array-length v1, p2

    if-lez v1, :cond_0

    .line 122
    invoke-virtual {v0, p2}, Lio/vanta/entity/pm/InstallOption;->withSplitCodePaths([Ljava/lang/String;)Lio/vanta/entity/pm/InstallOption;

    move-result-object v0

    .line 124
    :cond_0
    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lio/vanta/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public isBlackBoxApp(Ljava/io/File;)Z
    .locals 1

    .line 84
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->isNomadApp(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public isBlackBoxApp(Ljava/lang/String;)Z
    .locals 1

    .line 80
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->isNomadApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isBlackProcess()Z
    .locals 1

    .line 176
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isBlackProcess()Z

    move-result v0

    return v0
.end method

.method public isInstallGms(I)Z
    .locals 1

    .line 152
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->isInstallGms(I)Z

    move-result p1

    return p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 1

    .line 88
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isSupportGms()Z
    .locals 1

    .line 148
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isSupportGms()Z

    move-result v0

    return v0
.end method

.method public launchApk(Ljava/lang/String;I)Z
    .locals 1

    .line 132
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->launchApk(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public onAfterMainActivityOnCreate(Landroid/app/Activity;)V
    .locals 1

    .line 68
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->onAfterMainActivityOnCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public onAfterMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->onAfterMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V

    return-void
.end method

.method public onBeforeMainActivityOnCreate(Landroid/app/Activity;)V
    .locals 1

    .line 64
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->onBeforeMainActivityOnCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public onBeforeMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->onBeforeMainApplicationAttach(Landroid/app/Application;Landroid/content/Context;)V

    return-void
.end method

.method public removeAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V
    .locals 1

    .line 172
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendLogs(Ljava/lang/String;ZLtop/niunaijun/blackbox/BlackBoxCore$LogSendListener;)V
    .locals 2

    .line 188
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    new-instance v1, Ltop/niunaijun/blackbox/BlackBoxCore$1;

    invoke-direct {v1, p0, p3}, Ltop/niunaijun/blackbox/BlackBoxCore$1;-><init>(Ltop/niunaijun/blackbox/BlackBoxCore;Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/vanta/VantaCore;->sendLogs(Ljava/lang/String;ZLio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1

    .line 184
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .locals 1

    .line 140
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->stopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public uninstallGms(I)Z
    .locals 1

    .line 160
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/VantaCore;->uninstallGms(I)Z

    move-result p1

    return p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 1

    .line 128
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/vanta/VantaCore;->uninstallPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method
