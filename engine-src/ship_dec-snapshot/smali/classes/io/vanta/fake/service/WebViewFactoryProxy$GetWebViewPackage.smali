.class public Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "WebViewFactoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WebViewFactoryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWebViewPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getWebViewPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
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

    .line 133
    const-string v0, "WebViewFactory: getWebViewPackage called"

    const-string v1, "WebViewFactoryProxy"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    const-string p2, "WebViewFactory: Successfully got WebView package"

    invoke-static {v1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 143
    const-string p2, "WebViewFactory: Failed to get WebView package"

    invoke-static {v1, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_0
    const-string p1, "WebViewFactory: Returning default WebView package: com.google.android.webview"

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string p1, "com.google.android.webview"

    return-object p1
.end method
