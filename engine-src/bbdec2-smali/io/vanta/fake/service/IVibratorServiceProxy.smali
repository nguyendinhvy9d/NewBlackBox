.class public Lio/vanta/fake/service/IVibratorServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IVibratorServiceProxy.java"


# static fields
.field private static NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "vibrator_manager"

    sput-object v0, Lio/vanta/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    const-string v0, "vibrator"

    sput-object v0, Lio/vanta/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    sget-object v1, Lio/vanta/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 32
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    sget-object v1, Lio/vanta/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lvanta/android/os/BRIVibratorManagerServiceStub;->get()Lvanta/android/os/IVibratorManagerServiceStubStatic;

    move-result-object v1

    invoke-interface {v1, v0}, Lvanta/android/os/IVibratorManagerServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Lvanta/com/android/internal/os/BRIVibratorServiceStub;->get()Lvanta/com/android/internal/os/IVibratorServiceStubStatic;

    move-result-object v1

    invoke-interface {v1, v0}, Lvanta/com/android/internal/os/IVibratorServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    sget-object p1, Lio/vanta/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IVibratorServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstUid([Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
