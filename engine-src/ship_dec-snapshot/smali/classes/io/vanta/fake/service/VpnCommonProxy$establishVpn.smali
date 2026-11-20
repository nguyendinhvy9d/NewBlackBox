.class public Lio/vanta/fake/service/VpnCommonProxy$establishVpn;
.super Lio/vanta/fake/hook/MethodHook;
.source "VpnCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/VpnCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "establishVpn"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "establishVpn"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private handlePackage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
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

    .line 42
    aget-object v0, p3, v0

    invoke-static {v0}, Lvanta/com/android/internal/net/BRVpnConfig;->get(Ljava/lang/Object;)Lvanta/com/android/internal/net/VpnConfigContext;

    move-result-object v0

    .line 43
    const-class v1, Lio/vanta/proxy/ProxyVpnService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/com/android/internal/net/VpnConfigContext;->_set_user(Ljava/lang/Object;)V

    .line 45
    invoke-interface {v0}, Lvanta/com/android/internal/net/VpnConfigContext;->allowedApplications()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/vanta/fake/service/VpnCommonProxy$establishVpn;->handlePackage(Ljava/util/List;)V

    .line 46
    invoke-interface {v0}, Lvanta/com/android/internal/net/VpnConfigContext;->disallowedApplications()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/VpnCommonProxy$establishVpn;->handlePackage(Ljava/util/List;)V

    .line 47
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
