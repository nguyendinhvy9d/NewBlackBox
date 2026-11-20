.class public final Lio/vanta/core/system/api/BetaActivationManager;
.super Ljava/lang/Object;
.source "BetaActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/api/BetaActivationManager$Result;,
        Lio/vanta/core/system/api/BetaActivationManager$Callback;
    }
.end annotation


# static fields
.field private static final MAIN_HANDLER:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/vanta/core/system/api/BetaActivationManager;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Lio/vanta/core/system/api/BetaActivationManager$Callback;)V
    .registers 4

    .line 14
    new-instance p0, Lio/vanta/core/system/api/BetaActivationManager$Result;

    const/4 p1, 0x1

    const-string v0, "Activated"

    invoke-direct {p0, p1, v0}, Lio/vanta/core/system/api/BetaActivationManager$Result;-><init>(ZLjava/lang/String;)V

    if-eqz p2, :cond_14

    .line 16
    sget-object p1, Lio/vanta/core/system/api/BetaActivationManager;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v0, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda0;-><init>(Lio/vanta/core/system/api/BetaActivationManager$Callback;Lio/vanta/core/system/api/BetaActivationManager$Result;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public static activateBlocking(Landroid/content/Context;Ljava/lang/String;)Lio/vanta/core/system/api/BetaActivationManager$Result;
    .registers 3

    .line 21
    new-instance p0, Lio/vanta/core/system/api/BetaActivationManager$Result;

    const/4 p1, 0x1

    const-string v0, "Activated"

    invoke-direct {p0, p1, v0}, Lio/vanta/core/system/api/BetaActivationManager$Result;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static getMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 35
    const-string p0, "Activated"

    return-object p0
.end method

.method public static isActivated(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$activate$0(Lio/vanta/core/system/api/BetaActivationManager$Callback;Lio/vanta/core/system/api/BetaActivationManager$Result;)V
    .registers 2

    .line 16
    invoke-interface {p0, p1}, Lio/vanta/core/system/api/BetaActivationManager$Callback;->onResult(Lio/vanta/core/system/api/BetaActivationManager$Result;)V

    return-void
.end method

.method static synthetic lambda$restoreIfPresent$1(Lio/vanta/core/system/api/BetaActivationManager$Callback;)V
    .registers 4

    .line 26
    new-instance v0, Lio/vanta/core/system/api/BetaActivationManager$Result;

    const/4 v1, 0x1

    const-string v2, "Activated"

    invoke-direct {v0, v1, v2}, Lio/vanta/core/system/api/BetaActivationManager$Result;-><init>(ZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lio/vanta/core/system/api/BetaActivationManager$Callback;->onResult(Lio/vanta/core/system/api/BetaActivationManager$Result;)V

    return-void
.end method

.method public static restoreIfPresent(Landroid/content/Context;Lio/vanta/core/system/api/BetaActivationManager$Callback;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 26
    sget-object p0, Lio/vanta/core/system/api/BetaActivationManager;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v0, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda1;-><init>(Lio/vanta/core/system/api/BetaActivationManager$Callback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method
