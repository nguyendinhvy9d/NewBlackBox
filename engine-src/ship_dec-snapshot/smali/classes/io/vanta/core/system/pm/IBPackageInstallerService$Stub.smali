.class public abstract Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;
.super Landroid/os/Binder;
.source "IBPackageInstallerService.java"

# interfaces
.implements Lio/vanta/core/system/pm/IBPackageInstallerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/IBPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/IBPackageInstallerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearPackage:I = 0x3

.field static final TRANSACTION_installPackageAsUser:I = 0x1

.field static final TRANSACTION_uninstallPackageAsUser:I = 0x2

.field static final TRANSACTION_updatePackage:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "io.vanta.core.system.pm.IBPackageInstallerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/pm/IBPackageInstallerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    const-string v0, "io.vanta.core.system.pm.IBPackageInstallerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lio/vanta/core/system/pm/IBPackageInstallerService;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lio/vanta/core/system/pm/IBPackageInstallerService;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 68
    const-string v1, "io.vanta.core.system.pm.IBPackageInstallerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 110
    :cond_1
    sget-object p1, Lio/vanta/core/system/pm/BPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageInstallerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 111
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;->updatePackage(Lio/vanta/core/system/pm/BPackageSettings;)I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 99
    :cond_2
    sget-object p1, Lio/vanta/core/system/pm/BPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageInstallerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;->clearPackage(Lio/vanta/core/system/pm/BPackageSettings;I)I

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 86
    :cond_3
    sget-object p1, Lio/vanta/core/system/pm/BPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageInstallerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    move p4, v0

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    .line 90
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;->uninstallPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;ZI)I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    :cond_5
    sget-object p1, Lio/vanta/core/system/pm/BPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageInstallerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackageSettings;

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;->installPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;I)I

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
