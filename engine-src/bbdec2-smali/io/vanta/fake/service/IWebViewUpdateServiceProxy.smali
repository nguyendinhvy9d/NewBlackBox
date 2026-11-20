.class public Lio/vanta/fake/service/IWebViewUpdateServiceProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IWebViewUpdateServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$DisableWebViewPackage;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$EnableWebViewPackage;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetWebViewProvider;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$IsWebViewPackage;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetWebViewProviderInfo;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetWebViewPackages;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$IsMultiProcessEnabled;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetValidWebViewPackages;,
        Lio/vanta/fake/service/IWebViewUpdateServiceProxy$GetCurrentWebViewPackage;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IWebViewUpdateServiceProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
