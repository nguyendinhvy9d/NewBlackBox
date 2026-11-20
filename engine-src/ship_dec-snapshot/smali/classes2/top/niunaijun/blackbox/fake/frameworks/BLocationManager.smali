.class public Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;
.super Ljava/lang/Object;
.source "BLocationManager.java"


# static fields
.field public static final CLOSE_MODE:I = 0x0

.field public static final GLOBAL_MODE:I = 0x1

.field public static final OWN_MODE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFakeLocation(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lio/vanta/fake/frameworks/BLocationManager;->disableFakeLocation(ILjava/lang/String;)V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BLocationManager;
    .locals 1

    .line 9
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    return-object v0
.end method

.method public static isFakeLocationEnable()Z
    .locals 1

    .line 13
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    return v0
.end method
