.class public Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetValidWebViewPackages;
.super Lio/vanta/fake/hook/MethodHook;
.source "IWebViewUpdateServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWebViewUpdateServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetValidWebViewPackages"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getValidWebViewPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "WebViewUpdateService: Found "

    .line 65
    const-string v1, "WebViewUpdateService: getValidWebViewPackages called"

    const-string v2, "IWebViewUpdateServiceProxy"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    instance-of p2, p1, [Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_0

    .line 71
    move-object p2, p1

    check-cast p2, [Landroid/content/pm/PackageInfo;

    .line 72
    array-length p3, p2

    if-lez p3, :cond_0

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " valid WebView packages"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    const-string p2, "WebViewUpdateService: Failed to get valid WebView packages"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    const-string p1, "WebViewUpdateService: Returning empty array to prevent conflicts"

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 83
    new-array p1, p1, [Landroid/content/pm/PackageInfo;

    return-object p1
.end method
