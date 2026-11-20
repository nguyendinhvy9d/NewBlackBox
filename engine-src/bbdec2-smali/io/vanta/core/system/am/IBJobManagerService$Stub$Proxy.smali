.class final Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBJobManagerService.java"

# interfaces
.implements Lio/vanta/core/system/am/IBJobManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/IBJobManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 134
    iget-object v0, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancel(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    :try_start_8
    const-string v2, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object p1, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_2b
    move-exception p1

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw p1
.end method

.method public cancelAll(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    :try_start_8
    const-string v2, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object p1, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception p1

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw p1
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 138
    const-string v0, "io.vanta.core.system.am.IBJobManagerService"

    return-object v0
.end method

.method public queryJobRecord(Ljava/lang/String;II)Lio/vanta/entity/JobRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    :try_start_8
    const-string v2, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p1, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 171
    sget-object p1, Lio/vanta/entity/JobRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p1}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/JobRecord;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_2f
    move-exception p1

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw p1
.end method

.method public schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    :try_start_8
    const-string v2, "io.vanta.core.system.am.IBJobManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 147
    invoke-static {v0, p1, v2}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object p1, p0, Lio/vanta/core/system/am/IBJobManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    sget-object p1, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p1}, Lio/vanta/core/system/am/IBJobManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_2c
    move-exception p1

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p1
.end method
