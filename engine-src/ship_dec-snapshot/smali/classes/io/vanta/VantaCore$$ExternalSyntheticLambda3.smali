.class public final synthetic Lio/vanta/VantaCore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lio/vanta/VantaCore$LogSendListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;->f$1:Lio/vanta/VantaCore$LogSendListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda3;->f$1:Lio/vanta/VantaCore$LogSendListener;

    invoke-static {v0, v1}, Lio/vanta/VantaCore;->lambda$sendLogs$1(Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method
