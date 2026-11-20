.class Lio/vanta/VantaCore$6;
.super Ljava/lang/Object;
.source "VantaCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/VantaCore;->initVpnService()V
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

    .line 1712
    iput-object p1, p0, Lio/vanta/VantaCore$6;->this$0:Lio/vanta/VantaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1717
    const-string v0, "VantaCore"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/vanta/proxy/ProxyVpnService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1718
    const-string v2, "android.net.VpnService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1721
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_27

    .line 1723
    :cond_20
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1726
    :goto_27
    const-string v1, "VPN service started successfully for internet access"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v1

    .line 1728
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start VPN service: "

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
