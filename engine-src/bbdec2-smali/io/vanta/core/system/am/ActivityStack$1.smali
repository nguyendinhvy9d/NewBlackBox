.class Lio/vanta/core/system/am/ActivityStack$1;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/core/system/am/ActivityStack;


# direct methods
.method constructor <init>(Lio/vanta/core/system/am/ActivityStack;Landroid/os/Looper;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lio/vanta/core/system/am/ActivityStack$1;->this$0:Lio/vanta/core/system/am/ActivityStack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_14

    .line 62
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/vanta/core/system/am/ActivityRecord;

    if-eqz p1, :cond_14

    .line 64
    iget-object v0, p0, Lio/vanta/core/system/am/ActivityStack$1;->this$0:Lio/vanta/core/system/am/ActivityStack;

    invoke-static {v0}, Lio/vanta/core/system/am/ActivityStack;->-$$Nest$fgetmLaunchingActivities(Lio/vanta/core/system/am/ActivityStack;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    return-void
.end method
