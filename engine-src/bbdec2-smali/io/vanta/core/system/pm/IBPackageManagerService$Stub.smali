.class public abstract Lio/vanta/core/system/pm/IBPackageManagerService$Stub;
.super Landroid/os/Binder;
.source "IBPackageManagerService.java"

# interfaces
.implements Lio/vanta/core/system/pm/IBPackageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/IBPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/IBPackageManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearPackage:I = 0x14

.field static final TRANSACTION_deleteUser:I = 0x16

.field static final TRANSACTION_getActivityInfo:I = 0x9

.field static final TRANSACTION_getApplicationInfo:I = 0x5

.field static final TRANSACTION_getInstalledApplications:I = 0xb

.field static final TRANSACTION_getInstalledPackages:I = 0xc

.field static final TRANSACTION_getInstalledPackagesAsUser:I = 0x18

.field static final TRANSACTION_getPackageInfo:I = 0x6

.field static final TRANSACTION_getPackagesForUid:I = 0x19

.field static final TRANSACTION_getProviderInfo:I = 0xa

.field static final TRANSACTION_getReceiverInfo:I = 0x8

.field static final TRANSACTION_getServiceInfo:I = 0x7

.field static final TRANSACTION_installPackageAsUser:I = 0x11

.field static final TRANSACTION_isInstalled:I = 0x17

.field static final TRANSACTION_queryBroadcastReceivers:I = 0xe

.field static final TRANSACTION_queryContentProviders:I = 0x10

.field static final TRANSACTION_queryIntentActivities:I = 0xd

.field static final TRANSACTION_queryIntentServices:I = 0xf

.field static final TRANSACTION_resolveActivity:I = 0x2

.field static final TRANSACTION_resolveContentProvider:I = 0x3

.field static final TRANSACTION_resolveIntent:I = 0x4

.field static final TRANSACTION_resolveService:I = 0x1

.field static final TRANSACTION_stopPackage:I = 0x15

.field static final TRANSACTION_uninstallPackage:I = 0x13

.field static final TRANSACTION_uninstallPackageAsUser:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "io.vanta.core.system.pm.IBPackageManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/pm/IBPackageManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_4
    const-string v0, "io.vanta.core.system.pm.IBPackageManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 134
    instance-of v1, v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_13

    .line 135
    check-cast v0, Lio/vanta/core/system/pm/IBPackageManagerService;

    return-object v0

    .line 137
    :cond_13
    new-instance v0, Lio/vanta/core/system/pm/IBPackageManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 146
    const-string v1, "io.vanta.core.system.pm.IBPackageManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_264

    .line 458
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 448
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 451
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getPackagesForUid(II)[Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_263

    .line 439
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 440
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 428
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 431
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_263

    .line 420
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 421
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->deleteUser(I)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_263

    .line 410
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 413
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->stopPackage(Ljava/lang/String;I)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_263

    .line 400
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->clearPackage(Ljava/lang/String;I)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_263

    .line 392
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->uninstallPackage(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_263

    .line 382
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 385
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->uninstallPackageAsUser(Ljava/lang/String;I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_263

    .line 369
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    sget-object p4, Lio/vanta/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/vanta/entity/pm/InstallOption;

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 374
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->installPackageAsUser(Ljava/lang/String;Lio/vanta/entity/pm/InstallOption;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object p1

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 354
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 361
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 341
    :pswitch_cd
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 346
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 326
    :pswitch_e9
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 333
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 311
    :pswitch_109
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 318
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 300
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 303
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 289
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 292
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_263

    .line 276
    :pswitch_151
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 281
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 263
    :pswitch_16d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 268
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 250
    :pswitch_189
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 255
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 237
    :pswitch_1a5
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 242
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 224
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 229
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_263

    .line 211
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 216
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_263

    .line 196
    :pswitch_1f0
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 203
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_263

    .line 183
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 188
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_263

    .line 168
    :pswitch_226
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 175
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_263

    .line 153
    :pswitch_245
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 160
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/pm/IBPackageManagerService$Stub;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_263
    return v0

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_245
        :pswitch_226
        :pswitch_20f
        :pswitch_1f0
        :pswitch_1d9
        :pswitch_1c1
        :pswitch_1a5
        :pswitch_189
        :pswitch_16d
        :pswitch_151
        :pswitch_13d
        :pswitch_129
        :pswitch_109
        :pswitch_e9
        :pswitch_cd
        :pswitch_b1
        :pswitch_95
        :pswitch_85
        :pswitch_79
        :pswitch_69
        :pswitch_59
        :pswitch_4d
        :pswitch_39
        :pswitch_29
        :pswitch_15
    .end packed-switch
.end method
