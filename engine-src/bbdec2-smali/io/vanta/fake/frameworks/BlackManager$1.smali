.class Lio/vanta/fake/frameworks/BlackManager$1;
.super Ljava/lang/Object;
.source "BlackManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/fake/frameworks/BlackManager;->getService()Landroid/os/IInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/fake/frameworks/BlackManager;

.field final synthetic val$serviceRef:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Lio/vanta/fake/frameworks/BlackManager;Landroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lio/vanta/fake/frameworks/BlackManager$1;->this$0:Lio/vanta/fake/frameworks/BlackManager;

    iput-object p2, p0, Lio/vanta/fake/frameworks/BlackManager$1;->val$serviceRef:Landroid/os/IInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 98
    const-string v0, "BlackManager"

    :try_start_2
    iget-object v1, p0, Lio/vanta/fake/frameworks/BlackManager$1;->val$serviceRef:Landroid/os/IInterface;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 99
    iget-object v1, p0, Lio/vanta/fake/frameworks/BlackManager$1;->val$serviceRef:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_30

    :catch_17
    move-exception v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error unlinking death recipient for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/vanta/fake/frameworks/BlackManager$1;->this$0:Lio/vanta/fake/frameworks/BlackManager;

    invoke-virtual {v3}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_30
    :goto_30
    iget-object v1, p0, Lio/vanta/fake/frameworks/BlackManager$1;->this$0:Lio/vanta/fake/frameworks/BlackManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/vanta/fake/frameworks/BlackManager;->-$$Nest$fputmService(Lio/vanta/fake/frameworks/BlackManager;Landroid/os/IInterface;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service died: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/vanta/fake/frameworks/BlackManager$1;->this$0:Lio/vanta/fake/frameworks/BlackManager;

    invoke-virtual {v2}, Lio/vanta/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
