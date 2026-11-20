.class public abstract Landroid/content/ISyncContext$Stub;
.super Landroid/os/Binder;
.source "ISyncContext.java"

# interfaces
.implements Landroid/content/ISyncContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncContext$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncContext"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_sendHeartbeat:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.content.ISyncContext"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.content.ISyncContext"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 58
    instance-of v1, v0, Landroid/content/ISyncContext;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/content/ISyncContext;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/content/ISyncContext$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/ISyncContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.content.ISyncContext"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    if-eq p1, v0, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 83
    :cond_17
    sget-object p1, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/content/ISyncContext$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SyncResult;

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/ISyncContext$Stub;->onFinished(Landroid/content/SyncResult;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2c

    .line 76
    :cond_26
    invoke-virtual {p0}, Landroid/content/ISyncContext$Stub;->sendHeartbeat()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2c
    return v0
.end method
