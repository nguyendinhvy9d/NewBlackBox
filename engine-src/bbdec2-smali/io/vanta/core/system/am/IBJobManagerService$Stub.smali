.class public abstract Lio/vanta/core/system/am/IBJobManagerService$Stub;
.super Landroid/os/Binder;
.source "IBJobManagerService.java"

# interfaces
.implements Lio/vanta/core/system/am/IBJobManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/IBJobManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancel:I = 0x4

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_queryJobRecord:I = 0x2

.field static final TRANSACTION_schedule:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/am/IBJobManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/am/IBJobManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "io.vanta.core.system.am.IBJobManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 55
    instance-of v1, v0, Lio/vanta/core/system/am/IBJobManagerService;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Lio/vanta/core/system/am/IBJobManagerService;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 67
    const-string v1, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    if-eq p1, v0, :cond_5a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_43

    const/4 v1, 0x3

    if-eq p1, v1, :cond_34

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1d

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 108
    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 113
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBJobManagerService$Stub;->cancel(Ljava/lang/String;II)I

    move-result p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_70

    .line 98
    :cond_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBJobManagerService$Stub;->cancelAll(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_70

    .line 85
    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 90
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBJobManagerService$Stub;->queryJobRecord(Ljava/lang/String;II)Lio/vanta/entity/JobRecord;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_70

    .line 74
    :cond_5a
    sget-object p1, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBJobManagerService$Stub;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_70
    return v0
.end method
