.class Lio/vanta/VantaCore$7;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->scheduleServerProcessRecovery(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/VantaCore;


# direct methods
.method constructor <init>(Lio/vanta/VantaCore;)V
    .registers 2

    .line 1934
    iput-object p1, p0, Lio/vanta/VantaCore$7;->this$0:Lio/vanta/VantaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1938
    const-string v0, "VantaCore"

    :try_start_2
    const-string v1, "Executing server process recovery"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v1, p0, Lio/vanta/VantaCore$7;->this$0:Lio/vanta/VantaCore;

    invoke-static {v1}, Lio/vanta/VantaCore;->-$$Nest$mrefreshServerProcessContext(Lio/vanta/VantaCore;)V

    .line 1943
    iget-object v1, p0, Lio/vanta/VantaCore$7;->this$0:Lio/vanta/VantaCore;

    invoke-virtual {v1}, Lio/vanta/VantaCore;->isServerProcess()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lio/vanta/VantaCore$7;->this$0:Lio/vanta/VantaCore;

    invoke-static {v1}, Lio/vanta/VantaCore;->-$$Nest$fgetmClientConfiguration(Lio/vanta/VantaCore;)Lio/vanta/app/configuration/ClientConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/app/configuration/ClientConfiguration;->isEnableDaemonService()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1944
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1945
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/vanta/core/system/DaemonService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 1946
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1948
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1949
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 1951
    :cond_41
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    :cond_48
    return-void

    :catch_49
    move-exception v1

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server process recovery execution failed: "

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
