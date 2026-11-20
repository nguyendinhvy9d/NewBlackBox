.class public Lio/vanta/fake/service/ISettingsSystemProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ISettingsSystemProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ISettingsSystemProxy$PutString;,
        Lio/vanta/fake/service/ISettingsSystemProxy$GetString;,
        Lio/vanta/fake/service/ISettingsSystemProxy$GetStringForUser;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ISettingsSystemProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
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

    .line 28
    const-string p1, "ISettingsSystemProxy"

    const-string p2, "ISettingsSystem proxy initialized for UID mismatch prevention"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
