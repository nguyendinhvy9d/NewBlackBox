.class public Lio/vanta/core/system/os/BStorageManagerService;
.super Lio/vanta/core/system/os/IBStorageManagerService$Stub;
.source "BStorageManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field private static final sService:Lio/vanta/core/system/os/BStorageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lio/vanta/core/system/os/BStorageManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/os/BStorageManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/os/BStorageManagerService;->sService:Lio/vanta/core/system/os/BStorageManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/vanta/core/system/os/IBStorageManagerService$Stub;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/core/system/os/BStorageManagerService;
    .locals 1

    .line 25
    sget-object v0, Lio/vanta/core/system/os/BStorageManagerService;->sService:Lio/vanta/core/system/os/BStorageManagerService;

    return-object v0
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/vanta/proxy/ProxyManifest;->getProxyFileProvider()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lio/vanta/fake/provider/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lvanta/android/os/storage/BRStorageManager;->get()Lvanta/android/os/storage/StorageManagerStatic;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lvanta/android/os/storage/StorageManagerStatic;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lvanta/android/os/storage/BRStorageManager;->get()Lvanta/android/os/storage/StorageManagerStatic;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p1, v0, p2}, Lvanta/android/os/storage/StorageManagerStatic;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    .line 40
    :cond_1
    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_3

    aget-object v1, p1, p2

    .line 41
    invoke-static {v1}, Lvanta/android/os/storage/BRStorageVolume;->get(Ljava/lang/Object;)Lvanta/android/os/storage/StorageVolumeContext;

    move-result-object v2

    invoke-static {p4}, Lio/vanta/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Lvanta/android/os/storage/StorageVolumeContext;->_set_mPath(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-static {v1}, Lvanta/android/os/storage/BRStorageVolume;->get(Ljava/lang/Object;)Lvanta/android/os/storage/StorageVolumeContext;

    move-result-object v1

    invoke-static {p4}, Lio/vanta/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lvanta/android/os/storage/StorageVolumeContext;->_set_mInternalPath(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p3
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
