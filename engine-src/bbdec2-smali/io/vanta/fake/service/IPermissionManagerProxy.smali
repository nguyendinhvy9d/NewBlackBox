.class public Lio/vanta/fake/service/IPermissionManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IPermissionManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IPermissionManagerProxy$CheckPermissionHook;,
        Lio/vanta/fake/service/IPermissionManagerProxy$CheckUidPermissionHook;
    }
.end annotation


# static fields
.field private static final P:Ljava/lang/String; = "permissionmgr"

.field public static final TAG:Ljava/lang/String; = "IPermissionManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "permissionmgr"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method public static isForceGranted(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    const-string v1, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.ACCOUNT_MANAGER"

    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.USE_CREDENTIALS"

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_GSERVICES"

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "com.google.android.providers.gsf.permission.WRITE_GSERVICES"

    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.MANAGE_HARMFUL_APP_WARNINGS"

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.BACKUP"

    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.CONFIRM_FULL_BACKUP"

    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.BACKUP_DATA"

    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.BATTERY_STATS"

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.MANAGE_USERS"

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.FOREGROUND_SERVICE"

    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_SAFETY_CENTER_STATUS"

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.SEND_SAFETY_CENTER_UPDATE"

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.RECOVERY"

    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16d

    goto :goto_16e

    :cond_16d
    return v0

    :cond_16e
    :goto_16e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 33
    invoke-static {}, Lvanta/android/permission/BRIPermissionManagerStub;->get()Lvanta/android/permission/IPermissionManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "permissionmgr"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/permission/IPermissionManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 38
    const-string p1, "permissionmgr"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IPermissionManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lvanta/android/app/BRActivityThread;->getWithException()Lvanta/android/app/ActivityThreadStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/android/app/ActivityThreadStatic;->_set_sPermissionManager(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "checkPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "checkUidPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_14
    if-eqz p3, :cond_41

    .line 69
    array-length v0, p3

    if-lez v0, :cond_41

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-static {v1}, Lio/vanta/fake/service/IPermissionManagerProxy;->isForceGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IPermissionManagerProxy.invoke force-granting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IPermissionManagerProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :cond_41
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 6

    .line 45
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 46
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "addPermissionAsync"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 47
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "addPermission"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 48
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "performDexOpt"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 49
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v2, 0x0

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "performDexOptIfNeeded"

    invoke-direct {v0, v4, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 50
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v4, "performDexOptSecondary"

    invoke-direct {v0, v4, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 51
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "addOnPermissionsChangeListener"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 52
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "removeOnPermissionsChangeListener"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "checkDeviceIdentifierAccess"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 55
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 56
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "notifyDexLoad"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "notifyPackageUse"

    invoke-direct {v0, v1, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "setInstantAppCookie"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v1, "isInstantApp"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 61
    :cond_99
    new-instance v0, Lio/vanta/fake/service/IPermissionManagerProxy$CheckPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IPermissionManagerProxy$CheckPermissionHook;-><init>()V

    const-string v1, "checkPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    .line 62
    new-instance v0, Lio/vanta/fake/service/IPermissionManagerProxy$CheckUidPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IPermissionManagerProxy$CheckUidPermissionHook;-><init>()V

    const-string v1, "checkUidPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IPermissionManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
