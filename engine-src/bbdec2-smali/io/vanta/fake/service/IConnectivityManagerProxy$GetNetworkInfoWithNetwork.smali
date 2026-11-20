.class public Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithNetwork;
.super Lio/vanta/fake/hook/MethodHook;
.source "IConnectivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IConnectivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNetworkInfoWithNetwork"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getNetworkInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 793
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private createBasicNetworkInfo()Ljava/lang/Object;
    .registers 5

    .line 826
    :try_start_0
    const-string v0, "WIFI"

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lio/vanta/fake/service/IConnectivityManagerProxy;->-$$Nest$smcreateNetworkInfo(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create fallback NetworkInfo for Network: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IConnectivityManagerProxy"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 796
    const-string v0, "Intercepting getNetworkInfo with Network parameter for internet access"

    const-string v1, "IConnectivityManagerProxy"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :try_start_7
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_41

    if-eqz p1, :cond_37

    .line 803
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "setDetailedState"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 805
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 806
    sget-object p3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v0, 0x0

    filled-new-array {p3, v0, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    :catch_36
    return-object p1

    .line 814
    :cond_37
    :try_start_37
    const-string p1, "Creating fallback NetworkInfo for Network parameter"

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithNetwork;->createBasicNetworkInfo()Ljava/lang/Object;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p1

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in getNetworkInfo with Network, creating fallback: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0}, Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithNetwork;->createBasicNetworkInfo()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
