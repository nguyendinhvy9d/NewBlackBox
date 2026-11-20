.class public Lio/vanta/fake/service/IConnectivityManagerProxy$GetAllNetworkInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "IConnectivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IConnectivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAllNetworkInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAllNetworkInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private createNetworkInfoArray()Ljava/lang/Object;
    .registers 4

    .line 251
    :try_start_0
    invoke-static {}, Lio/vanta/fake/service/IConnectivityManagerProxy;->-$$Nest$smcreateNetworkInfoArray()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create fallback NetworkInfo array: "

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

    .line 254
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 233
    const-string v0, "IConnectivityManagerProxy"

    :try_start_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object p1

    .line 239
    :cond_9
    const-string p1, "Creating fallback NetworkInfo array for getAllNetworkInfo"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lio/vanta/fake/service/IConnectivityManagerProxy$GetAllNetworkInfo;->createNetworkInfoArray()Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 243
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in getAllNetworkInfo, creating fallback: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lio/vanta/fake/service/IConnectivityManagerProxy$GetAllNetworkInfo;->createNetworkInfoArray()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
