.class Lio/vanta/VantaCore$1;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->startBlackProcess()V
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

    .line 556
    iput-object p1, p0, Lio/vanta/VantaCore$1;->this$0:Lio/vanta/VantaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 559
    const-string p1, "VantaCore"

    const-string p2, "DaemonService connected via binder - black process anchored"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 563
    const-string p1, "VantaCore"

    const-string v0, "DaemonService binder disconnected"

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
