.class Lio/vanta/core/system/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private final mAppIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrUid:I

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    .line 33
    sget-object v1, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    iput-object v1, p0, Lio/vanta/core/system/pm/Settings;->mSharedUsers:Ljava/util/Map;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    .line 37
    monitor-enter v0

    .line 38
    :try_start_19
    invoke-direct {p0}, Lio/vanta/core/system/pm/Settings;->loadUidLP()V

    .line 39
    invoke-static {}, Lio/vanta/core/system/pm/SharedUserSetting;->loadSharedUsers()V

    .line 40
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private acquireAndRegisterNewAppIdLPw(Lio/vanta/core/system/pm/BPackageSettings;)I
    .registers 4

    .line 102
    iget-object v0, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    iget-object v1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v1, v1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 106
    :cond_13
    iget v0, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    const/16 v1, 0x4e1f

    if-lt v0, v1, :cond_1b

    const/4 p1, -0x1

    return p1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 109
    iput v0, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    .line 110
    iget-object v0, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iget v1, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget p1, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    add-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method private loadUidLP()V
    .registers 6

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    :try_start_5
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getUidConf()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 143
    array-length v3, v2

    if-nez v3, :cond_13

    goto :goto_3f

    .line 148
    :cond_13
    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    .line 152
    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    monitor-enter v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_45
    .catchall {:try_start_5 .. :try_end_2d} :catchall_43

    .line 154
    :try_start_2d
    iget-object v4, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v4, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3c
    move-exception v2

    .line 156
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_45
    .catchall {:try_start_3e .. :try_end_3f} :catchall_43

    .line 172
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_43
    move-exception v1

    goto :goto_5e

    .line 161
    :catch_45
    :try_start_45
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getUidConf()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_43

    .line 167
    :catch_4c
    :try_start_4c
    iput v1, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    .line 168
    iget-object v1, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_43

    .line 169
    :try_start_51
    iget-object v2, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 170
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_5b

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_5b
    move-exception v2

    .line 170
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_43

    .line 172
    :goto_5e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v1
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lio/vanta/fake/XjSplitParse;->parse(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    const/4 p1, 0x0
    return-object p1
.end method

.method private reInstallBySystem(Landroid/content/pm/PackageInfo;Lio/vanta/entity/pm/InstallOption;)Lio/vanta/core/system/pm/BPackageSettings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reInstallBySystem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/Settings;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 242
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lio/vanta/core/system/pm/Settings;->getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lio/vanta/entity/pm/InstallOption;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object p1

    return-object p1

    .line 240
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "parser apk error."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveUidLP()V
    .registers 8

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getUidConf()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 119
    :try_start_e
    iget-object v3, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 120
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 122
    iget-object v6, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 125
    :cond_3b
    iget v3, p0, Lio/vanta/core/system/pm/Settings;->mCurrUid:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v3, p0, Lio/vanta/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 128
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Lio/vanta/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_55
    .catchall {:try_start_e .. :try_end_4f} :catchall_53

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_53
    move-exception v1

    goto :goto_60

    :catch_55
    move-exception v3

    .line 132
    :try_start_56
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_53

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    throw v1
.end method

.method private updatePackageLP(Ljava/io/File;)V
    .registers 13

    .line 197
    const-string v0, "Settings"

    .line 0
    const-string v1, "loaded Package: "

    const-string v2, "bad Package: "

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 199
    invoke-static {v3}, Lio/vanta/core/env/BEnvironment;->getPackageConf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    .line 201
    :try_start_13
    invoke-static {v5}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v5

    .line 203
    array-length v7, v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 204
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 206
    new-instance v5, Lio/vanta/core/system/pm/BPackageSettings;

    invoke-direct {v5, v4}, Lio/vanta/core/system/pm/BPackageSettings;-><init>(Landroid/os/Parcel;)V

    .line 207
    iget-object v7, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iput-object v5, v7, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    .line 208
    iget-object v7, v5, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    invoke-virtual {v7, v6}, Lio/vanta/entity/pm/InstallOption;->isFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 209
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 210
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 211
    iget-object v9, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v9, v9, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 213
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v8

    iget-object v9, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v9, v9, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lio/vanta/core/system/BProcessManagerService;->killAllByPackageName(Ljava/lang/String;)V

    .line 214
    iget-object v8, v5, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    invoke-direct {p0, v7, v8}, Lio/vanta/core/system/pm/Settings;->reInstallBySystem(Landroid/content/pm/PackageInfo;Lio/vanta/entity/pm/InstallOption;)Lio/vanta/core/system/pm/BPackageSettings;

    move-result-object v7

    .line 215
    iget-object v7, v7, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iput-object v7, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    goto :goto_6c

    .line 218
    :cond_5e
    iget-object v7, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v9, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    invoke-static {}, Lio/vanta/core/system/pm/BPackageUserState;->create()Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v10

    invoke-static {v9, v8, v10, v8}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iput-object v8, v7, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    :cond_6c
    :goto_6c
    invoke-virtual {v5}, Lio/vanta/core/system/pm/BPackageSettings;->save()Z

    .line 221
    iget-object v7, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v8, v5, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v8, v8, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_13 .. :try_end_88} :catchall_8c

    .line 232
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_8c
    move-exception v1

    .line 224
    :try_start_8d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    invoke-static {p1}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 227
    invoke-virtual {p0, v3}, Lio/vanta/core/system/pm/Settings;->removePackage(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/vanta/core/system/BProcessManagerService;->killAllByPackageName(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v3, v6, v1}, Lio/vanta/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_8d .. :try_end_b5} :catchall_b9

    .line 232
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_b9
    move-exception p1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw p1
.end method


# virtual methods
.method getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lio/vanta/entity/pm/InstallOption;)Lio/vanta/core/system/pm/BPackageSettings;
    .registers 7

    .line 45
    new-instance v0, Lio/vanta/core/system/pm/BPackageSettings;

    invoke-direct {v0}, Lio/vanta/core/system/pm/BPackageSettings;-><init>()V

    .line 46
    new-instance v1, Lio/vanta/core/system/pm/BPackage;

    invoke-direct {v1, p2}, Lio/vanta/core/system/pm/BPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iput-object v1, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    .line 47
    iget-object p2, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iput-object p3, p2, Lio/vanta/core/system/pm/BPackage;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 48
    iput-object p3, v0, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 49
    iget-object p2, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iput-object v0, p2, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    .line 50
    iget-object p2, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object p3, v0, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    const/4 v1, 0x0

    invoke-static {}, Lio/vanta/core/system/pm/BPackageUserState;->create()Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v2

    invoke-static {p3, v1, v2, v1}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Lio/vanta/core/system/pm/BPackage;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iput-object p3, p2, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    iget-object p2, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 52
    :try_start_28
    iget-object p3, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_3b

    .line 54
    iget p3, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    iput p3, v0, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    .line 55
    iget-object p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    iput-object p1, v0, Lio/vanta/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    goto :goto_41

    .line 57
    :cond_3b
    invoke-virtual {p0, v0}, Lio/vanta/core/system/pm/Settings;->registerAppIdLPw(Lio/vanta/core/system/pm/BPackageSettings;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 62
    :goto_41
    monitor-exit p2

    return-object v0

    .line 59
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "registerAppIdLPw err."

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_4b
    move-exception p1

    .line 62
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method registerAppIdLPw(Lio/vanta/core/system/pm/BPackageSettings;)Z
    .registers 5

    .line 68
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v0, v0, Lio/vanta/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 71
    iget-object v1, p0, Lio/vanta/core/system/pm/Settings;->mSharedUsers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/SharedUserSetting;

    if-nez v1, :cond_22

    .line 73
    new-instance v1, Lio/vanta/core/system/pm/SharedUserSetting;

    invoke-direct {v1, v0}, Lio/vanta/core/system/pm/SharedUserSetting;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lio/vanta/core/system/pm/BPackageSettings;)I

    move-result v2

    iput v2, v1, Lio/vanta/core/system/pm/SharedUserSetting;->userId:I

    .line 75
    iget-object v2, p0, Lio/vanta/core/system/pm/Settings;->mSharedUsers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_22
    if-eqz v1, :cond_54

    .line 79
    iget v1, v1, Lio/vanta/core/system/pm/SharedUserSetting;->userId:I

    iput v1, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->pkg:Lio/vanta/core/system/pm/BPackage;

    iget-object v2, v2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sharedUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setAppId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_54
    iget v0, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    if-nez v0, :cond_5e

    .line 84
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lio/vanta/core/system/pm/BPackageSettings;)I

    move-result v0

    iput v0, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    .line 86
    :cond_5e
    iget p1, p1, Lio/vanta/core/system/pm/BPackageSettings;->appId:I

    if-gez p1, :cond_64

    const/4 p1, 0x0

    goto :goto_65

    :cond_64
    const/4 p1, 0x1

    .line 95
    :goto_65
    invoke-direct {p0}, Lio/vanta/core/system/pm/Settings;->saveUidLP()V

    .line 96
    invoke-static {}, Lio/vanta/core/system/pm/SharedUserSetting;->saveSharedUsers()V

    return p1
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 3

    .line 247
    iget-object v0, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public scanPackage()V
    .registers 7

    .line 177
    iget-object v0, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 178
    :try_start_3
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getAppRootDir()Ljava/io/File;

    move-result-object v1

    .line 179
    invoke-static {v1}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 182
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_22

    .line 185
    :cond_1b
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/vanta/core/system/pm/Settings;->scanPackage(Ljava/lang/String;)V

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 187
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public scanPackage(Ljava/lang/String;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lio/vanta/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 192
    :try_start_3
    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/Settings;->updatePackageLP(Ljava/io/File;)V

    .line 193
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method
