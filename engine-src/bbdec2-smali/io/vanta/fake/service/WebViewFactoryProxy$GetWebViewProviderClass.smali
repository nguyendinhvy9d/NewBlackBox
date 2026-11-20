.class public Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderClass;
.super Lio/vanta/fake/hook/MethodHook;
.source "WebViewFactoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WebViewFactoryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWebViewProviderClass"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getWebViewProviderClass"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "WebViewFactory: Returning default WebView class: "

    .line 44
    const-string v1, "WebViewFactory: getWebViewProviderClass called"

    const-string v2, "WebViewFactoryProxy"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 50
    const-string p2, "WebViewFactory: Successfully got WebView provider class"

    invoke-static {v2, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    .line 54
    const-string p2, "WebViewFactory: Failed to get WebView provider class"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_1b
    :try_start_1b
    const-class p1, Landroid/webkit/WebView;

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p1

    .line 63
    const-string p2, "WebViewFactory: Failed to get default WebView class"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
