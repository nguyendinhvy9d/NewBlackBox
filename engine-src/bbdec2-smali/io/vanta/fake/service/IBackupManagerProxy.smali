.class public Lio/vanta/fake/service/IBackupManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IBackupManagerProxy.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "backup"

.field public static final TAG:Ljava/lang/String; = "IBackupManagerProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "backup"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "backup"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lvanta/android/app/backup/BRIBackupManagerStub;->get()Lvanta/android/app/backup/IBackupManagerStubStatic;

    move-result-object v1

    invoke-interface {v1, v0}, Lvanta/android/app/backup/IBackupManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 34
    const-string p1, "backup"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IBackupManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 36
    :try_start_0
    const-string p1, "android.app.backup.BackupManager"

    invoke-static {p1}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p1

    const-string v0, "sService"

    .line 37
    invoke-virtual {p1, v0}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p2}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    const-string v0, "IBackupManagerProxy"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "isBackupServiceActive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "isBackupEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "isAppEligibleForBackup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "IBackupManager invocation threw exception for "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 92
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 94
    :cond_2
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v3

    :catch_0
    move-exception p1

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "IBackupManager invocation threw SecurityException for "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, ", suppressing: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 85
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 86
    :cond_4
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v3

    :cond_7
    :goto_0
    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 2

    .line 45
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "backup"

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

.method protected onBindMethod()V
    .locals 5

    .line 51
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 52
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isBackupServiceActive"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "isBackupEnabled"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "setBackupEnabled"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 55
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "isAppEligibleForBackup"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 56
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "dataChanged"

    invoke-direct {v0, v2, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "dataChangedForUser"

    invoke-direct {v0, v2, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "setAutoRestore"

    invoke-direct {v0, v2, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "setBackupProvisioned"

    invoke-direct {v0, v2, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "setBackupServiceActive"

    invoke-direct {v0, v2, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 61
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "getCurrentTransport"

    const-string v3, "com.google.android.gms/.backup.BackupTransportService"

    invoke-direct {v0, v2, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 62
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "listAllTransports"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 63
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "selectBackupTransport"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 64
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "selectBackupTransportAsync"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 65
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "updateTransportAttributes"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 66
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "getAvailableRestoreToken"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 67
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getDestinationString"

    const-string v2, "Google Drive"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 68
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getConfigurationIntent"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 69
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getDataManagementIntent"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 70
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "getDataManagementLabel"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 71
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "acknowledgeFullBackupOrRestore"

    invoke-direct {v0, v1, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IBackupManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
