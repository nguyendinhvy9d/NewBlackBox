.class public Lio/vanta/compat/handlers/Api29To32Handler;
.super Lio/vanta/compat/handlers/Api26To28Handler;
.source "Api29To32Handler.java"


# static fields
.field private static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final FLAG_MUTABLE:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lio/vanta/compat/handlers/Api26To28Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public fixAttributionSource(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 4

    .line 39
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_b

    if-eqz p1, :cond_b

    .line 40
    invoke-static {p1}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public getMaxApi()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getMinApi()I
    .registers 2

    const/16 v0, 0x1d

    return v0
.end method

.method public hasActivityClient()Z
    .registers 3

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasActivityTaskManager()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasAttributionSource()Z
    .registers 3

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasPermissionManagerService()Z
    .registers 3

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public sanitizePendingIntentFlags(IZ)I
    .registers 5

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    const/high16 v0, 0x6000000

    and-int/2addr v0, p1

    if-nez v0, :cond_13

    if-eqz p2, :cond_10

    const/high16 p2, 0x4000000

    goto :goto_12

    :cond_10
    const/high16 p2, 0x2000000

    :goto_12
    or-int/2addr p1, p2

    :cond_13
    return p1
.end method
