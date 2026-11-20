.class public abstract Lio/vanta/core/system/am/IBActivityManagerService$Stub;
.super Landroid/os/Binder;
.source "IBActivityManagerService.java"

# interfaces
.implements Lio/vanta/core/system/am/IBActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/IBActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/am/IBActivityManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquireContentProviderClient:I = 0xe

.field static final TRANSACTION_bindService:I = 0x8

.field static final TRANSACTION_finishBroadcast:I = 0x18

.field static final TRANSACTION_getCallingActivity:I = 0x1a

.field static final TRANSACTION_getCallingPackage:I = 0x19

.field static final TRANSACTION_getIntentSender:I = 0x1b

.field static final TRANSACTION_getPackageForIntentSender:I = 0x1c

.field static final TRANSACTION_getRunningAppProcesses:I = 0x15

.field static final TRANSACTION_getRunningServices:I = 0x16

.field static final TRANSACTION_getUidForIntentSender:I = 0x1d

.field static final TRANSACTION_initProcess:I = 0x1

.field static final TRANSACTION_onActivityCreated:I = 0x11

.field static final TRANSACTION_onActivityDestroyed:I = 0x13

.field static final TRANSACTION_onActivityResumed:I = 0x12

.field static final TRANSACTION_onFinishActivity:I = 0x14

.field static final TRANSACTION_onServiceDestroy:I = 0xd

.field static final TRANSACTION_onServiceUnbind:I = 0xc

.field static final TRANSACTION_onStartCommand:I = 0xb

.field static final TRANSACTION_peekService:I = 0x10

.field static final TRANSACTION_restartProcess:I = 0x2

.field static final TRANSACTION_scheduleBroadcastReceiver:I = 0x17

.field static final TRANSACTION_sendBroadcast:I = 0xf

.field static final TRANSACTION_startActivities:I = 0x5

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityAms:I = 0x4

.field static final TRANSACTION_startService:I = 0x6

.field static final TRANSACTION_stopService:I = 0x7

.field static final TRANSACTION_stopServiceToken:I = 0xa

.field static final TRANSACTION_unbindService:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 131
    const-string v0, "io.vanta.core.system.am.IBActivityManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/am/IBActivityManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_4
    const-string v0, "io.vanta.core.system.am.IBActivityManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 143
    instance-of v1, v0, Lio/vanta/core/system/am/IBActivityManagerService;

    if-eqz v1, :cond_13

    .line 144
    check-cast v0, Lio/vanta/core/system/am/IBActivityManagerService;

    return-object v0

    .line 146
    :cond_13
    new-instance v0, Lio/vanta/core/system/am/IBActivityManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/am/IBActivityManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 155
    const-string v1, "io.vanta.core.system.am.IBActivityManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_2bc

    move-object v1, p0

    .line 503
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 493
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 496
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getUidForIntentSender(Landroid/os/IBinder;I)I

    move-result p1

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f3

    .line 482
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 485
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1f3

    .line 468
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 475
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getIntentSender(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 457
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 460
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p1

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1f3

    .line 446
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1f3

    .line 438
    :pswitch_7e
    sget-object p1, Lio/vanta/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/am/PendingResultData;

    .line 439
    invoke-virtual {p0, p1}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->finishBroadcast(Lio/vanta/entity/am/PendingResultData;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 426
    :pswitch_8e
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 428
    sget-object p4, Lio/vanta/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/vanta/entity/am/PendingResultData;

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 431
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 415
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 418
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getRunningServices(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;

    move-result-object p1

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1f3

    .line 404
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 407
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;

    move-result-object p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1f3

    .line 396
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onFinishActivity(Landroid/os/IBinder;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 388
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 389
    invoke-virtual {p0, p1}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onActivityDestroyed(Landroid/os/IBinder;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 380
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 381
    invoke-virtual {p0, p1}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onActivityResumed(Landroid/os/IBinder;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 368
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 373
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 355
    :pswitch_10a
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 360
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_1f3

    .line 342
    :pswitch_126
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 347
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1f3

    .line 333
    :pswitch_142
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 334
    invoke-virtual {p0, p1}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_1f3

    .line 323
    :pswitch_156
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 326
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1f3

    .line 312
    :pswitch_16a
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 315
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;

    move-result-object p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1f3

    .line 302
    :pswitch_181
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 305
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->onStartCommand(Landroid/content/Intent;I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1f3

    .line 290
    :pswitch_194
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 295
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1f3

    .line 280
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 283
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->unbindService(Landroid/os/IBinder;I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1f3

    .line 265
    :pswitch_1ba
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 272
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1f3

    .line 252
    :pswitch_1d9
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 257
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f3
    move-object v1, p0

    goto/16 :goto_2ba

    .line 237
    :pswitch_1f6
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20a

    move v1, v0

    goto :goto_20b

    :cond_20a
    const/4 v1, 0x0

    .line 243
    :goto_20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 244
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1f3

    .line 220
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/content/Intent;

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 228
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    move-object v1, p0

    .line 229
    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2ba

    .line 197
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 211
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/os/Bundle;

    move-object v1, p0

    .line 212
    invoke-virtual/range {v1 .. v9}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2ba

    :pswitch_27b
    move-object v1, p0

    .line 187
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 190
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->startActivity(Landroid/content/Intent;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2ba

    :pswitch_28f
    move-object v1, p0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 180
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2ba

    :pswitch_2a3
    move-object v1, p0

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 167
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/am/IBActivityManagerService$Stub;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;

    move-result-object p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-static {p3, p1, v0}, Lio/vanta/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_2ba
    return v0

    nop

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_2a3
        :pswitch_28f
        :pswitch_27b
        :pswitch_245
        :pswitch_21a
        :pswitch_1f6
        :pswitch_1d9
        :pswitch_1ba
        :pswitch_1ab
        :pswitch_194
        :pswitch_181
        :pswitch_16a
        :pswitch_156
        :pswitch_142
        :pswitch_126
        :pswitch_10a
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_be
        :pswitch_aa
        :pswitch_8e
        :pswitch_7e
        :pswitch_6a
        :pswitch_56
        :pswitch_3e
        :pswitch_2a
        :pswitch_16
    .end packed-switch
.end method
