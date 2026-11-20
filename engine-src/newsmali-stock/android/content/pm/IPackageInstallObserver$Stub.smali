.class public abstract Landroid/content/pm/IPackageInstallObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_packageInstalled:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "android.content.pm.IPackageInstallObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Landroid/content/pm/IPackageInstallObserver;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Landroid/content/pm/IPackageInstallObserver;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 55
    const-string v1, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    if-eq p1, v0, :cond_14

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageInstallObserver$Stub;->packageInstalled(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
