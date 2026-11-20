.class public Lio/vanta/fake/service/ISafetyCenterManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ISafetyCenterManagerProxy.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "safety_center"

.field public static final TAG:Ljava/lang/String; = "ISafetyCenterManager"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "safety_center"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 24
    :try_start_1
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "safety_center"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 26
    :cond_e
    const-string v2, "android.safetycenter.ISafetyCenterManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 28
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 36
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object p1

    const-string v0, "safety_center"

    invoke-interface {p1, v0}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 37
    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 39
    :try_start_f
    const-string p1, "android.safetycenter.SafetyCenterFrameworkInitializer"

    invoke-static {p1}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p1

    const-string v0, "sSafetyCenterManager"

    .line 40
    invoke-virtual {p1, v0}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1e

    :catchall_1e
    :cond_1e
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "isSafetyCenterEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_12

    return-object v3

    .line 71
    :cond_12
    :try_start_12
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "ISafetyCenterManager threw SecurityException for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", returning safe fallback: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ISafetyCenterManager"

    invoke-static {p3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 75
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_43

    return-object v3

    .line 76
    :cond_43
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :cond_4c
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_57

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_57
    const/4 p1, 0x0

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 3

    .line 49
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "safety_center"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eq v0, p0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 5

    .line 55
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 56
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isSafetyCenterEnabled"

    invoke-direct {v0, v3, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getSafetyCenterConfig"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getSafetySourceData"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "setSafetySourceData"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "addOnSafetyCenterDataChangedListener"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 61
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "removeOnSafetyCenterDataChangedListener"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
