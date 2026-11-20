.class public Lio/vanta/fake/service/HCallbackProxy;
.super Ljava/lang/Object;
.source "HCallbackProxy.java"

# interfaces
.implements Lio/vanta/fake/hook/IInjectHook;
.implements Landroid/os/Handler$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "HCallbackStub"


# instance fields
.field private mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOtherCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private checkActivityClient()V
    .locals 2

    .line 222
    :try_start_0
    invoke-static {}, Lvanta/android/app/BRActivityClient;->get()Lvanta/android/app/ActivityClientStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityClientStatic;->getActivityClientController()Ljava/lang/Object;

    move-result-object v0

    .line 223
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Lio/vanta/fake/service/IActivityClientProxy;

    invoke-direct {v1, v0}, Lio/vanta/fake/service/IActivityClientProxy;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 225
    invoke-virtual {v1, v0}, Lio/vanta/fake/service/IActivityClientProxy;->onlyProxy(Z)V

    .line 226
    invoke-virtual {v1}, Lio/vanta/fake/service/IActivityClientProxy;->injectHook()V

    .line 227
    invoke-static {}, Lvanta/android/app/BRActivityClient;->get()Lvanta/android/app/ActivityClientStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lvanta/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityClientContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lvanta/android/app/BRActivityClientActivityClientControllerSingleton;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityClientActivityClientControllerSingletonContext;

    move-result-object v0

    invoke-virtual {v1}, Lio/vanta/fake/service/IActivityClientProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/app/ActivityClientActivityClientControllerSingletonContext;->_set_mKnownInstance(Ljava/lang/Object;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private getH()Landroid/os/Handler;
    .locals 1

    .line 52
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->mH()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getHCallback()Landroid/os/Handler$Callback;
    .locals 1

    .line 48
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/os/BRHandler;->get(Ljava/lang/Object;)Lvanta/android/os/HandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/HandlerContext;->mCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    return-object v0
.end method

.method private getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 105
    invoke-static {p1}, Lvanta/android/app/servertransaction/BRClientTransaction;->get(Ljava/lang/Object;)Lvanta/android/app/servertransaction/ClientTransactionContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/servertransaction/ClientTransactionContext;->mActivityCallbacks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mActivityCallbacks is null for clientTransaction: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HCallbackStub"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 112
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-static {}, Lvanta/android/app/servertransaction/BRLaunchActivityItem;->getRealClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private handleCreateService(Ljava/lang/Object;)Z
    .locals 5

    .line 203
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {p1}, Lvanta/android/app/BRActivityThreadCreateServiceData;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadCreateServiceDataContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityThreadCreateServiceDataContext;->info()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 208
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v4

    invoke-static {v4}, Lio/vanta/proxy/ProxyManifest;->getProxyService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 209
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v4

    invoke-static {v4}, Lio/vanta/proxy/ProxyManifest;->getProxyJobService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleCreateService: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "HCallbackStub"

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 212
    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v0, p1, v2, v1, v3}, Lio/vanta/fake/frameworks/BActivityManager;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private handleLaunchActivity(Ljava/lang/Object;)Z
    .locals 9

    .line 122
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lio/vanta/fake/service/HCallbackProxy;->getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 134
    :cond_1
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-static {v0}, Lvanta/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lvanta/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/servertransaction/LaunchActivityItemContext;->mIntent()Landroid/content/Intent;

    move-result-object v2

    .line 136
    invoke-static {p1}, Lvanta/android/app/servertransaction/BRClientTransaction;->get(Ljava/lang/Object;)Lvanta/android/app/servertransaction/ClientTransactionContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/servertransaction/ClientTransactionContext;->mActivityToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->intent()Landroid/content/Intent;

    move-result-object v2

    .line 140
    invoke-interface {p1}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->token()Landroid/os/IBinder;

    move-result-object p1

    :goto_1
    if-nez v2, :cond_3

    return v1

    .line 146
    :cond_3
    invoke-static {v2}, Lio/vanta/proxy/record/ProxyActivityRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyActivityRecord;

    move-result-object v2

    .line 147
    iget-object v3, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_b

    .line 149
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v4

    const-string v5, "HCallbackStub"

    if-nez v4, :cond_4

    .line 151
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v8, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-virtual {v4, v6, v7, v8}, Lio/vanta/fake/frameworks/BActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 153
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/vanta/app/BActivityThread;->initProcess(Lio/vanta/entity/AppConfig;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to initProcess on null appConfig: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    :goto_2
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 161
    iget-object v4, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_5
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object p1

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/vanta/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 170
    :cond_6
    iget-object v4, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    if-eqz v4, :cond_7

    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v4

    invoke-interface {v4}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v4

    invoke-static {v4}, Lvanta/android/app/BRIActivityManager;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContext;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Lvanta/android/app/IActivityManagerContext;->getTaskForActivity(Landroid/os/IBinder;Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 171
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v6

    iget-object v7, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    invoke-virtual {v6, v4, p1, v7}, Lio/vanta/fake/frameworks/BActivityManager;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 173
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 174
    invoke-static {v0}, Lvanta/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lvanta/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 176
    iget-object v6, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {v4, v6}, Lvanta/android/app/servertransaction/LaunchActivityItemContext;->_set_mIntent(Ljava/lang/Object;)V

    .line 177
    invoke-interface {v4, v3}, Lvanta/android/app/servertransaction/LaunchActivityItemContext;->_set_mInfo(Ljava/lang/Object;)V

    .line 180
    :cond_8
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 182
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lvanta/android/app/ActivityThreadContext;->getLaunchingActivity(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 184
    invoke-static {p1}, Lvanta/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p1

    .line 185
    iget-object v0, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->_set_intent(Ljava/lang/Object;)V

    .line 186
    invoke-interface {p1, v3}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->_set_activityInfo(Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/BActivityThread;->getPackageInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->_set_packageInfo(Ljava/lang/Object;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed setting launching activity record on S: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_9
    :goto_3
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->checkActivityClient()V

    goto :goto_4

    .line 193
    :cond_a
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result p1

    if-nez p1, :cond_b

    .line 194
    invoke-static {v0}, Lvanta/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p1

    .line 195
    iget-object v0, v2, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->_set_intent(Ljava/lang/Object;)V

    .line 196
    invoke-interface {p1, v3}, Lvanta/android/app/ActivityThreadActivityClientRecordContext;->_set_activityInfo(Ljava/lang/Object;)V

    :cond_b
    :goto_4
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 73
    iget-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 75
    :try_start_0
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lvanta/android/app/BRActivityThreadH;->get()Lvanta/android/app/ActivityThreadHStatic;

    move-result-object v3

    invoke-interface {v3}, Lvanta/android/app/ActivityThreadHStatic;->EXECUTE_TRANSACTION()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/vanta/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 98
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 83
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lvanta/android/app/BRActivityThreadH;->get()Lvanta/android/app/ActivityThreadHStatic;

    move-result-object v3

    invoke-interface {v3}, Lvanta/android/app/ActivityThreadHStatic;->LAUNCH_ACTIVITY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/vanta/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lvanta/android/app/BRActivityThreadH;->get()Lvanta/android/app/ActivityThreadHStatic;

    move-result-object v1

    invoke-interface {v1}, Lvanta/android/app/ActivityThreadHStatic;->CREATE_SERVICE()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/vanta/fake/service/HCallbackProxy;->handleCreateService(Ljava/lang/Object;)Z

    move-result p1

    .line 98
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    .line 93
    :cond_2
    :try_start_2
    iget-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_3

    .line 94
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 98
    :cond_3
    iget-object p1, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    throw p1

    :cond_4
    return v2
.end method

.method public injectHook()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lio/vanta/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    .line 62
    :cond_1
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/os/BRHandler;->get(Ljava/lang/Object;)Lvanta/android/os/HandlerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lvanta/android/os/HandlerContext;->_set_mCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lio/vanta/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
