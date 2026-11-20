.class Lio/vanta/core/system/am/ActiveServices$1;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/core/system/am/ActiveServices;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/core/system/am/ActiveServices;

.field final synthetic val$reqForeground:Z

.field final synthetic val$stubServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/vanta/core/system/am/ActiveServices;Landroid/content/Intent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$1;->this$0:Lio/vanta/core/system/am/ActiveServices;

    iput-object p2, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$stubServiceIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$reqForeground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    const-string v0, "ActiveServices"

    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$stubServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    const-string v1, "startService: dispatched stub service intent successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 76
    :try_start_1
    iget-boolean v2, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$reqForeground:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 77
    iget-object v1, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$stubServiceIntent:Landroid/content/Intent;

    const-string v2, "_nomad_req_foreground_"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/core/system/am/ActiveServices$1;->val$stubServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    const-string v1, "startForegroundService: dispatched stub service intent fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    throw v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startService caught: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
