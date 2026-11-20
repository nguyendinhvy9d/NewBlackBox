.class public Lio/vanta/fake/delegate/ServiceConnectionDelegate;
.super Landroid/app/IServiceConnection$Stub;
.source "ServiceConnectionDelegate.java"


# static fields
.field private static final sServiceConnectDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lio/vanta/fake/delegate/ServiceConnectionDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAction:Ljava/lang/String;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mConn:Landroid/app/IServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsServiceConnectDelegate()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 22
    iput-object p1, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    .line 23
    iput-object p2, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;
    .locals 3

    .line 31
    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 32
    sget-object v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    if-nez v1, :cond_0

    .line 35
    :try_start_0
    new-instance v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate$1;

    invoke-direct {v1, v0}, Lio/vanta/fake/delegate/ServiceConnectionDelegate$1;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lio/vanta/fake/delegate/ServiceConnectionDelegate;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    iput-object v2, v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mAction:Ljava/lang/String;

    .line 46
    sget-object p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getDelegate(Landroid/os/IBinder;)Lio/vanta/fake/delegate/ServiceConnectionDelegate;
    .locals 1

    .line 27
    sget-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mAction:Ljava/lang/String;

    invoke-static {v0}, Lio/vanta/fake/delegate/XjGservicesStub;->isGmsBoundAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/vanta/fake/delegate/XjGservicesStub;->maybeStub(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p2

    .line 57
    :cond_0
    iget-object v0, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 58
    :goto_0
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object p1, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    invoke-static {p1}, Lvanta/android/app/BRIServiceConnectionO;->get(Ljava/lang/Object;)Lvanta/android/app/IServiceConnectionOContext;

    move-result-object p1

    invoke-interface {p1, v0, p2, p3}, Lvanta/android/app/IServiceConnectionOContext;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)Ljava/lang/Void;

    return-void

    .line 61
    :cond_2
    iget-object p3, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
