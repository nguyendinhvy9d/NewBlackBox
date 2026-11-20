.class public Lio/vanta/fake/service/ISystemUpdateProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ISystemUpdateProxy.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "system_update"

.field public static final TAG:Ljava/lang/String; = "ISystemUpdateProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "system_update"

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

    const-string v2, "system_update"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 26
    :cond_e
    const-string v2, "android.os.ISystemUpdateManager$Stub"

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
    .registers 3

    .line 36
    const-string p1, "system_update"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ISystemUpdateProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "retrieveSystemUpdateInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 56
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    .line 58
    :cond_12
    const-string v2, "updateSystemUpdateInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    return-object v3

    .line 62
    :cond_1c
    :try_start_1c
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ISystemUpdateManager threw SecurityException for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", returning safe fallback: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISystemUpdateProxy"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 66
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :cond_50
    return-object v3
.end method

.method public isBadEnv()Z
    .registers 3

    .line 41
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "system_update"

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
    .registers 4

    .line 47
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 48
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "retrieveSystemUpdateInfo"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISystemUpdateProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 49
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "updateSystemUpdateInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/ISystemUpdateProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
