.class public Lio/vanta/fake/service/IActivityClientProxy$ActivityDestroyed;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityDestroyed"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "activityDestroyed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IBinder;

    .line 84
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/fake/frameworks/BActivityManager;->onActivityDestroyed(Landroid/os/IBinder;)V

    .line 85
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
