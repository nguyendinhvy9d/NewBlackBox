.class public final synthetic Lio/vanta/VantaCore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/VantaCore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lio/vanta/VantaCore$LogSendListener;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/VantaCore;Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$0:Lio/vanta/VantaCore;

    iput-object p2, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$3:Lio/vanta/VantaCore$LogSendListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$0:Lio/vanta/VantaCore;

    iget-object v1, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/vanta/VantaCore$$ExternalSyntheticLambda2;->f$3:Lio/vanta/VantaCore$LogSendListener;

    invoke-static {v0, v1, v2, v3}, Lio/vanta/VantaCore;->$r8$lambda$XV0QbQtfSWAhXa0pzoZOCcpSBkE(Lio/vanta/VantaCore;Ljava/lang/String;Ljava/lang/String;Lio/vanta/VantaCore$LogSendListener;)V

    return-void
.end method
