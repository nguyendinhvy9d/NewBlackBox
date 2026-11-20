.class public Lio/vanta/fake/service/IDnsResolverProxy$SetDnsQueryTimeout;
.super Lio/vanta/fake/hook/MethodHook;
.source "IDnsResolverProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IDnsResolverProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetDnsQueryTimeout"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setDnsQueryTimeout"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
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

    const-string v0, "Setting DNS query timeout to: "

    .line 143
    const-string v1, "Intercepting DNS query timeout configuration"

    const-string v2, "IDnsResolverProxy"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3d

    .line 146
    :try_start_b
    array-length v1, p3

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    aget-object v3, p3, v1

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3d

    .line 147
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    .line 151
    :cond_3d
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_42

    return-object p1

    :catch_42
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DNS query timeout configuration failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
