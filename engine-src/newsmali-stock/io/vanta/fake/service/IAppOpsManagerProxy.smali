.class public Lio/vanta/fake/service/IAppOpsManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IAppOpsManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IAppOpsManagerProxy$NoteOpNoThrow;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$NoteOp;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$FinishOp;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$StartOpNoThrow;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$StartOp;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$CheckOpNoThrow;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$NoteOperation;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$CheckOperationForDevice;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$CheckOperation;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$CheckPackage;,
        Lio/vanta/fake/service/IAppOpsManagerProxy$NoteProxyOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appops"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static getOpPublicName(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 176
    :try_start_1
    const-class v1, Landroid/app/AppOpsManager;

    const-string v2, "opToPublicName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    :cond_24
    return-object v0
.end method

.method private static isMediaStorageOrAudioOp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 151
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 152
    const-string v1, "READ_MEDIA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "READ_EXTERNAL_STORAGE"

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "RECORD_AUDIO"

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "CAPTURE_AUDIO_OUTPUT"

    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "MODIFY_AUDIO_SETTINGS"

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "AUDIO"

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "MICROPHONE"

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "FOREGROUND_SERVICE"

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "SYSTEM_ALERT_WINDOW"

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "WRITE_SETTINGS"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "ACCESS_FINE_LOCATION"

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "ACCESS_COARSE_LOCATION"

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "CAMERA"

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "BODY_SENSORS"

    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "BLUETOOTH_SCAN"

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "BLUETOOTH_CONNECT"

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "BLUETOOTH_ADVERTISE"

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "NEARBY_WIFI_DEVICES"

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "POST_NOTIFICATIONS"

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a1

    goto :goto_a2

    :cond_a1
    return v0

    :cond_a2
    :goto_a2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appops"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    invoke-static {}, Lvanta/com/android/internal/app/BRIAppOpsServiceStub;->get()Lvanta/com/android/internal/app/IAppOpsServiceStubStatic;

    move-result-object v1

    invoke-interface {v1, v0}, Lvanta/com/android/internal/app/IAppOpsServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Lvanta/android/app/BRAppOpsManager;->get(Ljava/lang/Object;)Lvanta/android/app/AppOpsManagerContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/AppOpsManagerContext;->_check_mService()Ljava/lang/reflect/Field;

    move-result-object p1

    const-string p2, "appops"

    if-eqz p1, :cond_27

    .line 33
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 35
    :try_start_17
    invoke-static {p1}, Lvanta/android/app/BRAppOpsManager;->get(Ljava/lang/Object;)Lvanta/android/app/AppOpsManagerContext;

    move-result-object p1

    invoke-virtual {p0}, Lio/vanta/fake/service/IAppOpsManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lvanta/android/app/AppOpsManagerContext;->_set_mService(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p0, p2}, Lio/vanta/fake/service/IAppOpsManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
