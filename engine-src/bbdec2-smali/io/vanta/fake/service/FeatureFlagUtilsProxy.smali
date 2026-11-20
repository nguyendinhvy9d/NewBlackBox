.class public Lio/vanta/fake/service/FeatureFlagUtilsProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "FeatureFlagUtilsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$GetBoolean;,
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$GetFloat;,
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$GetLong;,
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$GetInt;,
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$GetString;,
        Lio/vanta/fake/service/FeatureFlagUtilsProxy$IsEnabled;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FeatureFlagUtilsProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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
