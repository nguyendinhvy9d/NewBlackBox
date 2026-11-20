.class public Lio/vanta/fake/service/BrowserEngineProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "BrowserEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/BrowserEngineProxy$KillProcess;,
        Lio/vanta/fake/service/BrowserEngineProxy$SetArgV0;,
        Lio/vanta/fake/service/BrowserEngineProxy$ProcessStart;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrowserEngineProxy"


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
