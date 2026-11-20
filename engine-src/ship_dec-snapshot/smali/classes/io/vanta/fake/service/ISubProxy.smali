.class public Lio/vanta/fake/service/ISubProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ISubProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ISubProxy$GetActiveSubscriptionInfoCount;,
        Lio/vanta/fake/service/ISubProxy$GetActiveSubscriptionInfoList;,
        Lio/vanta/fake/service/ISubProxy$GetActiveSubIdList;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ISubProxy"


# instance fields
.field private final mRawBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "isub"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/ISubProxy;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 28
    iput-object p1, p0, Lio/vanta/fake/service/ISubProxy;->mRawBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 6

    .line 33
    iget-object v0, p0, Lio/vanta/fake/service/ISubProxy;->mRawBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 35
    :cond_0
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISub$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lio/vanta/fake/service/ISubProxy;->mRawBinder:Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWho failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ISubProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 46
    const-string p1, "isub"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ISubProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 47
    const-string p1, "telephony_subscription"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ISubProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 62
    instance-of p3, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 63
    :cond_0
    instance-of p3, p1, Ljava/lang/SecurityException;

    if-eqz p3, :cond_7

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Suppressed SecurityException in ISub."

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

    const-string p3, "ISubProxy"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 66
    const-class p2, [I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 67
    new-array p1, p3, [I

    return-object p1

    .line 68
    :cond_1
    const-class p2, Ljava/util/List;

    if-ne p1, p2, :cond_2

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 70
    :cond_2
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_6

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 72
    :cond_3
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_5

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    const-class p1, Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_5
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, -0x1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 79
    :cond_7
    throw p1
.end method

.method public isBadEnv()Z
    .locals 2

    .line 52
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "isub"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
