.class Lio/vanta/VantaCore$2;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->scheduleDelayedRetry(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/VantaCore;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/vanta/VantaCore;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lio/vanta/VantaCore$2;->this$0:Lio/vanta/VantaCore;

    iput-object p2, p0, Lio/vanta/VantaCore$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 619
    const-string v0, "VantaCore"

    :try_start_0
    const-string v1, "Executing delayed retry for DaemonService"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/VantaCore$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 623
    :cond_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/VantaCore$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 625
    :goto_0
    const-string v1, "Delayed retry successful"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delayed retry failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lio/vanta/VantaCore$2;->this$0:Lio/vanta/VantaCore;

    invoke-static {v0}, Lio/vanta/VantaCore;->-$$Nest$mtryAlternativeStartupMethods(Lio/vanta/VantaCore;)V

    return-void
.end method
