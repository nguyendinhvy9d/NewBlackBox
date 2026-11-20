.class public Lio/vanta/fake/service/IConnectivityManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IConnectivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString19;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString18;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString17;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString16;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString15;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString14;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString13;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString12;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString11;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString10;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString9;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString8;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString7;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString6;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString5;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString4;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString3;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString2;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithString;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithInt;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfoWithNetwork;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$UnregisterNetworkCallback;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$RegisterNetworkCallbackWithRequest;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkForType;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$IsActiveNetworkMetered;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$RemoveDefaultNetworkActiveListener;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$AddDefaultNetworkActiveListener;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetActiveNetworkInfoForUid;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$RegisterDefaultNetworkCallback;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$RegisterNetworkCallback;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$RequestNetwork;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$IsNetworkValidated;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetDnsServers;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$IsPrivateDnsActive;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetPrivateDnsServerName;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetLinkProperties;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetActiveNetworkInfo;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetActiveNetwork;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkCapabilities;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetAllNetworks;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetAllNetworkInfo;,
        Lio/vanta/fake/service/IConnectivityManagerProxy$GetNetworkInfo;
    }
.end annotation

.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/VpnCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IConnectivityManagerProxy"


# direct methods
.method static bridge synthetic -$$Nest$smcreateLinkProperties()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lio/vanta/fake/service/IConnectivityManagerProxy;->createLinkProperties()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcreateNetworkCapabilities()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lio/vanta/fake/service/IConnectivityManagerProxy;->createNetworkCapabilities()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcreateNetworkInfo(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/vanta/fake/service/IConnectivityManagerProxy;->createNetworkInfo(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateNetworkInfoArray()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lio/vanta/fake/service/IConnectivityManagerProxy;->createNetworkInfoArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static createLinkProperties()Ljava/lang/Object;
    .registers 9

    .line 168
    const-string v0, "IConnectivityManagerProxy"

    const-string v1, "Could not set DNS servers: "

    :try_start_4
    const-string v2, "android.net.LinkProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 169
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v4, 0x1

    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 171
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_60

    .line 176
    :try_start_20
    const-string v6, "8.8.8.8"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v6, "8.8.4.4"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setDnsServers"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v8, Ljava/util/List;

    aput-object v8, v4, v3

    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 181
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_49} :catch_4a

    return-object v2

    :catch_4a
    move-exception v3

    .line 183
    :try_start_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5f} :catch_60

    return-object v2

    :catch_60
    move-exception v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create LinkProperties via reflection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static createNetworkCapabilities()Ljava/lang/Object;
    .registers 10

    .line 130
    const-string v0, "IConnectivityManagerProxy"

    const-string v1, "Could not add capabilities: "

    const-string v2, "Could not add transport types: "

    :try_start_6
    const-string v3, "android.net.NetworkCapabilities"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 131
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 133
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_ce

    .line 137
    :try_start_1d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "addTransportType"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_43} :catch_44

    goto :goto_59

    :catch_44
    move-exception v6

    .line 141
    :try_start_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_ce

    .line 146
    :goto_59
    :try_start_59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v6, "addCapability"

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v4

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v4, 0xc

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x10

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xe

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xd

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xf

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x14

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_b7} :catch_b8

    goto :goto_cd

    :catch_b8
    move-exception v2

    .line 154
    :try_start_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cd} :catch_ce

    :goto_cd
    return-object v3

    :catch_ce
    move-exception v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create NetworkCapabilities via reflection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static createNetworkInfo(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14

    .line 51
    const-string v0, "IConnectivityManagerProxy"

    .line 0
    const-string v1, "Failed to create NetworkInfo via reflection: "

    const/4 v2, 0x0

    .line 51
    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_16

    .line 53
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, p0, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_7e

    return-object v1

    .line 59
    :cond_16
    :try_start_16
    const-string v3, "android.net.NetworkInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    .line 60
    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 66
    const-string p1, "setDetailedState"

    new-array p2, v9, [Ljava/lang/Class;

    const-class p3, Landroid/net/NetworkInfo$DetailedState;

    aput-object p3, p2, v6

    const-class p3, Ljava/lang/String;

    aput-object p3, p2, v7

    const-class p3, Ljava/lang/String;

    aput-object p3, p2, v8

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 68
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    filled-new-array {p2, v2, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    .line 72
    :try_start_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7d} :catch_7e

    return-object v2

    :catch_7e
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to create NetworkInfo: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static createNetworkInfoArray()Ljava/lang/Object;
    .registers 14

    .line 85
    const-string v0, "IConnectivityManagerProxy"

    const-string v1, "Failed to create NetworkInfo array via reflection: "

    const/4 v2, 0x0

    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_bb

    const/16 v4, 0x1e

    const-string v5, "MOBILE"

    const-string v6, "WIFI"

    const/4 v7, 0x2

    const-string v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lt v3, v4, :cond_2f

    .line 87
    :try_start_14
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v9, v2, v6, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, v2, v2, v5, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-array v4, v7, [Landroid/net/NetworkInfo;

    aput-object v1, v4, v2

    aput-object v3, v4, v9
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_bb

    return-object v4

    .line 95
    :cond_2f
    :try_start_2f
    const-string v3, "android.net.NetworkInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    .line 96
    new-array v4, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v4, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v4, v9

    const-class v11, Ljava/lang/String;

    aput-object v11, v4, v7

    const-class v11, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v11, v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v11, v13, v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    const-string v11, "setDetailedState"

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Landroid/net/NetworkInfo$DetailedState;

    aput-object v13, v12, v2

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v9

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v7

    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 103
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    filled-new-array {v12, v10, v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v13, v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    filled-new-array {v5, v10, v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 111
    invoke-static {v3, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 112
    invoke-static {v3, v9, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a2} :catch_a3

    return-object v3

    :catch_a3
    move-exception v3

    .line 116
    :try_start_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-array v0, v2, [Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ba} :catch_bb

    return-object v0

    :catch_bb
    move-exception v1

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create fallback NetworkInfo array: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-array v0, v2, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 35
    invoke-static {}, Lvanta/android/net/BRIConnectivityManagerStub;->get()Lvanta/android/net/IConnectivityManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/net/IConnectivityManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 40
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IConnectivityManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
