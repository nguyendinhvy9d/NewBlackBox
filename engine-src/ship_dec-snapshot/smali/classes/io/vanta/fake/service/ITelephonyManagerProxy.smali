.class public Lio/vanta/fake/service/ITelephonyManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetNeighboringCellInfo;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetNetworkTypeForSubscriber;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetNetworkOperator;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetAllCellInfo;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetCellLocation;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetDeviceIdWithFeature;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetSubscriberId;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$getLine1NumberForDisplay;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$IsUserDataEnabled;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetMeidForSlot;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetMeid;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$getImeiForSlot;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetImei;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetSimStateForSlotIndex;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetSimStateForSlotIndexAndPortIndex;,
        Lio/vanta/fake/service/ITelephonyManagerProxy$GetDeviceId;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ITelephonyManagerProxy"


# instance fields
.field private final mRawBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "phone"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/ITelephonyManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 35
    iput-object p1, p0, Lio/vanta/fake/service/ITelephonyManagerProxy;->mRawBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 40
    iget-object v0, p0, Lio/vanta/fake/service/ITelephonyManagerProxy;->mRawBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Lvanta/com/android/internal/telephony/BRITelephonyStub;->get()Lvanta/com/android/internal/telephony/ITelephonyStubStatic;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/fake/service/ITelephonyManagerProxy;->mRawBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lvanta/com/android/internal/telephony/ITelephonyStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 46
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ITelephonyManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 59
    instance-of p3, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 60
    :cond_0
    instance-of p3, p1, Ljava/lang/SecurityException;

    if-eqz p3, :cond_7

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Suppressed SecurityException in ITelephony."

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ITelephonyManagerProxy"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 63
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p3, 0x0

    if-eq p1, p2, :cond_6

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_1

    goto :goto_2

    .line 65
    :cond_1
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_5

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 67
    :cond_2
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_4

    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_0
    const-wide/16 p1, 0x0

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 66
    :cond_5
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 64
    :cond_6
    :goto_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 72
    :cond_7
    throw p1
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
