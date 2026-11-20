.class public Lio/vanta/compat/handlers/Api26To28Handler;
.super Lio/vanta/compat/handlers/BaseCompatibilityHandler;
.source "Api26To28Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/vanta/compat/handlers/BaseCompatibilityHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxApi()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public getMinApi()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public isBackgroundServiceRestricted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
