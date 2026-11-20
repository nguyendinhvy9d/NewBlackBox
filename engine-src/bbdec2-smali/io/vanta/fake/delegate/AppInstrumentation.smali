.class public final Lio/vanta/fake/delegate/AppInstrumentation;
.super Lio/vanta/fake/delegate/BaseInstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Lio/vanta/fake/hook/IInjectHook;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "AppInstrumentation"

.field private static sAppInstrumentation:Lio/vanta/fake/delegate/AppInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;-><init>()V

    return-void
.end method

.method private checkActivity(Landroid/app/Activity;)V
    .registers 7

    .line 107
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callActivityOnCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/HackAppUtils;->enableQQLogOutput(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 109
    invoke-direct {p0}, Lio/vanta/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 110
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object v0

    const-class v1, Lio/vanta/fake/service/IActivityClientProxy;

    invoke-virtual {v0, v1}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 111
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object v0

    const-class v1, Lio/vanta/fake/service/IBackupManagerProxy;

    invoke-virtual {v0, v1}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 112
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object v0

    const-class v1, Lio/vanta/fake/service/IAuthServiceProxy;

    invoke-virtual {v0, v1}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 113
    invoke-static {p1}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityContext;->mActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 114
    invoke-static {p1}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 115
    invoke-static {p1}, Lio/vanta/utils/compat/ActivityCompat;->fix(Landroid/app/Activity;)V

    .line 123
    :try_start_53
    invoke-direct {p0, p1}, Lio/vanta/fake/delegate/AppInstrumentation;->wrapActivityBaseContext(Landroid/app/Activity;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_70

    :catch_57
    move-exception v1

    .line 125
    sget-object v2, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not wrap activity base context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_70
    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_7e

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 131
    :cond_7e
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p1, v0}, Lio/vanta/utils/compat/ActivityManagerCompat;->setActivityOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method private checkHCallback()V
    .registers 3

    .line 103
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object v0

    const-class v1, Lio/vanta/fake/service/HCallbackProxy;

    invoke-virtual {v0, v1}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    return-void
.end method

.method private checkInstrumentation(Landroid/app/Instrumentation;)Z
    .registers 11

    .line 74
    instance-of v0, p1, Lio/vanta/fake/delegate/AppInstrumentation;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 77
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    .line 83
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 84
    array-length v4, v2

    move v5, v3

    :goto_1a
    if-ge v5, v4, :cond_3a

    aget-object v6, v2, v5

    .line 85
    const-class v7, Landroid/app/Instrumentation;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 86
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    :try_start_2d
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 89
    instance-of v6, v6, Lio/vanta/fake/delegate/AppInstrumentation;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_36

    if-eqz v6, :cond_37

    return v1

    :catch_36
    return v3

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 97
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v3
.end method

.method public static get()Lio/vanta/fake/delegate/AppInstrumentation;
    .registers 2

    .line 37
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->sAppInstrumentation:Lio/vanta/fake/delegate/AppInstrumentation;

    if-nez v0, :cond_17

    .line 38
    const-class v0, Lio/vanta/fake/delegate/AppInstrumentation;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lio/vanta/fake/delegate/AppInstrumentation;->sAppInstrumentation:Lio/vanta/fake/delegate/AppInstrumentation;

    if-nez v1, :cond_12

    .line 40
    new-instance v1, Lio/vanta/fake/delegate/AppInstrumentation;

    invoke-direct {v1}, Lio/vanta/fake/delegate/AppInstrumentation;-><init>()V

    sput-object v1, Lio/vanta/fake/delegate/AppInstrumentation;->sAppInstrumentation:Lio/vanta/fake/delegate/AppInstrumentation;

    .line 42
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 44
    :cond_17
    :goto_17
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->sAppInstrumentation:Lio/vanta/fake/delegate/AppInstrumentation;

    return-object v0
.end method

.method private getCurrInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 64
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->mInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$callActivityOnCreate$0(Landroid/app/Activity;)V
    .registers 2

    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method static synthetic lambda$callActivityOnCreate$1(Landroid/app/Activity;)V
    .registers 2

    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method private wrapActivityBaseContext(Landroid/app/Activity;)V
    .registers 5

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 142
    instance-of v1, v0, Lio/vanta/fake/delegate/VirtualServiceContext;

    if-nez v1, :cond_26

    .line 143
    invoke-static {v0}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eq v1, v0, :cond_26

    .line 145
    const-string v0, "android.content.ContextWrapper"

    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    const-string v2, "mBase"

    .line 146
    invoke-virtual {v0, v2}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1, v1}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    .line 148
    sget-object p1, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const-string v0, "Wrapped activity base context with VirtualServiceContext"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p1

    .line 152
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to wrap activity base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private wrapApplicationBaseContext(Landroid/app/Application;)V
    .registers 5

    .line 182
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 183
    instance-of v1, v0, Lio/vanta/fake/delegate/VirtualServiceContext;

    if-nez v1, :cond_26

    .line 184
    invoke-static {v0}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eq v1, v0, :cond_26

    .line 186
    const-string v0, "android.content.ContextWrapper"

    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    const-string v2, "mBase"

    .line 187
    invoke-virtual {v0, v2}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1, v1}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    .line 189
    sget-object p1, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const-string v0, "Wrapped application base context with VirtualServiceContext"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p1

    .line 193
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to wrap application base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 223
    invoke-direct {p0, p1}, Lio/vanta/fake/delegate/AppInstrumentation;->checkActivity(Landroid/app/Activity;)V

    .line 225
    :try_start_3
    invoke-super {p0, p1, p2}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception p2

    if-eqz p1, :cond_48

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleServicesActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 228
    sget-object v0, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleServicesActivity caught exception, safely completing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    .line 230
    :try_start_33
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    .line 232
    :catchall_36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/vanta/fake/delegate/AppInstrumentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/vanta/fake/delegate/AppInstrumentation$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 241
    :cond_48
    throw p2
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 6

    .line 199
    invoke-direct {p0, p1}, Lio/vanta/fake/delegate/AppInstrumentation;->checkActivity(Landroid/app/Activity;)V

    .line 201
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception p2

    if-eqz p1, :cond_48

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "GoogleServicesActivity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_48

    .line 204
    sget-object p3, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleServicesActivity caught exception, safely completing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    .line 206
    :try_start_33
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    .line 208
    :catchall_36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lio/vanta/fake/delegate/AppInstrumentation$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lio/vanta/fake/delegate/AppInstrumentation$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 217
    :cond_48
    throw p2
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 2

    .line 247
    invoke-super {p0, p1}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2

    .line 252
    invoke-direct {p0}, Lio/vanta/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 253
    invoke-super {p0, p1}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public injectHook()V
    .registers 3

    .line 53
    :try_start_0
    invoke-direct {p0}, Lio/vanta/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 54
    invoke-direct {p0, v0}, Lio/vanta/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1a

    .line 56
    :cond_d
    iput-object v0, p0, Lio/vanta/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    .line 57
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lvanta/android/app/ActivityThreadContext;->_set_mInstrumentation(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    .line 70
    invoke-direct {p0}, Lio/vanta/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "Resolving activity-alias "

    .line 258
    const-string v1, "com.android.vending.AssetBrowserActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.finsky.activities.MainActivity"

    if-eqz v2, :cond_14

    .line 259
    sget-object p2, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const-string v2, "Resolving Play Store alias AssetBrowserActivity -> MainActivity"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 263
    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_18} :catch_19

    return-object p1

    .line 265
    :catch_19
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 266
    iget-object p2, p0, Lio/vanta/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p2, p1, v3, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_26
    if-eqz p3, :cond_73

    .line 268
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 270
    :try_start_2e
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 271
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 272
    sget-object v2, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_2e .. :try_end_63} :catchall_73

    .line 274
    :try_start_63
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-super {p0, p1, v0, p3}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_69} :catch_6a
    .catchall {:try_start_63 .. :try_end_69} :catchall_73

    return-object p1

    .line 276
    :catch_6a
    :try_start_6a
    iget-object v0, p0, Lio/vanta/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_73

    return-object p1

    .line 281
    :catchall_73
    :cond_73
    iget-object v0, p0, Lio/vanta/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 158
    invoke-static {p3}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 163
    invoke-static {p3}, Lio/vanta/fake/delegate/VirtualServiceContext;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 164
    invoke-static {p3}, Lio/vanta/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 166
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/delegate/BaseInstrumentationDelegate;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    .line 169
    :try_start_e
    invoke-direct {p0, p1}, Lio/vanta/fake/delegate/AppInstrumentation;->wrapApplicationBaseContext(Landroid/app/Application;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p2

    .line 171
    sget-object p3, Lio/vanta/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not wrap application base context: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
