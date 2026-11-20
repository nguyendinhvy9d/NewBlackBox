.class public Lio/vanta/fake/service/ISettingsProviderProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ISettingsProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ISettingsProviderProxy$GetFloat;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetFloatForUser;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetLong;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetLongForUser;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetInt;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetIntForUser;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetString;,
        Lio/vanta/fake/service/ISettingsProviderProxy$GetStringForUser;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ISettingsProviderProxy"


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
