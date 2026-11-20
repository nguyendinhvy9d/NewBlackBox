.class public abstract Lio/vanta/app/configuration/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHostPackageName()Ljava/lang/String;
.end method

.method public getLogSenderChatId()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "-1003719573856"

    return-object v0
.end method

.method public isDisableFlagSecure()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableDaemonService()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEnableLauncherActivity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isUseVpnNetwork()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requestInstallPackage(Ljava/io/File;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
