.class Lio/vanta/VantaCore$4;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->scheduleProcessRecovery(II)V
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

    .line 707
    iput-object p1, p0, Lio/vanta/VantaCore$4;->this$0:Lio/vanta/VantaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 711
    const-string v0, "VantaCore"

    :try_start_0
    const-string v1, "Executing process recovery"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lio/vanta/VantaCore$4;->this$0:Lio/vanta/VantaCore;

    invoke-static {v1}, Lio/vanta/VantaCore;->-$$Nest$mrefreshProcessContext(Lio/vanta/VantaCore;)V

    .line 716
    iget-object v1, p0, Lio/vanta/VantaCore$4;->this$0:Lio/vanta/VantaCore;

    invoke-virtual {v1}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/vanta/VantaCore$4;->this$0:Lio/vanta/VantaCore;

    invoke-static {v1}, Lio/vanta/VantaCore;->-$$Nest$misBlackProcessRunning(Lio/vanta/VantaCore;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lio/vanta/VantaCore$4;->this$0:Lio/vanta/VantaCore;

    invoke-static {v1}, Lio/vanta/VantaCore;->-$$Nest$mstartBlackProcess(Lio/vanta/VantaCore;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Process recovery execution failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
