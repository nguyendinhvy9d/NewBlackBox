.class public Lio/vanta/fake/service/ISensorPrivacyManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ISensorPrivacyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ISensorPrivacyManagerProxy$SetSensorPrivacyForProfile;,
        Lio/vanta/fake/service/ISensorPrivacyManagerProxy$SetSensorPrivacy;,
        Lio/vanta/fake/service/ISensorPrivacyManagerProxy$IsSensorPrivacyEnabledForProfile;,
        Lio/vanta/fake/service/ISensorPrivacyManagerProxy$IsSensorPrivacyEnabledForUser;,
        Lio/vanta/fake/service/ISensorPrivacyManagerProxy$IsSensorPrivacyEnabled;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SensorPrivacyProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "sensor_privacy"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 9

    .line 26
    const-string v0, "android.hardware.ISensorPrivacyManager$Stub"

    const-string v1, "sensor_privacy"

    const-string v2, "asInterface"

    const-string v3, "SensorPrivacyProxy"

    .line 0
    const-string v4, "Failed alternative path: "

    const-string v5, "Failed Android 16+ path, trying alternative: "

    const/4 v6, 0x0

    .line 30
    :try_start_0
    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v7

    .line 31
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v8

    invoke-interface {v8, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    filled-new-array {v2, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 33
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v5, "android.hardware.ISensorPrivacyManager"

    invoke-static {v5}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v5

    .line 38
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v7

    invoke-interface {v7, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    .line 40
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    .line 45
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v2

    invoke-interface {v2, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_0
    if-eqz v0, :cond_0

    .line 55
    :try_start_5
    const-string v1, "Successfully obtained ISensorPrivacyManager interface"

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    check-cast v0, Landroid/os/IInterface;

    return-object v0

    .line 58
    :cond_0
    const-string v0, "Reflection succeeded but returned null interface"

    invoke-static {v3, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_2
    move-exception v0

    .line 48
    const-string v1, "All reflection paths failed for ISensorPrivacyManager"

    invoke-static {v3, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v6

    :catch_3
    move-exception v0

    .line 63
    const-string v1, "Failed to get ISensorPrivacyManager interface"

    invoke-static {v3, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    const-string p1, "sensor_privacy"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/ISensorPrivacyManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
