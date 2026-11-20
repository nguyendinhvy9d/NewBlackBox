.class public Lio/vanta/compat/handlers/BaseCompatibilityHandler;
.super Ljava/lang/Object;
.source "BaseCompatibilityHandler.java"

# interfaces
.implements Lio/vanta/compat/IAndroidCompatibilityHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixAttributionSource(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getMaxApi()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method public getMinApi()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public hasActivityClient()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasActivityTaskManager()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributionSource()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPermissionManagerService()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundServiceRestricted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepareDexFile(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public sanitizePendingIntentFlags(IZ)I
    .registers 3

    return p1
.end method

.method public sanitizeReceiverFlags(IZ)I
    .registers 3

    return p1
.end method
