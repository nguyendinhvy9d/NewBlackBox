.class public Lio/vanta/fake/service/IWebViewUpdateServiceProxy$DisableWebViewPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "IWebViewUpdateServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWebViewUpdateServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableWebViewPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "disableWebViewPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 230
    const-string v0, "IWebViewUpdateServiceProxy"

    if-eqz p3, :cond_1e

    array-length v1, p3

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 231
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewUpdateService: disableWebViewPackage called for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1e
    :try_start_1e
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    .line 238
    const-string p2, "WebViewUpdateService: Failed to disable WebView package"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
