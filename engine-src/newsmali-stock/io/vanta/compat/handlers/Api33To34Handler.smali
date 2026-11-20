.class public Lio/vanta/compat/handlers/Api33To34Handler;
.super Lio/vanta/compat/handlers/Api29To32Handler;
.source "Api33To34Handler.java"


# static fields
.field private static final RECEIVER_EXPORTED:I = 0x2

.field private static final RECEIVER_NOT_EXPORTED:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lio/vanta/compat/handlers/Api29To32Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxApi()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public getMinApi()I
    .registers 2

    const/16 v0, 0x21

    return v0
.end method

.method public prepareDexFile(Ljava/io/File;)V
    .registers 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_11

    :catchall_11
    :cond_11
    return-void
.end method

.method public sanitizeReceiverFlags(IZ)I
    .registers 4

    and-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_a

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    goto :goto_9

    :cond_8
    const/4 p2, 0x4

    :goto_9
    or-int/2addr p1, p2

    :cond_a
    return p1
.end method
