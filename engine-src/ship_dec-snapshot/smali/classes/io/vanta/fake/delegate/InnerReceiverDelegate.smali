.class public Lio/vanta/fake/delegate/InnerReceiverDelegate;
.super Landroid/content/IIntentReceiver$Stub;
.source "InnerReceiverDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InnerReceiverDelegate"

.field private static final sInnerReceiverDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lio/vanta/fake/delegate/InnerReceiverDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/IIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInnerReceiverDelegate()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mIntentReceiver:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p2, p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public static createProxy(Landroid/content/IIntentReceiver;)Landroid/content/IIntentReceiver;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lio/vanta/fake/delegate/InnerReceiverDelegate;->createProxy(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)Landroid/content/IIntentReceiver;

    move-result-object p0

    return-object p0
.end method

.method public static createProxy(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)Landroid/content/IIntentReceiver;
    .locals 3

    .line 42
    instance-of v0, p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;

    if-eqz v0, :cond_0

    return-object p0

    .line 45
    :cond_0
    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 46
    sget-object v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;

    if-nez v1, :cond_1

    .line 49
    :try_start_0
    new-instance v1, Lio/vanta/fake/delegate/InnerReceiverDelegate$1;

    invoke-direct {v1, v0}, Lio/vanta/fake/delegate/InnerReceiverDelegate$1;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    :goto_0
    new-instance v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;

    invoke-direct {v1, p0, p1}, Lio/vanta/fake/delegate/InnerReceiverDelegate;-><init>(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)V

    .line 60
    sget-object p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static dispatchLocalBroadcast(Landroid/content/Intent;)V
    .locals 10

    if-nez p0, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    sget-object v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    monitor-exit v1

    .line 71
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;

    .line 72
    iget-object v2, v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, v1, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mIntentReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_2

    .line 80
    :try_start_1
    invoke-static {v1}, Lvanta/android/content/BRIIntentReceiver;->get(Ljava/lang/Object;)Lvanta/android/content/IIntentReceiverContext;

    move-result-object v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    :try_start_2
    invoke-interface/range {v2 .. v9}, Lvanta/android/content/IIntentReceiverContext;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)Ljava/lang/Void;

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    :cond_2
    move-object v3, p0

    :catchall_1
    :goto_1
    move-object p0, v3

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 70
    :try_start_3
    monitor-exit v1

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static getDelegate(Landroid/os/IBinder;)Lio/vanta/fake/delegate/InnerReceiverDelegate;
    .locals 1

    .line 34
    sget-object v0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->sInnerReceiverDelegate:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;

    return-object p0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyBroadcastRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyBroadcastRecord;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 93
    iget-object p1, v0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 94
    iget-object p1, v0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    :cond_0
    move-object v1, p1

    .line 98
    iget-object p1, p0, Lio/vanta/fake/delegate/InnerReceiverDelegate;->mIntentReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IIntentReceiver;

    if-eqz p1, :cond_1

    .line 100
    invoke-static {p1}, Lvanta/android/content/BRIIntentReceiver;->get(Ljava/lang/Object;)Lvanta/android/content/IIntentReceiverContext;

    move-result-object v0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lvanta/android/content/IIntentReceiverContext;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)Ljava/lang/Void;

    :cond_1
    return-void
.end method
