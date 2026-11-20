.class public Lio/vanta/fake/hook/HookManager;
.super Ljava/lang/Object;
.source "HookManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HookManager"

.field private static final sHookManager:Lio/vanta/fake/hook/HookManager;


# instance fields
.field private volatile mInitialized:Z

.field private final mInjectorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/fake/hook/IInjectHook;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/vanta/fake/hook/IInjectHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lio/vanta/fake/hook/HookManager;

    invoke-direct {v0}, Lio/vanta/fake/hook/HookManager;-><init>()V

    sput-object v0, Lio/vanta/fake/hook/HookManager;->sHookManager:Lio/vanta/fake/hook/HookManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/vanta/fake/hook/HookManager;->mInitialized:Z

    return-void
.end method

.method public static get()Lio/vanta/fake/hook/HookManager;
    .registers 1

    .line 44
    sget-object v0, Lio/vanta/fake/hook/HookManager;->sHookManager:Lio/vanta/fake/hook/HookManager;

    return-object v0
.end method

.method private handleHookError(Lio/vanta/fake/hook/IInjectHook;Ljava/lang/Exception;)V
    .registers 6

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hook failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "HookManager"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string p2, "ActivityManager"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_42

    const-string p2, "PackageManager"

    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_42

    const-string p2, "ContentProvider"

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 209
    :cond_42
    :try_start_42
    invoke-interface {p1}, Lio/vanta/fake/hook/IInjectHook;->isBadEnv()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p1}, Lio/vanta/fake/hook/IInjectHook;->injectHook()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_4c

    :cond_4b
    return-void

    .line 211
    :catch_4c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Hook recovery failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method addInjector(Lio/vanta/fake/hook/IInjectHook;)V
    .registers 4

    .line 175
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public areCriticalHooksInstalled()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    const-class v1, Lio/vanta/fake/service/IActivityManagerProxy;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    const-class v1, Lio/vanta/fake/service/IPackageManagerProxy;

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    const-class v1, Lio/vanta/fake/service/IContentProviderProxy;

    .line 219
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public checkAll()V
    .registers 6

    .line 164
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3f

    .line 166
    iget-object v2, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/fake/hook/IInjectHook;

    .line 167
    invoke-interface {v2}, Lio/vanta/fake/hook/IInjectHook;->isBadEnv()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkEnv: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is bad env"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HookManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-interface {v2}, Lio/vanta/fake/hook/IInjectHook;->injectHook()V

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    return-void
.end method

.method public checkEnv(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/fake/hook/IInjectHook;

    if-eqz v0, :cond_31

    .line 156
    invoke-interface {v0}, Lio/vanta/fake/hook/IInjectHook;->isBadEnv()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEnv: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is bad env"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HookManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-interface {v0}, Lio/vanta/fake/hook/IInjectHook;->injectHook()V

    :cond_31
    return-void
.end method

.method public declared-synchronized init()V
    .registers 3

    monitor-enter p0

    .line 50
    :try_start_1
    iget-boolean v0, p0, Lio/vanta/fake/hook/HookManager;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e7

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 52
    :cond_7
    :try_start_7
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isBlackProcess()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 53
    :cond_1b
    new-instance v0, Lio/vanta/fake/service/IDisplayManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IDisplayManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 54
    new-instance v0, Lio/vanta/fake/service/libcore/OsStub;

    invoke-direct {v0}, Lio/vanta/fake/service/libcore/OsStub;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 55
    new-instance v0, Lio/vanta/fake/service/IActivityManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IActivityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 56
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 57
    new-instance v0, Lio/vanta/fake/service/ITelephonyManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ITelephonyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 58
    new-instance v0, Lio/vanta/fake/service/HCallbackProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/HCallbackProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 59
    new-instance v0, Lio/vanta/fake/service/IAppOpsManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAppOpsManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 60
    new-instance v0, Lio/vanta/fake/service/INotificationManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/INotificationManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 61
    new-instance v0, Lio/vanta/fake/service/IAlarmManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAlarmManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 62
    new-instance v0, Lio/vanta/fake/service/IAppWidgetManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAppWidgetManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 63
    new-instance v0, Lio/vanta/fake/service/context/ContentServiceStub;

    invoke-direct {v0}, Lio/vanta/fake/service/context/ContentServiceStub;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 64
    new-instance v0, Lio/vanta/fake/service/IWindowManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IWindowManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 65
    new-instance v0, Lio/vanta/fake/service/IUserManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IUserManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 66
    new-instance v0, Lio/vanta/fake/service/context/RestrictionsManagerStub;

    invoke-direct {v0}, Lio/vanta/fake/service/context/RestrictionsManagerStub;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 67
    new-instance v0, Lio/vanta/fake/service/IMediaSessionManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IMediaSessionManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 68
    new-instance v0, Lio/vanta/fake/service/IAudioServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAudioServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 69
    new-instance v0, Lio/vanta/fake/service/ISensorPrivacyManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISensorPrivacyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 70
    new-instance v0, Lio/vanta/fake/service/ContentResolverProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ContentResolverProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 71
    new-instance v0, Lio/vanta/fake/service/SystemLibraryProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/SystemLibraryProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 72
    new-instance v0, Lio/vanta/fake/service/ReLinkerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ReLinkerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 73
    new-instance v0, Lio/vanta/fake/service/WorkManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/WorkManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 74
    new-instance v0, Lio/vanta/fake/service/MediaRecorderProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/MediaRecorderProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 75
    new-instance v0, Lio/vanta/fake/service/AudioRecordProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/AudioRecordProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 76
    new-instance v0, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IMiuiSecurityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 77
    new-instance v0, Lio/vanta/fake/service/ISettingsProviderProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISettingsProviderProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 78
    new-instance v0, Lio/vanta/fake/service/FeatureFlagUtilsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/FeatureFlagUtilsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 79
    new-instance v0, Lio/vanta/fake/service/MediaRecorderClassProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/MediaRecorderClassProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 80
    new-instance v0, Lio/vanta/fake/service/SQLiteDatabaseProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/SQLiteDatabaseProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 81
    new-instance v0, Lio/vanta/fake/service/ClassLoaderProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ClassLoaderProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 82
    new-instance v0, Lio/vanta/fake/service/FileSystemProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/FileSystemProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 83
    new-instance v0, Lio/vanta/fake/service/LevelDbProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/LevelDbProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 84
    new-instance v0, Lio/vanta/fake/service/AudioPermissionProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/AudioPermissionProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 85
    new-instance v0, Lio/vanta/fake/service/ILocationManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ILocationManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 86
    new-instance v0, Lio/vanta/fake/service/IStorageManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IStorageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 87
    new-instance v0, Lio/vanta/fake/service/ILauncherAppsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ILauncherAppsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 88
    new-instance v0, Lio/vanta/fake/service/IJobServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IJobServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 89
    new-instance v0, Lio/vanta/fake/service/IAccessibilityManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAccessibilityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 90
    new-instance v0, Lio/vanta/fake/service/ITelephonyRegistryProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ITelephonyRegistryProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 91
    new-instance v0, Lio/vanta/fake/service/IDevicePolicyManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IDevicePolicyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 92
    new-instance v0, Lio/vanta/fake/service/IAccountManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAccountManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 93
    new-instance v0, Lio/vanta/fake/service/IBackupManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IBackupManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 94
    new-instance v0, Lio/vanta/fake/service/NetworkPermissionCompat;

    invoke-direct {v0}, Lio/vanta/fake/service/NetworkPermissionCompat;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 95
    new-instance v0, Lio/vanta/fake/service/IConnectivityManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IConnectivityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 96
    new-instance v0, Lio/vanta/fake/service/IDnsResolverProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IDnsResolverProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 97
    new-instance v0, Lio/vanta/fake/service/IAttributionSourceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAttributionSourceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 98
    new-instance v0, Lio/vanta/fake/service/IContentProviderProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IContentProviderProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 99
    new-instance v0, Lio/vanta/fake/service/ISettingsSystemProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISettingsSystemProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 100
    new-instance v0, Lio/vanta/fake/service/ISystemSensorManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISystemSensorManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 101
    new-instance v0, Lio/vanta/fake/service/IXiaomiAttributionSourceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IXiaomiAttributionSourceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 102
    new-instance v0, Lio/vanta/fake/service/IXiaomiSettingsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IXiaomiSettingsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 103
    new-instance v0, Lio/vanta/fake/service/IXiaomiMiuiServicesProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IXiaomiMiuiServicesProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 104
    new-instance v0, Lio/vanta/fake/service/IPhoneSubInfoProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IPhoneSubInfoProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 105
    new-instance v0, Lio/vanta/fake/service/ISubProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISubProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 106
    new-instance v0, Lio/vanta/fake/service/IMediaRouterServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IMediaRouterServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 107
    new-instance v0, Lio/vanta/fake/service/IPowerManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IPowerManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 108
    new-instance v0, Lio/vanta/fake/service/IContextHubServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IContextHubServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 109
    new-instance v0, Lio/vanta/fake/service/IVibratorServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IVibratorServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 110
    new-instance v0, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 111
    invoke-static {}, Lio/vanta/fake/delegate/AppInstrumentation;->get()Lio/vanta/fake/delegate/AppInstrumentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 112
    new-instance v0, Lio/vanta/fake/service/IWifiManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IWifiManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 113
    new-instance v0, Lio/vanta/fake/service/IWifiScannerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IWifiScannerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 114
    new-instance v0, Lio/vanta/fake/service/ApkAssetsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ApkAssetsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 115
    new-instance v0, Lio/vanta/fake/service/ResourcesManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ResourcesManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 117
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isTiramisu()Z

    move-result v0

    if-eqz v0, :cond_228

    .line 118
    new-instance v0, Lio/vanta/fake/service/ILocaleManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ILocaleManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 119
    new-instance v0, Lio/vanta/fake/service/ISafetyCenterManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISafetyCenterManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 121
    :cond_228
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_247

    .line 122
    new-instance v0, Lio/vanta/fake/service/IActivityClientProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/vanta/fake/service/IActivityClientProxy;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 123
    new-instance v0, Lio/vanta/fake/service/IVpnManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IVpnManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 124
    new-instance v0, Lio/vanta/fake/service/ISensitiveContentProtectionManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISensitiveContentProtectionManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 126
    :cond_247
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_255

    new-instance v0, Lio/vanta/fake/service/IPermissionManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IPermissionManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 127
    :cond_255
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 128
    new-instance v0, Lio/vanta/fake/service/IActivityTaskManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IActivityTaskManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 129
    new-instance v0, Lio/vanta/fake/service/IAuthServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAuthServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 131
    :cond_26b
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_281

    .line 132
    new-instance v0, Lio/vanta/fake/service/ISystemUpdateProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ISystemUpdateProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 133
    new-instance v0, Lio/vanta/fake/service/ICrossProfileAppsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/ICrossProfileAppsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 135
    :cond_281
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 136
    new-instance v0, Lio/vanta/fake/service/IAutofillManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IAutofillManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 137
    new-instance v0, Lio/vanta/fake/service/IDeviceIdentifiersPolicyProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IDeviceIdentifiersPolicyProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 138
    new-instance v0, Lio/vanta/fake/service/IStorageStatsManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IStorageStatsManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 140
    :cond_29f
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_2ad

    new-instance v0, Lio/vanta/fake/service/IShortcutManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IShortcutManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 141
    :cond_2ad
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result v0

    if-eqz v0, :cond_2bb

    new-instance v0, Lio/vanta/fake/service/INetworkManagementServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/INetworkManagementServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 142
    :cond_2bb
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 143
    new-instance v0, Lio/vanta/fake/service/IFingerprintManagerProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IFingerprintManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 144
    new-instance v0, Lio/vanta/fake/service/IGraphicsStatsProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IGraphicsStatsProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 146
    :cond_2d1
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_2df

    new-instance v0, Lio/vanta/fake/service/IJobServiceProxy;

    invoke-direct {v0}, Lio/vanta/fake/service/IJobServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/hook/HookManager;->addInjector(Lio/vanta/fake/hook/IInjectHook;)V

    .line 149
    :cond_2df
    invoke-virtual {p0}, Lio/vanta/fake/hook/HookManager;->injectAll()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/vanta/fake/hook/HookManager;->mInitialized:Z
    :try_end_2e5
    .catchall {:try_start_7 .. :try_end_2e5} :catchall_2e7

    .line 151
    monitor-exit p0

    return-void

    :catchall_2e7
    move-exception v0

    :try_start_2e8
    monitor-exit p0
    :try_end_2e9
    .catchall {:try_start_2e8 .. :try_end_2e9} :catchall_2e7

    throw v0
.end method

.method injectAll()V
    .registers 6

    .line 182
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1f

    .line 185
    iget-object v3, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/fake/hook/IInjectHook;

    .line 187
    :try_start_12
    invoke-interface {v3}, Lio/vanta/fake/hook/IInjectHook;->injectHook()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v4

    add-int/lit8 v2, v2, 0x1

    .line 190
    invoke-direct {p0, v3, v4}, Lio/vanta/fake/hook/HookManager;->handleHookError(Lio/vanta/fake/hook/IInjectHook;Ljava/lang/Exception;)V

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 193
    :cond_1f
    const-string v1, "HookManager"

    if-lez v2, :cond_52

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "injectAll: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hooks installed; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 197
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "injectAll: all "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hooks installed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-void
.end method

.method public declared-synchronized reinitializeHooks()V
    .registers 3

    monitor-enter p0

    .line 224
    :try_start_1
    const-string v0, "HookManager"

    const-string v1, "reinitializeHooks: forced restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    iget-object v0, p0, Lio/vanta/fake/hook/HookManager;->mInjectorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lio/vanta/fake/hook/HookManager;->mInitialized:Z

    .line 228
    invoke-virtual {p0}, Lio/vanta/fake/hook/HookManager;->init()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 229
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
