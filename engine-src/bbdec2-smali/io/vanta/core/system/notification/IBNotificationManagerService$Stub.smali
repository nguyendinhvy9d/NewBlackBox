.class public abstract Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;
.super Landroid/os/Binder;
.source "IBNotificationManagerService.java"

# interfaces
.implements Lio/vanta/core/system/notification/IBNotificationManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/notification/IBNotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/notification/IBNotificationManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelNotificationWithTag:I = 0x9

.field static final TRANSACTION_createNotificationChannel:I = 0x4

.field static final TRANSACTION_createNotificationChannelGroup:I = 0x6

.field static final TRANSACTION_deleteNotificationChannel:I = 0x5

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x7

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x8

.field static final TRANSACTION_getNotificationChannel:I = 0x1

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x3

.field static final TRANSACTION_getNotificationChannels:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "io.vanta.core.system.notification.IBNotificationManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/notification/IBNotificationManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    const-string v0, "io.vanta.core.system.notification.IBNotificationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 81
    const-string v1, "io.vanta.core.system.notification.IBNotificationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 180
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->cancelNotificationWithTag(ILjava/lang/String;I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 165
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 168
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 141
    :pswitch_3
    sget-object p1, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 131
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->deleteNotificationChannel(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 121
    :pswitch_5
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 124
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->createNotificationChannel(Landroid/app/NotificationChannel;I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 113
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    .line 99
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannels(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    .line 88
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannel(Ljava/lang/String;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
