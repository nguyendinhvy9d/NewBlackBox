.class public Lio/vanta/fake/service/GmsCallerFix;
.super Ljava/lang/Object;
.source "GmsCallerFix.java"


# static fields
.field private static kickerStarted:Z

.field public static sLastGuestConsumer:Ljava/lang/String;


# direct methods
.method public static blockGmsBindIfNoGms(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    const-string v1, "com.google.android.gms"

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_1f
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_2b
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v0, 0x1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    :cond_3a
    return v0

    :catchall_3b
    move-exception v1

    const/4 v0, 0x0

    return v0
.end method

.method public static callerPkg()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_f

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/vanta/fake/frameworks/BActivityManager;->getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v1, v1, Lio/vanta/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_26

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_5a

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    return-object v3

    :cond_43
    const-string v3, "com.google.android.gsf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    return-object v3

    :cond_4c
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_59

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_59
    return-object v2

    :cond_5a
    const/4 v0, 0x0

    return-object v0
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5c

    :catchall_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fixGmsComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 6

    :try_start_0
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    :cond_2c
    return-object p0

    :catchall_2d
    move-exception v0

    return-object p0
.end method

.method public static fixGmsComponentPkg(Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_1e
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    return-void
.end method

.method public static fixGmsConfigUser(Lio/vanta/entity/AppConfig;)V
    .registers 7

    return-void

    :try_start_1
    if-eqz p0, :cond_43

    iget-object v0, p0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_43

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_17
    iget v1, p0, Lio/vanta/entity/AppConfig;->userId:I

    if-nez v1, :cond_43

    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/VantaCore;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/user/BUserInfo;

    iget v2, v2, Lio/vanta/core/system/user/BUserInfo;->id:I

    if-eqz v2, :cond_27

    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_27

    iput v2, p0, Lio/vanta/entity/AppConfig;->userId:I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    return-void
.end method

.method public static fixPkgInfo(Landroid/content/pm/PackageInfo;II)V
    .registers 5

    :try_start_0
    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    return-void
.end method

.method public static gabtpLog(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJGABTP consumerPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    return-void
.end method

.method public static gmsFallbackService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_10
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    return-object v0

    :cond_28
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.chimera.PersistentBoundBrokerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, p1}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_4a

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.chimera.PersistentApiService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, p1}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_4a

    const/4 v0, 0x0

    return-object v0

    :cond_4a
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_55

    :catchall_55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gnuLog(ILjava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJGNU uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->callerPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4, p0}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    array-length v5, v4

    if-lez v5, :cond_3d

    const/4 v5, 0x0

    aget-object v3, v4, v5

    :cond_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " orig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception v0

    return-void
.end method

.method public static guardGmsProcess(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    if-eqz p0, :cond_1f

    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_12
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    return-void
.end method

.method public static guestConsumer()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    if-eqz v1, :cond_16

    const v2, 0x15f92

    invoke-virtual {v1, v2}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    array-length v2, v1

    if-lez v2, :cond_16

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    :cond_16
    return-object v0

    :catchall_17
    move-exception v1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAppPkg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_22

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.rekoo.pubgm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static logCP(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    if-eqz p0, :cond_33

    const-string v0, "google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJCP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_24

    const-string v1, "NULL"

    goto :goto_26

    :cond_24
    const-string v1, "found"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    return-void
.end method

.method public static logComp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJCOMP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    return-void
.end method

.method public static logGcu2(Ljava/lang/String;II)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJGCU callerPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " my="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    return-void
.end method

.method public static logSigQ(Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_9

    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_37

    :cond_9
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "?"

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XJSIGQ proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsCallerFix"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    return-void
.end method

.method public static logUids()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XJUIDS myUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hostUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getBUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCallerFix"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    return-void
.end method

.method public static nameForUid(I)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p0}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    array-length v1, v0

    if-lez v1, :cond_2d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_2d

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    return-object v1
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2f

    :cond_2d
    const/4 v0, 0x0

    return-object v0

    :catchall_2f
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static redirectAddAccountToCell(Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    if-eqz p0, :cond_45

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.settings.ADD_ACCOUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_18
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v0, "com.google.android.accounts.AccountIntro"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms.auth.uiflows.addaccount.AccountIntroActivity"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "account_type"

    const-string v1, "com.google"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GmsCallerFix"

    const-string v1, "XJACCT redirect ADD_ACCOUNT -> in-cell AccountIntroActivity"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    return-void
.end method

.method public static resolveCaller(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 11

    if-eqz p0, :cond_76

    :try_start_2
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v4, v3

    if-lez v4, :cond_23

    const/4 v4, 0x0

    aget-object v2, v3, v4

    :cond_23
    invoke-static {p1, v0}, Lio/vanta/fake/service/GmsCallerFix;->isAppPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object v4, p1

    sput-object v4, Lio/vanta/fake/service/GmsCallerFix;->sLastGuestConsumer:Ljava/lang/String;

    goto :goto_3b

    :cond_2d
    invoke-static {v2, v0}, Lio/vanta/fake/service/GmsCallerFix;->isAppPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object v4, v2

    sput-object v4, Lio/vanta/fake/service/GmsCallerFix;->sLastGuestConsumer:Ljava/lang/String;

    goto :goto_3b

    :cond_37
    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->guestConsumer()Ljava/lang/String;

    move-result-object v4

    :goto_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XJRESOLVE callpkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uidpkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " buid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pick="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GmsCallerFix"

    invoke-static {v6, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_76

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_75

    return-object v5

    :catchall_75
    move-exception v0

    :cond_76
    return-object p0
.end method

.method public static resolveCallerPkg(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_4d

    :try_start_2
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1, p1}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    array-length v2, v1

    if-lez v2, :cond_4d

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lio/vanta/fake/service/GmsCallerFix;->isAppPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    sput-object v1, Lio/vanta/fake/service/GmsCallerFix;->sLastGuestConsumer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XJRPKG host-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " buid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GmsCallerFix"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_45

    return-object v1

    :catchall_45
    move-exception v0

    :cond_46
    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->guestConsumer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    return-object v0

    :cond_4d
    return-object p0
.end method

.method public static resolvePkgInfo(Lio/vanta/fake/frameworks/BPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 8

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/BUserInfo;

    iget v1, v1, Lio/vanta/core/system/user/BUserInfo;->id:I

    invoke-virtual {p0, p1, p2, v1}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v2

    :cond_28
    const/4 v0, 0x0

    return-object v0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static shaSig(Landroid/content/pm/PackageInfo;)V
    .registers 8

    :try_start_0
    if-eqz p0, :cond_46

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_46

    array-length v1, v0

    if-lez v1, :cond_46

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XJSHA pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sha1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GmsCallerFix"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_47

    :cond_46
    return-void

    :catchall_47
    move-exception v0

    return-void
.end method

.method public static shouldSkipGoogleServices(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v2, "com.google.android.gms.setupservices.GoogleServicesActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_28

    :cond_19
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v2, "com.google.android.gms.auth.addaccount.POST_ADD_ACCOUNT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v0, 0x1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    :cond_28
    :goto_28
    return v0

    :catchall_29
    move-exception v1

    const/4 v0, 0x0

    return v0
.end method

.method public static startBootKicker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    if-eqz p0, :cond_2e

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v1, Lio/vanta/fake/service/GmsCallerFix;->kickerStarted:Z

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    sput-boolean v1, Lio/vanta/fake/service/GmsCallerFix;->kickerStarted:Z

    new-instance v0, Lio/vanta/fake/service/XjBootKicker;

    invoke-direct {v0, p0, p1}, Lio/vanta/fake/service/XjBootKicker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v0, "GmsCallerFix"

    const-string v1, "XJKICK boot-kicker started"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    return-void
.end method

.method public static triggerGmsBoot(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .registers 9

    :try_start_0
    if-eqz p0, :cond_41

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN_NOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gms.checkin.CheckinServiceImposeReceiver"

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    new-instance v3, Lio/vanta/entity/am/PendingResultData;

    invoke-direct {v3}, Lio/vanta/entity/am/PendingResultData;-><init>()V

    iput v2, v3, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Lio/vanta/fake/frameworks/BActivityManager;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4, v1, v3, v2}, Lio/vanta/fake/frameworks/BActivityManager;->scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V

    const-string v5, "GmsCallerFix"

    const-string v0, "XJBOOT deliver CHECKIN_NOW -> gms"

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    return-void
.end method

.method public static uidPkgs()[Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->callerPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    :cond_4e
    const/4 v0, 0x0

    return-object v0
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_50

    :catchall_50
    const/4 v0, 0x0

    return-object v0
.end method

.method public static warmupChimeraContainers(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    if-eqz p0, :cond_5a

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.chimera.PersistentBoundBrokerService"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.chimera.PersistentApiService"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.chimera.GmsApiService"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.chimera.PersistentDirectBootAwareApiService"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.chimera.GmsIntentOperationService"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.chimera.PersistentIntentOperationService"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v4

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    :goto_3a
    const/4 v7, 0x6

    if-ge v6, v7, :cond_53

    aget-object v7, v1, v6

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v4, v8, v3, v3, v5}, Lio/vanta/fake/frameworks/BActivityManager;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_53
    const-string v0, "GmsCallerFix"

    const-string v1, "XJWARMUP started chimera containers"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5b

    :cond_5a
    return-void

    :catchall_5b
    move-exception v0

    return-void
.end method

.method public static xjLogSig(Landroid/content/pm/PackageInfo;)V
    .registers 10

    invoke-static {p0}, Lio/vanta/fake/service/GmsCallerFix;->shaSig(Landroid/content/pm/PackageInfo;)V

    :try_start_3
    if-eqz p0, :cond_4c

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_19
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x8000040

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_30

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :cond_30
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v2, :cond_36

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_36
    const-string v2, "GmsCallerFix"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XJFIXSIG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4d

    :cond_4c
    return-void

    :catchall_4d
    move-exception v0

    return-void
.end method
