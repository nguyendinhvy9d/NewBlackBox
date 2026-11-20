.class public Lio/vanta/fake/service/IActivityManagerProxy$UnbindService;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnbindService"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "unbindService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 741
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 745
    aget-object v1, p3, v0

    check-cast v1, Landroid/app/IServiceConnection;

    if-nez v1, :cond_c

    .line 747
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 749
    :cond_c
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v2

    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/vanta/fake/frameworks/BActivityManager;->unbindService(Landroid/os/IBinder;I)V

    .line 750
    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->getDelegate(Landroid/os/IBinder;)Lio/vanta/fake/delegate/ServiceConnectionDelegate;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 752
    aput-object v1, p3, v0

    .line 754
    :cond_27
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
