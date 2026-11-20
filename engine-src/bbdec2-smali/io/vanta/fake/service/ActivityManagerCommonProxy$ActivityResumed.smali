.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$ActivityResumed;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResumed"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "activityResumed"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 318
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 321
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lio/vanta/fake/frameworks/BActivityManager;->onActivityResumed(Landroid/os/IBinder;)V

    .line 322
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
