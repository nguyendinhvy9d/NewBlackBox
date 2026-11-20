.class public Lio/vanta/fake/service/WebViewFactoryProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "WebViewFactoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderClassLoaderWithPackage;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderClassWithPackage;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderPackageInfo;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderClassLoader;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewPackage;,
        Lio/vanta/fake/service/WebViewFactoryProxy$IsWebViewSupported;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderInfo;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderPackage;,
        Lio/vanta/fake/service/WebViewFactoryProxy$GetWebViewProviderClass;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewFactoryProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
