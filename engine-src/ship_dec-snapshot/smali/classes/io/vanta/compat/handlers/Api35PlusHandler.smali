.class public Lio/vanta/compat/handlers/Api35PlusHandler;
.super Lio/vanta/compat/handlers/Api33To34Handler;
.source "Api35PlusHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/vanta/compat/handlers/Api33To34Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxApi()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getMinApi()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method
