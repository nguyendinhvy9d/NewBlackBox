.class public Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "WebViewFactoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WebViewFactoryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWebViewProviderPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getWebViewProviderPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
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

    .line 74
    const-string v0, "WebViewFactory: getWebViewProviderPackage called"

    const-string v1, "WebViewFactoryProxy"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_7
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 80
    const-string p2, "WebViewFactory: Successfully got WebView provider package"

    invoke-static {v1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 84
    const-string p2, "WebViewFactory: Failed to get WebView provider package"

    invoke-static {v1, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_19
    const-string p1, "WebViewFactory: Returning default WebView package: com.google.android.webview"

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string p1, "com.google.android.webview"

    return-object p1
.end method
