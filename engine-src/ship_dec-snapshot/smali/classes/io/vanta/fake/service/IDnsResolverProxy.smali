.class public Lio/vanta/fake/service/IDnsResolverProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IDnsResolverProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IDnsResolverProxy$GetDnsResolverStats;,
        Lio/vanta/fake/service/IDnsResolverProxy$SetDnsQueryTimeout;,
        Lio/vanta/fake/service/IDnsResolverProxy$IsNetworkValidated;,
        Lio/vanta/fake/service/IDnsResolverProxy$SetDnsServersForNetwork;,
        Lio/vanta/fake/service/IDnsResolverProxy$SetPrivateDnsConfiguration;,
        Lio/vanta/fake/service/IDnsResolverProxy$ResolveDns;
    }
.end annotation


# static fields
.field public static final DNS_RESOLVER_SERVICE:Ljava/lang/String; = "dnsresolver"

.field public static final TAG:Ljava/lang/String; = "IDnsResolverProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "dnsresolver"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 28
    const-string v0, "IDnsResolverProxy"

    const-string v1, "IDnsResolverProxy: Returning null for getWho to avoid reflection issues"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 35
    const-string p1, "IDnsResolverProxy"

    :try_start_0
    const-string p2, "dnsresolver"

    invoke-virtual {p0, p2}, Lio/vanta/fake/service/IDnsResolverProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 36
    const-string p2, "IDnsResolverProxy: Successfully injected DNS resolver service"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDnsResolverProxy: Failed to inject service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
