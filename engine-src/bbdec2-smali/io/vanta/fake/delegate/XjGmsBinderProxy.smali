.class public Lio/vanta/fake/delegate/XjGmsBinderProxy;
.super Landroid/os/Binder;
.source "XjGmsBinderProxy.java"


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method

.method private rewrite(Landroid/os/Parcel;)Landroid/os/Parcel;
    .registers 16

    move-object v0, p1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v3, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-object v1

    :cond_2c
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    add-int v4, v5, v4

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_49
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v4, :cond_be

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int v7, v6, v7

    const/high16 v8, -0x10000

    and-int v9, v6, v8

    if-ne v9, v8, :cond_64

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v9, 0x1

    goto :goto_67

    :cond_64
    ushr-int/lit8 v8, v6, 0x10

    const/4 v9, 0x0

    :goto_67
    const-string p0, "XjGmsProxy"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    const/4 v11, 0x4

    if-ne v7, v11, :cond_ad

    const-string p0, "XjGmsProxy-orig"

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "XjGmsProxy-host"

    invoke-static {p0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v11, v10, v8

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    const v11, -0xfffc

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    add-int/lit8 v13, v11, 0x4

    sub-int v13, v12, v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_49

    :cond_ad
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v9, :cond_b5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_b5
    invoke-virtual {v1, v0, v10, v8}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int v11, v10, v8

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_49

    :cond_be
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    add-int/lit8 v7, v5, 0x4

    sub-int v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v3, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    add-int v4, v4, v3

    :goto_ee
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v4, :cond_121

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int v6, v5, v6

    const/high16 v7, -0x10000

    and-int v8, v5, v7

    if-ne v8, v7, :cond_108

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    goto :goto_10a

    :cond_108
    ushr-int/lit8 v8, v5, 0x10

    :goto_10a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    const/4 v10, 0x4

    if-ne v6, v10, :cond_11b

    const-string v10, "XjGmsProxy-nd4"

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    :cond_11b
    add-int v10, v9, v8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_ee

    :cond_121
    :goto_121
    return-object v1
.end method


# virtual methods
.method public isBinderAlive()Z
    .registers 2

    iget-object v0, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string v0, "XjGmsProxy"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_25

    if-eqz p2, :cond_25

    :try_start_f
    invoke-direct {p0, p2}, Lio/vanta/fake/delegate/XjGmsBinderProxy;->rewrite(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, p1, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    move-exception v0

    const-string v1, "XjGmsProxy"

    const-string v2, "rewrite-fail"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    iget-object v0, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public pingBinder()Z
    .registers 2

    iget-object v0, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4

    iget-object v0, p0, Lio/vanta/fake/delegate/XjGmsBinderProxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
