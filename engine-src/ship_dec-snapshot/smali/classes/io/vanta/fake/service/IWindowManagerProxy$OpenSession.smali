.class public Lio/vanta/fake/service/IWindowManagerProxy$OpenSession;
.super Lio/vanta/fake/hook/MethodHook;
.source "IWindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenSession"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "openSession"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    .line 43
    new-instance p2, Lio/vanta/fake/service/IWindowSessionProxy;

    invoke-direct {p2, p1}, Lio/vanta/fake/service/IWindowSessionProxy;-><init>(Landroid/os/IInterface;)V

    .line 44
    invoke-virtual {p2}, Lio/vanta/fake/service/IWindowSessionProxy;->injectHook()V

    .line 45
    invoke-virtual {p2}, Lio/vanta/fake/service/IWindowSessionProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
