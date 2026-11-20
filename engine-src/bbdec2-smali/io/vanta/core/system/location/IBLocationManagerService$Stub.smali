.class public abstract Lio/vanta/core/system/location/IBLocationManagerService$Stub;
.super Landroid/os/Binder;
.source "IBLocationManagerService.java"

# interfaces
.implements Lio/vanta/core/system/location/IBLocationManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/location/IBLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/location/IBLocationManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAllCell:I = 0xc

.field static final TRANSACTION_getCell:I = 0xb

.field static final TRANSACTION_getGlobalLocation:I = 0x10

.field static final TRANSACTION_getGlobalNeighboringCell:I = 0xa

.field static final TRANSACTION_getLocation:I = 0xe

.field static final TRANSACTION_getNeighboringCell:I = 0x6

.field static final TRANSACTION_getPattern:I = 0x1

.field static final TRANSACTION_removeUpdates:I = 0x12

.field static final TRANSACTION_requestLocationUpdates:I = 0x11

.field static final TRANSACTION_setAllCell:I = 0x4

.field static final TRANSACTION_setCell:I = 0x3

.field static final TRANSACTION_setGlobalAllCell:I = 0x8

.field static final TRANSACTION_setGlobalCell:I = 0x7

.field static final TRANSACTION_setGlobalLocation:I = 0xf

.field static final TRANSACTION_setGlobalNeighboringCell:I = 0x9

.field static final TRANSACTION_setLocation:I = 0xd

.field static final TRANSACTION_setNeighboringCell:I = 0x5

.field static final TRANSACTION_setPattern:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "io.vanta.core.system.location.IBLocationManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/location/IBLocationManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_4
    const-string v0, "io.vanta.core.system.location.IBLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    instance-of v1, v0, Lio/vanta/core/system/location/IBLocationManagerService;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Lio/vanta/core/system/location/IBLocationManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/location/IBLocationManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 112
    const-string v1, "io.vanta.core.system.location.IBLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_158

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 292
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 293
    invoke-virtual {p0, p1}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->removeUpdates(Landroid/os/IBinder;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 280
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 285
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->requestLocationUpdates(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 272
    :pswitch_35
    invoke-virtual {p0}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getGlobalLocation()Lio/vanta/entity/location/BLocation;

    move-result-object p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_156

    .line 265
    :pswitch_41
    sget-object p1, Lio/vanta/entity/location/BLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/location/BLocation;

    .line 266
    invoke-virtual {p0, p1}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setGlobalLocation(Lio/vanta/entity/location/BLocation;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 254
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 257
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_156

    .line 242
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 246
    sget-object v1, Lio/vanta/entity/location/BLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/vanta/entity/location/BLocation;

    .line 247
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 231
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getAllCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_156

    .line 220
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getCell(ILjava/lang/String;)Lio/vanta/entity/location/BCell;

    move-result-object p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_156

    .line 212
    :pswitch_a5
    invoke-virtual {p0}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getGlobalNeighboringCell()Ljava/util/List;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_156

    .line 205
    :pswitch_b1
    sget-object p1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setGlobalNeighboringCell(Ljava/util/List;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 197
    :pswitch_bf
    sget-object p1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setGlobalAllCell(Ljava/util/List;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 189
    :pswitch_cd
    sget-object p1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/location/BCell;

    .line 190
    invoke-virtual {p0, p1}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setGlobalCell(Lio/vanta/entity/location/BCell;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_156

    .line 178
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getNeighboringCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_156

    .line 166
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 170
    sget-object v1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_156

    .line 154
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 158
    sget-object v1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 159
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setAllCell(ILjava/lang/String;Ljava/util/List;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_156

    .line 142
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 146
    sget-object v1, Lio/vanta/entity/location/BCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lio/vanta/core/system/location/IBLocationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/vanta/entity/location/BCell;

    .line 147
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setCell(ILjava/lang/String;Lio/vanta/entity/location/BCell;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_156

    .line 130
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 135
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->setPattern(ILjava/lang/String;I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_156

    .line 119
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService$Stub;->getPattern(ILjava/lang/String;)I

    move-result p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_156
    return v0

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_144
        :pswitch_131
        :pswitch_11a
        :pswitch_105
        :pswitch_f0
        :pswitch_dd
        :pswitch_cd
        :pswitch_bf
        :pswitch_b1
        :pswitch_a5
        :pswitch_91
        :pswitch_7d
        :pswitch_65
        :pswitch_51
        :pswitch_41
        :pswitch_35
        :pswitch_21
        :pswitch_15
    .end packed-switch
.end method
