.class Lio/vanta/VantaCore$5;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->scheduleDelayedServiceStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/VantaCore;


# direct methods
.method constructor <init>(Lio/vanta/VantaCore;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lio/vanta/VantaCore$5;->this$0:Lio/vanta/VantaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 803
    const-string v0, "VantaCore"

    const-string v1, "Executing delayed service start"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lio/vanta/VantaCore$5;->this$0:Lio/vanta/VantaCore;

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vanta/VantaCore$5;->this$0:Lio/vanta/VantaCore;

    invoke-static {v0}, Lio/vanta/VantaCore;->-$$Nest$misBlackProcessRunning(Lio/vanta/VantaCore;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lio/vanta/VantaCore$5;->this$0:Lio/vanta/VantaCore;

    invoke-static {v0}, Lio/vanta/VantaCore;->-$$Nest$mstartBlackProcess(Lio/vanta/VantaCore;)V

    :cond_0
    return-void
.end method
