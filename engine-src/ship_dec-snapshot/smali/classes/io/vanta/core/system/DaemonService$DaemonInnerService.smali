.class public Lio/vanta/core/system/DaemonService$DaemonInnerService;
.super Landroid/app/Service;
.source "DaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/DaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaemonInnerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 146
    const-string v0, "DaemonService"

    const-string v1, "DaemonInnerService -> onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 180
    const-string v0, "DaemonService"

    const-string v1, "DaemonInnerService -> onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 152
    const-string p1, "DaemonInnerService -> onStartCommand"

    const-string p2, "DaemonService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 156
    :try_start_0
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Lio/vanta/core/system/DaemonService$DaemonInnerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    if-eqz p3, :cond_0

    .line 158
    invoke-static {}, Lio/vanta/core/system/DaemonService;->-$$Nest$sfgetNOTIFY_ID()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 159
    const-string p3, "Notification cancelled successfully"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lio/vanta/core/system/DaemonService$DaemonInnerService;->stopSelf()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in DaemonInnerService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Lio/vanta/core/system/DaemonService$DaemonInnerService;->stopSelf()V

    return p1
.end method
