.class public Lio/vanta/compat/AndroidCompatibility;
.super Ljava/lang/Object;
.source "AndroidCompatibility.java"


# static fields
.field private static volatile sHandler:Lio/vanta/compat/IAndroidCompatibilityHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHandler()Lio/vanta/compat/IAndroidCompatibilityHandler;
    .registers 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_c

    .line 32
    new-instance v0, Lio/vanta/compat/handlers/Api35PlusHandler;

    invoke-direct {v0}, Lio/vanta/compat/handlers/Api35PlusHandler;-><init>()V

    return-object v0

    :cond_c
    const/16 v1, 0x21

    if-lt v0, v1, :cond_16

    .line 34
    new-instance v0, Lio/vanta/compat/handlers/Api33To34Handler;

    invoke-direct {v0}, Lio/vanta/compat/handlers/Api33To34Handler;-><init>()V

    return-object v0

    :cond_16
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_20

    .line 36
    new-instance v0, Lio/vanta/compat/handlers/Api29To32Handler;

    invoke-direct {v0}, Lio/vanta/compat/handlers/Api29To32Handler;-><init>()V

    return-object v0

    :cond_20
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    .line 38
    new-instance v0, Lio/vanta/compat/handlers/Api26To28Handler;

    invoke-direct {v0}, Lio/vanta/compat/handlers/Api26To28Handler;-><init>()V

    return-object v0

    .line 40
    :cond_2a
    new-instance v0, Lio/vanta/compat/handlers/BaseCompatibilityHandler;

    invoke-direct {v0}, Lio/vanta/compat/handlers/BaseCompatibilityHandler;-><init>()V

    return-object v0
.end method

.method public static get()Lio/vanta/compat/IAndroidCompatibilityHandler;
    .registers 2

    .line 19
    sget-object v0, Lio/vanta/compat/AndroidCompatibility;->sHandler:Lio/vanta/compat/IAndroidCompatibilityHandler;

    if-nez v0, :cond_16

    .line 20
    const-class v0, Lio/vanta/compat/AndroidCompatibility;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Lio/vanta/compat/AndroidCompatibility;->sHandler:Lio/vanta/compat/IAndroidCompatibilityHandler;

    if-nez v1, :cond_11

    .line 22
    invoke-static {}, Lio/vanta/compat/AndroidCompatibility;->createHandler()Lio/vanta/compat/IAndroidCompatibilityHandler;

    move-result-object v1

    sput-object v1, Lio/vanta/compat/AndroidCompatibility;->sHandler:Lio/vanta/compat/IAndroidCompatibilityHandler;

    .line 24
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 26
    :cond_16
    :goto_16
    sget-object v0, Lio/vanta/compat/AndroidCompatibility;->sHandler:Lio/vanta/compat/IAndroidCompatibilityHandler;

    return-object v0
.end method
