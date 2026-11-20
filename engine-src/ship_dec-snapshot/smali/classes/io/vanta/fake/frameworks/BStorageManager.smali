.class public Lio/vanta/fake/frameworks/BStorageManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/os/IBStorageManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sStorageManager:Lio/vanta/fake/frameworks/BStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/vanta/fake/frameworks/BStorageManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BStorageManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BStorageManager;->sStorageManager:Lio/vanta/fake/frameworks/BStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BStorageManager;
    .locals 1

    .line 15
    sget-object v0, Lio/vanta/fake/frameworks/BStorageManager;->sStorageManager:Lio/vanta/fake/frameworks/BStorageManager;

    return-object v0
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "storage_manager"

    return-object v0
.end method

.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BStorageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/os/IBStorageManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/os/IBStorageManagerService;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 1

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BStorageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/os/IBStorageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/vanta/core/system/os/IBStorageManagerService;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    return-object p1
.end method
