.class public Lio/vanta/fake/delegate/XjGservicesStub;
.super Landroid/os/Binder;
.source "XjGservicesStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static isGmsBoundAction(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "com.google.android.gms."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const-string v0, ".START"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static maybeStub(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    if-eqz p0, :cond_10

    :try_start_2
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_f

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    return-object p0

    :catchall_f
    move-exception v0

    :cond_10
    new-instance p0, Lio/vanta/fake/delegate/XjGservicesStub;

    invoke-direct {p0}, Lio/vanta/fake/delegate/XjGservicesStub;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
