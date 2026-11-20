.class public Lio/vanta/fake/service/WebViewFactoryProxy$IsWebViewSupported;
.super Lio/vanta/fake/hook/MethodHook;
.source "WebViewFactoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WebViewFactoryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsWebViewSupported"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "isWebViewSupported"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    const-string p1, "WebViewFactoryProxy"

    const-string p2, "WebViewFactory: isWebViewSupported called, returning true"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
