.class public abstract Lio/vanta/core/IEmpty$Stub;
.super Landroid/os/Binder;
.source "IEmpty.java"

# interfaces
.implements Lio/vanta/core/IEmpty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/IEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/IEmpty$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "io.vanta.core.IEmpty"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/IEmpty$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/IEmpty;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_4
    const-string v0, "io.vanta.core.IEmpty"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Lio/vanta/core/IEmpty;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lio/vanta/core/IEmpty;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Lio/vanta/core/IEmpty$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/IEmpty$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
