.class public Lio/vanta/fake/service/IMiuiSecurityManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IMiuiSecurityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPrivacyStatus;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppPrivacyStatus;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPermissionControlOpen;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAppPermissionControlOpen;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetWakeUpTime;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetWakeUpTime;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetTrackWakeUp;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsTrackWakeUp;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetGameMode;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsGameMode;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$PushNewNotification;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAllowStartActivity;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppRunningControlEnabled;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppRunningControlEnabled;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckAccessControl;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SaveIcon;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetIcon;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsValidDevice;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$ActuallyCheckPermission;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckSmsBlocked;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetCurrentUserId;,
        Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetCurrentUserId;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "miui.security.SecurityManager"

.field public static final TAG:Ljava/lang/String; = "MiuiSecurityManagerProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "miui.security.SecurityManager"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 7

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "miui.security.SecurityManager"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    :try_start_0
    const-string v2, "miui.security.ISecurityManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 32
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get ISecurityManager interface: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiSecurityManagerProxy"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    const-string p1, "miui.security.SecurityManager"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnable()Z
    .locals 2

    .line 51
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "miui.security.SecurityManager"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 1

    .line 56
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 57
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPrivacyStatus;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPrivacyStatus;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppPrivacyStatus;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppPrivacyStatus;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPermissionControlOpen;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPermissionControlOpen;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAppPermissionControlOpen;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAppPermissionControlOpen;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 61
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetWakeUpTime;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetWakeUpTime;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 62
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetWakeUpTime;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetWakeUpTime;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 63
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetTrackWakeUp;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetTrackWakeUp;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 64
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsTrackWakeUp;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsTrackWakeUp;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 65
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetGameMode;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetGameMode;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 66
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsGameMode;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsGameMode;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 67
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$PushNewNotification;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$PushNewNotification;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 68
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAllowStartActivity;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsAllowStartActivity;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 69
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppRunningControlEnabled;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppRunningControlEnabled;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 70
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppRunningControlEnabled;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppRunningControlEnabled;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 71
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckAccessControl;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckAccessControl;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 72
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SaveIcon;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SaveIcon;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 73
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetIcon;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetIcon;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 74
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsValidDevice;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$IsValidDevice;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 75
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$ActuallyCheckPermission;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$ActuallyCheckPermission;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 76
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckSmsBlocked;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$CheckSmsBlocked;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 77
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetCurrentUserId;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetCurrentUserId;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 78
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetCurrentUserId;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetCurrentUserId;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
