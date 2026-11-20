.class Ltop/niunaijun/blackbox/BlackBoxCore$1;
.super Ljava/lang/Object;
.source "BlackBoxCore.java"

# interfaces
.implements Lio/vanta/VantaCore$LogSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/BlackBoxCore;->sendLogs(Ljava/lang/String;ZLtop/niunaijun/blackbox/BlackBoxCore$LogSendListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/BlackBoxCore;

.field final synthetic val$listener:Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/BlackBoxCore;Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore$1;->this$0:Ltop/niunaijun/blackbox/BlackBoxCore;

    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore$1;->val$listener:Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore$1;->val$listener:Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 191
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore$1;->val$listener:Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;->onSuccess()V

    :cond_0
    return-void
.end method
