.class public Lio/vanta/fake/service/IAccountManagerProxy$registerAccountListener;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "registerAccountListener"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "registerAccountListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 474
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

    .line 478
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object p1

    const/4 p2, 0x0

    aget-object v0, p3, p2

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lio/vanta/fake/frameworks/BAccountManager;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
