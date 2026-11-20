.class public abstract Lio/vanta/core/system/user/IBUserManagerService$Stub;
.super Landroid/os/Binder;
.source "IBUserManagerService.java"

# interfaces
.implements Lio/vanta/core/system/user/IBUserManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/user/IBUserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/user/IBUserManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createUser:I = 0x3

.field static final TRANSACTION_deleteUser:I = 0x5

.field static final TRANSACTION_exists:I = 0x2

.field static final TRANSACTION_getUserInfo:I = 0x1

.field static final TRANSACTION_getUsers:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "io.vanta.core.system.user.IBUserManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/user/IBUserManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "io.vanta.core.system.user.IBUserManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 58
    instance-of v1, v0, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Lio/vanta/core/system/user/IBUserManagerService;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Lio/vanta/core/system/user/IBUserManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/user/IBUserManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 70
    const-string v1, "io.vanta.core.system.user.IBUserManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    if-eq p1, v0, :cond_54

    const/4 v1, 0x2

    if-eq p1, v1, :cond_45

    const/4 v1, 0x3

    if-eq p1, v1, :cond_36

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x5

    if-eq p1, v1, :cond_20

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 111
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->deleteUser(I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_62

    .line 103
    :cond_2b
    invoke-virtual {p0}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_62

    .line 95
    :cond_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->createUser(I)Lio/vanta/core/system/user/BUserInfo;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_62

    .line 86
    :cond_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->exists(I)Z

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 77
    :cond_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Lio/vanta/core/system/user/IBUserManagerService$Stub;->getUserInfo(I)Lio/vanta/core/system/user/BUserInfo;

    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_62
    return v0
.end method
