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
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mConn:Landroid/app/IServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsServiceConnectDelegate()Ljava/util/Map;
    .registers 1

    sget-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 22
    iput-object p1, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    .line 23
    iput-object p2, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;
    .registers 5

    .line 31
    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 32
    sget-object v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    if-nez v1, :cond_2a

    .line 35
    :try_start_e
    new-instance v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate$1;

    invoke-direct {v1, v0}, Lio/vanta/fake/delegate/ServiceConnectionDelegate$1;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 43
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    :goto_1c
    new-instance v1, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lio/vanta/fake/delegate/ServiceConnectionDelegate;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    .line 46
    sget-object p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v1
.end method

.method public static getDelegate(Landroid/os/IBinder;)Lio/vanta/fake/delegate/ServiceConnectionDelegate;
    .registers 2

    .line 27
    sget-object v0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 58
    :goto_6
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 59
    iget-object p1, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    invoke-static {p1}, Lvanta/android/app/BRIServiceConnectionO;->get(Ljava/lang/Object;)Lvanta/android/app/IServiceConnectionOContext;

    move-result-object p1

    invoke-interface {p1, v0, p2, p3}, Lvanta/android/app/IServiceConnectionOContext;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)Ljava/lang/Void;

    return-void

    .line 61
    :cond_16
    iget-object p3, p0, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    if-eqz v0, :cond_1b

    move-object p1, v0

    :cond_1b
    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
