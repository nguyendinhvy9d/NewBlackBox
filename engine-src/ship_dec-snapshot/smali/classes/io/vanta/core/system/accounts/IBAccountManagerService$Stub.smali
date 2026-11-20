.class public abstract Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;
.super Landroid/os/Binder;
.source "IBAccountManagerService.java"

# interfaces
.implements Lio/vanta/core/system/accounts/IBAccountManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/accounts/IBAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/accounts/IBAccountManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_accountAuthenticated:I = 0x1a

.field static final TRANSACTION_addAccount:I = 0x15

.field static final TRANSACTION_addAccountAsUser:I = 0x16

.field static final TRANSACTION_addAccountExplicitly:I = 0x9

.field static final TRANSACTION_addAccountExplicitlyWithVisibility:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x11

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x19

.field static final TRANSACTION_copyAccountToUser:I = 0xc

.field static final TRANSACTION_editProperties:I = 0x18

.field static final TRANSACTION_getAccountByTypeAndFeatures:I = 0x7

.field static final TRANSACTION_getAccountVisibility:I = 0x1f

.field static final TRANSACTION_getAccountsAndVisibilityForPackage:I = 0x20

.field static final TRANSACTION_getAccountsAsUser:I = 0x6

.field static final TRANSACTION_getAccountsByFeatures:I = 0x8

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x5

.field static final TRANSACTION_getAccountsForPackage:I = 0x4

.field static final TRANSACTION_getAuthToken:I = 0x14

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1b

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPackagesAndVisibilityForAccount:I = 0x1c

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_invalidateAuthToken:I = 0xd

.field static final TRANSACTION_peekAuthToken:I = 0xe

.field static final TRANSACTION_registerAccountListener:I = 0x21

.field static final TRANSACTION_removeAccountAsUser:I = 0xa

.field static final TRANSACTION_removeAccountExplicitly:I = 0xb

.field static final TRANSACTION_setAccountVisibility:I = 0x1e

.field static final TRANSACTION_setAuthToken:I = 0xf

.field static final TRANSACTION_setPassword:I = 0x10

.field static final TRANSACTION_setUserData:I = 0x12

.field static final TRANSACTION_unregisterAccountListener:I = 0x22

.field static final TRANSACTION_updateAppPermission:I = 0x13

.field static final TRANSACTION_updateCredentials:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "io.vanta.core.system.accounts.IBAccountManagerService"

    invoke-virtual {p0, p0, v0}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/vanta/core/system/accounts/IBAccountManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    const-string v0, "io.vanta.core.system.accounts.IBAccountManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    instance-of v1, v0, Lio/vanta/core/system/accounts/IBAccountManagerService;

    if-eqz v1, :cond_1

    .line 159
    check-cast v0, Lio/vanta/core/system/accounts/IBAccountManagerService;

    return-object v0

    .line 161
    :cond_1
    new-instance v0, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 170
    const-string v1, "io.vanta.core.system.accounts.IBAccountManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v2, p0

    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 633
    :pswitch_0    # 0x22
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 638
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 621
    :pswitch_1    # 0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 626
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 608
    :pswitch_2    # 0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 613
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p1

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 595
    :pswitch_3    # 0x1f
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 600
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result p1

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object v2, p0

    goto/16 :goto_8

    .line 580
    :pswitch_4    # 0x1e
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 587
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 562
    :pswitch_5    # 0x1d
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 566
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    .line 568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 569
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    .line 572
    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p1

    move-object p4, v1

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_6    # 0x1c
    move-object p4, p0

    .line 551
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 554
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;I)Ljava/util/Map;

    move-result-object p1

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_7    # 0x1b
    move-object p4, p0

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 544
    invoke-virtual {p0, p1, v1, v2, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    move-object v2, p4

    goto/16 :goto_8

    :pswitch_8    # 0x1a
    move-object p4, p0

    .line 526
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 529
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->accountAuthenticated(Landroid/accounts/Account;I)Z

    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_9    # 0x19
    move-object p4, p0

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 512
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/accounts/Account;

    .line 514
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v1

    .line 518
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p4

    .line 519
    invoke-virtual/range {v1 .. v6}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_a    # 0x18
    move-object p4, p0

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    .line 502
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 503
    invoke-virtual {p0, p1, v2, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZI)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_b    # 0x17
    move-object p4, p0

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 480
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/accounts/Account;

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v1

    .line 486
    :goto_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p4

    .line 489
    invoke-virtual/range {v1 .. v7}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 458
    :pswitch_c    # 0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v6, v0

    goto :goto_4

    :cond_4
    move v6, v1

    .line 468
    :goto_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    .line 471
    invoke-virtual/range {v1 .. v8}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 438
    :pswitch_d    # 0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v6, v0

    goto :goto_5

    :cond_5
    move v6, v1

    .line 448
    :goto_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    .line 451
    invoke-virtual/range {v1 .. v8}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 418
    :pswitch_e    # 0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 420
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/accounts/Account;

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v5, v0

    goto :goto_6

    :cond_6
    move v5, v1

    .line 426
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v6, v0

    goto :goto_7

    :cond_7
    move v6, v1

    .line 428
    :goto_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    .line 431
    invoke-virtual/range {v1 .. v8}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V

    move-object v2, v1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_f    # 0x13
    move-object v2, p0

    .line 404
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    move v1, v0

    .line 411
    :cond_8
    invoke-virtual {p0, p1, p4, v3, v1}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_10    # 0x12
    move-object v2, p0

    .line 390
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 397
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_11    # 0x11
    move-object v2, p0

    .line 380
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 383
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->clearPassword(Landroid/accounts/Account;I)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_12    # 0x10
    move-object v2, p0

    .line 368
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 373
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_13    # 0xf
    move-object v2, p0

    .line 354
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 361
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_14    # 0xe
    move-object v2, p0

    .line 341
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 346
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_15    # 0xd
    move-object v2, p0

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 334
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_16    # 0xc
    move-object v2, p0

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 317
    sget-object p4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 322
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_17    # 0xb
    move-object v2, p0

    .line 304
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 307
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->removeAccountExplicitly(Landroid/accounts/Account;I)Z

    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :pswitch_18    # 0xa
    move-object v2, p0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 292
    sget-object p4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v0

    .line 296
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 297
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_19    # 0x9
    move-object v2, p0

    .line 275
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 279
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 282
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :pswitch_1a    # 0x8
    move-object v2, p0

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 268
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1b    # 0x7
    move-object v2, p0

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 254
    invoke-virtual {p0, p1, p4, v1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1c    # 0x6
    move-object v2, p0

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 239
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    :pswitch_1d    # 0x5
    move-object v2, p0

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 228
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_8

    :pswitch_1e    # 0x4
    move-object v2, p0

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 215
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAccountsForPackage(Ljava/lang/String;II)[Landroid/accounts/Account;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_8

    :pswitch_1f    # 0x3
    move-object v2, p0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 202
    invoke-virtual {p0, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_8

    :pswitch_20    # 0x2
    move-object v2, p0

    .line 188
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 193
    invoke-virtual {p0, p1, p4, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_21    # 0x1
    move-object v2, p0

    .line 177
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lio/vanta/core/system/accounts/IBAccountManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 180
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;->getPassword(Landroid/accounts/Account;I)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21    # 0x1
        :pswitch_20    # 0x2
        :pswitch_1f    # 0x3
        :pswitch_1e    # 0x4
        :pswitch_1d    # 0x5
        :pswitch_1c    # 0x6
        :pswitch_1b    # 0x7
        :pswitch_1a    # 0x8
        :pswitch_19    # 0x9
        :pswitch_18    # 0xa
        :pswitch_17    # 0xb
        :pswitch_16    # 0xc
        :pswitch_15    # 0xd
        :pswitch_14    # 0xe
        :pswitch_13    # 0xf
        :pswitch_12    # 0x10
        :pswitch_11    # 0x11
        :pswitch_10    # 0x12
        :pswitch_f    # 0x13
        :pswitch_e    # 0x14
        :pswitch_d    # 0x15
        :pswitch_c    # 0x16
        :pswitch_b    # 0x17
        :pswitch_a    # 0x18
        :pswitch_9    # 0x19
        :pswitch_8    # 0x1a
        :pswitch_7    # 0x1b
        :pswitch_6    # 0x1c
        :pswitch_5    # 0x1d
        :pswitch_4    # 0x1e
        :pswitch_3    # 0x1f
        :pswitch_2    # 0x20
        :pswitch_1    # 0x21
        :pswitch_0    # 0x22
    .end packed-switch
.end method
