.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final TRANSACTION_abandon:I = 0x9

.field static final TRANSACTION_addClientProgress:I = 0x2

.field static final TRANSACTION_close:I = 0x7

.field static final TRANSACTION_commit:I = 0x8

.field static final TRANSACTION_getNames:I = 0x3

.field static final TRANSACTION_openRead:I = 0x5

.field static final TRANSACTION_openWrite:I = 0x4

.field static final TRANSACTION_removeSplit:I = 0x6

.field static final TRANSACTION_setClientProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Landroid/content/pm/IPackageInstallerSession;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 81
    const-string v1, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v1, p0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 154
    :pswitch_0    # 0x9
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 147
    :pswitch_1    # 0x8
    sget-object p1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/content/pm/IPackageInstallerSession$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentSender;

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 140
    :pswitch_2    # 0x7
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 133
    :pswitch_3    # 0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 124
    :pswitch_4    # 0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-static {p3, p1, v0}, Landroid/content/pm/IPackageInstallerSession$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 111
    :pswitch_5    # 0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    .line 116
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-static {p3, p1, v0}, Landroid/content/pm/IPackageInstallerSession$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_6    # 0x3
    move-object v1, p0

    .line 103
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7    # 0x2
    move-object v1, p0

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_8    # 0x1
    move-object v1, p0

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8    # 0x1
        :pswitch_7    # 0x2
        :pswitch_6    # 0x3
        :pswitch_5    # 0x4
        :pswitch_4    # 0x5
        :pswitch_3    # 0x6
        :pswitch_2    # 0x7
        :pswitch_1    # 0x8
        :pswitch_0    # 0x9
    .end packed-switch
.end method
