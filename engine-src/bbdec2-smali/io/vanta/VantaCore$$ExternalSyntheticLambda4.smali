.class public final synthetic Lio/vanta/VantaCore$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/VantaCore$LogSendListener;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/VantaCore$LogSendListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda4;->f$0:Lio/vanta/VantaCore$LogSendListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda4;->f$0:Lio/vanta/VantaCore$LogSendListener;

    invoke-static {v0}, Lio/vanta/VantaCore;->lambda$sendLogs$2(Lio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method
