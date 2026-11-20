.class public Lio/vanta/fake/service/ApkAssetsProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ApkAssetsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ApkAssetsProxy$NativeLoad;,
        Lio/vanta/fake/service/ApkAssetsProxy$LoadOverlayFromPath;
    }
.end annotation


# static fields
.field private static final APK_ASSETS_CLASS:Ljava/lang/String; = "android.content.res.ApkAssets"

.field public static final TAG:Ljava/lang/String; = "ApkAssetsProxy"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 19
    :try_start_0
    const-string v0, "android.content.res.ApkAssets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApkAssets class not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkAssetsProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

.method protected onBindMethod()V
    .locals 0

    .line 42
    invoke-super {p0}, Lio/vanta/fake/hook/ClassInvocationStub;->onBindMethod()V

    return-void
.end method
