.class public Lio/vanta/app/dispatcher/AppServiceDispatcher;
.super Ljava/lang/Object;
.source "AppServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;,
        Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppServiceDispatcher"

.field private static final sServiceDispatcher:Lio/vanta/app/dispatcher/AppServiceDispatcher;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lio/vanta/entity/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceByComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lio/vanta/entity/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smfixAuthenticatorContext(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->fixAuthenticatorContext(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lio/vanta/app/dispatcher/AppServiceDispatcher;

    invoke-direct {v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;-><init>()V

    sput-object v0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->sServiceDispatcher:Lio/vanta/app/dispatcher/AppServiceDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    .line 48
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static applyAuthenticatorContextFix(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 5

    .line 414
    const-string v0, "AppServiceDispatcher"

    .line 0
    const-string v1, "Successfully injected AuthenticatorContextWrapper into "

    .line 414
    :try_start_0
    const-class v2, Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "mContext"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 416
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 417
    instance-of v4, v3, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;

    if-nez v4, :cond_0

    .line 418
    new-instance v4, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;

    invoke-direct {v4, v3}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyAuthenticatorContextFix failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findRecord(Landroid/content/Intent;)Lio/vanta/entity/ServiceRecord;
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, p1, v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;

    move-result-object p1

    return-object p1
.end method

.method private findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;
    .locals 1

    .line 306
    invoke-direct {p0, p1, p2}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/vanta/entity/ServiceRecord;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    iget-object p2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/ServiceRecord;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static fixAuthenticatorContext(Ljava/lang/Object;)V
    .locals 7

    if-nez p0, :cond_0

    goto :goto_3

    .line 392
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 393
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    .line 394
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 395
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 397
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 398
    instance-of v6, v5, Landroid/accounts/AbstractAccountAuthenticator;

    if-eqz v6, :cond_2

    .line 399
    check-cast v5, Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v5}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->applyAuthenticatorContextFix(Landroid/accounts/AbstractAccountAuthenticator;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 400
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "this$0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    instance-of v4, v5, Landroid/accounts/AbstractAccountAuthenticator;

    if-eqz v4, :cond_3

    .line 402
    check-cast v5, Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v5}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->applyAuthenticatorContextFix(Landroid/accounts/AbstractAccountAuthenticator;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 406
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_5
    :goto_3
    return-void
.end method

.method public static get()Lio/vanta/app/dispatcher/AppServiceDispatcher;
    .locals 1

    .line 45
    sget-object v0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->sServiceDispatcher:Lio/vanta/app/dispatcher/AppServiceDispatcher;

    return-object v0
.end method

.method private getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 295
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Lio/vanta/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 296
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 297
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_2
    return-object p2
.end method

.method private getOrCreateService(Lio/vanta/proxy/record/ProxyServiceRecord;)Landroid/app/Service;
    .locals 5

    .line 324
    iget-object v0, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 325
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 326
    iget-object p1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mToken:Landroid/os/IBinder;

    .line 328
    invoke-direct {p0, v0, v1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 329
    invoke-direct {p0, v0, v1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v3}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {v3}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object p1

    return-object p1

    .line 333
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lio/vanta/app/BActivityThread;->createService(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 336
    :cond_1
    new-instance v1, Lio/vanta/entity/ServiceRecord;

    invoke-direct {v1}, Lio/vanta/entity/ServiceRecord;-><init>()V

    .line 337
    invoke-virtual {v1, p1}, Lio/vanta/entity/ServiceRecord;->setService(Landroid/app/Service;)V

    if-eqz v2, :cond_2

    .line 339
    iget-object v3, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 342
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method static synthetic lambda$stopService$0(Lio/vanta/entity/ServiceRecord;)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    const-string v0, "onBind: ACTION_AUTHENTICATOR_INTENT bound, wrapping with AuthenticatorBinderProxy for "

    .line 51
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object p1

    .line 52
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 53
    iget-object v2, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Lio/vanta/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v3

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 65
    invoke-direct {p0, v1, v2}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;

    move-result-object v4

    if-nez v4, :cond_3

    .line 67
    new-instance v4, Lio/vanta/entity/ServiceRecord;

    invoke-direct {v4}, Lio/vanta/entity/ServiceRecord;-><init>()V

    .line 68
    invoke-virtual {v4, p1}, Lio/vanta/entity/ServiceRecord;->setService(Landroid/app/Service;)V

    .line 69
    invoke-direct {p0, v1, v2}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v5, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 74
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    invoke-virtual {v4, v1}, Lio/vanta/entity/ServiceRecord;->incrementAndGetBindCount(Landroid/content/Intent;)I

    .line 78
    invoke-virtual {v4, v1}, Lio/vanta/entity/ServiceRecord;->hasBinder(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v4}, Lio/vanta/entity/ServiceRecord;->isRebind()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p1, v1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {v4, p1}, Lio/vanta/entity/ServiceRecord;->setRebind(Z)V

    .line 83
    :cond_4
    invoke-virtual {v4, v1}, Lio/vanta/entity/ServiceRecord;->getBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 88
    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    const-string v5, "AppServiceDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;

    invoke-direct {v0, v2, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;-><init>(Landroid/os/IBinder;Landroid/app/Service;)V

    move-object v2, v0

    .line 92
    :cond_6
    invoke-virtual {v4, v1, v2}, Lio/vanta/entity/ServiceRecord;->addBinder(Landroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_0
    return-object v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/entity/ServiceRecord;

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/entity/ServiceRecord;

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/entity/ServiceRecord;

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    :try_start_1
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/entity/ServiceRecord;

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const-string p3, "onStartCommand: service.onStartCommand returned "

    .line 102
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object v0

    .line 103
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "AppServiceDispatcher"

    if-eqz v1, :cond_4

    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onStartCommand: targetIntent="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " service="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Lio/vanta/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 112
    :cond_1
    iget-object v4, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v4, 0x0

    .line 113
    invoke-static {v1, v4}, Lio/vanta/app/BActivityThread;->fixChimeraServiceIfNeeded(Landroid/app/Service;Landroid/content/Context;)V

    .line 114
    iget-object v4, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget-object v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v4, v5}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;

    move-result-object v4

    if-nez v4, :cond_3

    .line 116
    new-instance v4, Lio/vanta/entity/ServiceRecord;

    invoke-direct {v4}, Lio/vanta/entity/ServiceRecord;-><init>()V

    .line 117
    invoke-virtual {v4, v1}, Lio/vanta/entity/ServiceRecord;->setService(Landroid/app/Service;)V

    .line 118
    iget-object v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget-object v6, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v5, v6}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 120
    iget-object v6, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_2
    iget-object v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 123
    iget-object v5, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v6, Landroid/content/Intent$FilterComparison;

    iget-object v7, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_3
    iget v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mStartId:I

    invoke-virtual {v4, v5}, Lio/vanta/entity/ServiceRecord;->setStartId(I)V

    .line 128
    :try_start_0
    iget-object v4, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mStartId:I

    invoke-virtual {v1, v4, p2, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p2

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object p3

    iget v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mUserId:I

    invoke-virtual {p3, p1, v1}, Lio/vanta/fake/frameworks/BActivityManager;->onStartCommand(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand: service.onStartCommand threw exception for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    .line 104
    :cond_4
    :goto_0
    const-string p1, "onStartCommand: stubRecord target intent or serviceInfo is null"

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onTrimMemory(I)V
    .locals 4

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/entity/ServiceRecord;

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    :try_start_0
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v2}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Service;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 8

    .line 213
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object v0

    .line 214
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 220
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lio/vanta/fake/frameworks/BActivityManager;->onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 224
    :cond_1
    invoke-direct {p0, v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Lio/vanta/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object v4

    if-nez v4, :cond_2

    return v2

    .line 228
    :cond_2
    iget-object v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 230
    iget-object v5, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v1, v5}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Lio/vanta/entity/ServiceRecord;

    move-result-object v5

    .line 232
    invoke-virtual {v3}, Lio/vanta/entity/UnbindRecord;->getStartId()I

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    if-eqz v5, :cond_7

    .line 233
    invoke-virtual {v5, v1}, Lio/vanta/entity/ServiceRecord;->decreaseConnectionCount(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 234
    :cond_4
    invoke-virtual {v4, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    if-eqz v3, :cond_6

    .line 236
    invoke-virtual {v4}, Landroid/app/Service;->onDestroy()V

    .line 237
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lio/vanta/fake/frameworks/BActivityManager;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 238
    iget-object p1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v1, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 240
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_5
    iget-object p1, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v5, :cond_7

    .line 245
    invoke-virtual {v5, v6}, Lio/vanta/entity/ServiceRecord;->setRebind(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    return v2
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 255
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;)Lio/vanta/entity/ServiceRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Lio/vanta/entity/ServiceRecord;->getBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public stopService(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, p1, v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->getComponentName(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 266
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;)Lio/vanta/entity/ServiceRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v1}, Lio/vanta/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {v1}, Lio/vanta/entity/ServiceRecord;->getStartId()I

    move-result v2

    if-lez v2, :cond_3

    .line 273
    :try_start_0
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lio/vanta/app/dispatcher/AppServiceDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/vanta/entity/ServiceRecord;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lio/vanta/fake/frameworks/BActivityManager;->onServiceDestroy(Landroid/content/Intent;I)V

    if-eqz v0, :cond_2

    .line 276
    iget-object v1, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mServiceByComponent:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_2
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
