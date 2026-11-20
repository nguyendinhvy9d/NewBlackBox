.class public abstract Landroid/content/pm/IPackageInstallerCallback$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerCallback.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerCallback"

.field static final TRANSACTION_onSessionActiveChanged:I = 0x3

.field static final TRANSACTION_onSessionBadgingChanged:I = 0x2

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionFinished:I = 0x5

.field static final TRANSACTION_onSessionProgressChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    const-string v0, "android.content.pm.IPackageInstallerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Landroid/content/pm/IPackageInstallerCallback;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 66
    const-string v1, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v2, v0

    .line 112
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionFinished(IZ)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionProgressChanged(IF)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v2, v0

    .line 92
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionActiveChanged(IZ)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionBadgingChanged(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionCreated(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v0
.end method
