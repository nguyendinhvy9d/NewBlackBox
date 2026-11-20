.class public Lio/vanta/fake/service/IPhoneSubInfoProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IPhoneSubInfoProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetImeiForSubscriber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetNaiForSubscriber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetDeviceIdForSubscriber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetDeviceId;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetSubscriberIdForSubscriber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetSubscriberId;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetIccSerialNumberForSubscriber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$GetIccSerialNumber;,
        Lio/vanta/fake/service/IPhoneSubInfoProxy$getLine1NumberForSubscriber;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IPhoneSubInfoProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 16
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/telephony/TelephonyManagerStatic;->_check_sServiceHandleCacheEnabled()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 17
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/telephony/TelephonyManagerStatic;->_set_sServiceHandleCacheEnabled(Ljava/lang/Object;)V

    .line 19
    :cond_19
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/telephony/TelephonyManagerStatic;->_check_getSubscriberInfoService()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 20
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/telephony/TelephonyManagerStatic;->getSubscriberInfoService()Ljava/lang/Object;

    :cond_2a
    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/telephony/TelephonyManagerStatic;->sIPhoneSubInfo()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 31
    invoke-static {}, Lvanta/android/telephony/BRTelephonyManager;->get()Lvanta/android/telephony/TelephonyManagerStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/android/telephony/TelephonyManagerStatic;->_set_sIPhoneSubInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Suppressed SecurityException in "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "IPhoneSubInfoProxy"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 42
    const-class p2, Ljava/lang/String;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_39

    return-object p3

    .line 44
    :cond_39
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_52

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_43

    goto :goto_52

    .line 46
    :cond_43
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_4d

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    return-object p3

    .line 47
    :cond_4d
    :goto_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :cond_52
    :goto_52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
