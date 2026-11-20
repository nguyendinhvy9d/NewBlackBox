.class public final synthetic Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/app/BActivityThread;

.field public final synthetic f$1:Lio/vanta/entity/am/ReceiverData;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/app/BActivityThread;Lio/vanta/entity/am/ReceiverData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;->f$0:Lio/vanta/app/BActivityThread;

    iput-object p2, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;->f$1:Lio/vanta/entity/am/ReceiverData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;->f$0:Lio/vanta/app/BActivityThread;

    iget-object v1, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda2;->f$1:Lio/vanta/entity/am/ReceiverData;

    invoke-static {v0, v1}, Lio/vanta/app/BActivityThread;->$r8$lambda$Sh95j2Np7rPCdhDm3SZmxhYJk1E(Lio/vanta/app/BActivityThread;Lio/vanta/entity/am/ReceiverData;)V

    return-void
.end method
