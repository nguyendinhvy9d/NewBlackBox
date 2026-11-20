.class public Lio/vanta/compat/handlers/Api29To32Handler;
.super Lio/vanta/compat/handlers/Api26To28Handler;
.source "Api29To32Handler.java"


# static fields
.field private static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final FLAG_MUTABLE:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lio/vanta/compat/handlers/Api26To28Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public fixAttributionSource(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 39
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_0

    if-eqz p1, :cond_0

    .line 40
    invoke-static {p1}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getMaxApi()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getMinApi()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public hasActivityClient()Z
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasActivityTaskManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasAttributionSource()Z
    .locals 2

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPermissionManagerService()Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sanitizePendingIntentFlags(IZ)I
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x6000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/high16 p2, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 p2, 0x2000000

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    return p1
.end method
