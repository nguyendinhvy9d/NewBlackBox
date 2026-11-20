.class public interface abstract Lio/vanta/core/system/os/IBStorageManagerService;
.super Ljava/lang/Object;
.source "IBStorageManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/os/IBStorageManagerService$_Parcel;,
        Lio/vanta/core/system/os/IBStorageManagerService$Stub;,
        Lio/vanta/core/system/os/IBStorageManagerService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "io.vanta.core.system.os.IBStorageManagerService"


# virtual methods
.method public abstract getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
