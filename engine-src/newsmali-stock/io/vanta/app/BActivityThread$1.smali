.class Lio/vanta/app/BActivityThread$1;
.super Ljava/lang/Object;
.source "BActivityThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/app/BActivityThread;->initProcess(Lio/vanta/entity/AppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/app/BActivityThread;

.field final synthetic val$iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lio/vanta/app/BActivityThread;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lio/vanta/app/BActivityThread$1;->this$0:Lio/vanta/app/BActivityThread;

    iput-object p2, p0, Lio/vanta/app/BActivityThread$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 195
    invoke-static {}, Lio/vanta/app/BActivityThread;->-$$Nest$sfgetmConfigLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_5
    iget-object v1, p0, Lio/vanta/app/BActivityThread$1;->val$iBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v1

    goto :goto_16

    .line 200
    :catch_e
    :goto_e
    :try_start_e
    iget-object v1, p0, Lio/vanta/app/BActivityThread$1;->this$0:Lio/vanta/app/BActivityThread;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/vanta/app/BActivityThread;->-$$Nest$fputmAppConfig(Lio/vanta/app/BActivityThread;Lio/vanta/entity/AppConfig;)V

    .line 201
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_c

    throw v1
.end method
