.class public abstract Lio/vanta/core/IBActivityThread$Stub;
.super Landroid/os/Binder;
.source "IBActivityThread.java"

# interfaces
.implements Lio/vanta/core/IBActivityThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/IBActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/IBActivityThread$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquireContentProviderClient:I = 0x4

.field static final TRANSACTION_bindApplication:I = 0x2

.field static final TRANSACTION_finishActivity:I = 0x7

.field static final TRANSACTION_getActivityThread:I = 0x1

.field static final TRANSACTION_handleNewIntent:I = 0x8

.field static final TRANSACTION_notifyAccountsChanged:I = 0xa

.field static final TRANSACTION_peekService:I = 0x5

.field static final TRANSACTION_restartJobService:I = 0x3

.field static final TRANSACTION_scheduleReceiver:I = 0x9

.field static final TRANSACTION_stopService:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "io.vanta.core.IBActivityThread"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/IBActivityThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/IBActivityThread;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    const-string v0, "io.vanta.core.IBActivityThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    instance-of v1, v0, Lio/vanta/core/IBActivityThread;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lio/vanta/core/IBActivityThread;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lio/vanta/core/IBActivityThread$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/IBActivityThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 84
    const-string v1, "io.vanta.core.IBActivityThread"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_0    # 0xa
    invoke-virtual {p0}, Lio/vanta/core/IBActivityThread$Stub;->notifyAccountsChanged()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    :pswitch_1    # 0x9
    sget-object p1, Lio/vanta/entity/am/ReceiverData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/am/ReceiverData;

    .line 157
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->scheduleReceiver(Lio/vanta/entity/am/ReceiverData;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :pswitch_2    # 0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 148
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lio/vanta/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/IBActivityThread$Stub;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 138
    :pswitch_3    # 0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->finishActivity(Landroid/os/IBinder;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 130
    :pswitch_4    # 0x6
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->stopService(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 121
    :pswitch_5    # 0x5
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 112
    :pswitch_6    # 0x4
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 113
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 104
    :pswitch_7    # 0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lio/vanta/core/IBActivityThread$Stub;->restartJobService(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :pswitch_8    # 0x2
    invoke-virtual {p0}, Lio/vanta/core/IBActivityThread$Stub;->bindApplication()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :pswitch_9    # 0x1
    invoke-virtual {p0}, Lio/vanta/core/IBActivityThread$Stub;->getActivityThread()Landroid/os/IBinder;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9    # 0x1
        :pswitch_8    # 0x2
        :pswitch_7    # 0x3
        :pswitch_6    # 0x4
        :pswitch_5    # 0x5
        :pswitch_4    # 0x6
        :pswitch_3    # 0x7
        :pswitch_2    # 0x8
        :pswitch_1    # 0x9
        :pswitch_0    # 0xa
    .end packed-switch
.end method
