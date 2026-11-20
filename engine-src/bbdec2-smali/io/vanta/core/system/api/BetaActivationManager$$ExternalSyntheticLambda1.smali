.class public final synthetic Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/core/system/api/BetaActivationManager$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/core/system/api/BetaActivationManager$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda1;->f$0:Lio/vanta/core/system/api/BetaActivationManager$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/vanta/core/system/api/BetaActivationManager$$ExternalSyntheticLambda1;->f$0:Lio/vanta/core/system/api/BetaActivationManager$Callback;

    invoke-static {v0}, Lio/vanta/core/system/api/BetaActivationManager;->lambda$restoreIfPresent$1(Lio/vanta/core/system/api/BetaActivationManager$Callback;)V

    return-void
.end method
