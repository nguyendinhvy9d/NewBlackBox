.class Lio/vanta/proxy/ProxyVpnService$2;
.super Ljava/lang/Object;
.source "ProxyVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/proxy/ProxyVpnService;->startNetworkHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/proxy/ProxyVpnService;


# direct methods
.method constructor <init>(Lio/vanta/proxy/ProxyVpnService;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 188
    const-string v0, "ProxyVpnService"

    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmIsEstablished(Lio/vanta/proxy/ProxyVpnService;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_6e

    const-wide/16 v1, 0x2710

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 193
    const-string v1, "VPN interface active, monitoring network..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_28} :catch_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_3f

    if-eqz v1, :cond_2

    .line 199
    :try_start_2a
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_33} :catch_57

    goto :goto_2

    .line 201
    :catch_34
    :try_start_34
    const-string v1, "VPN interface appears to be closed, re-establishing..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$mreestablishVpn(Lio/vanta/proxy/ProxyVpnService;)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3e} :catch_57
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_6e

    :catch_3f
    move-exception v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in network monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_57
    move-exception v1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network monitoring interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    return-void
.end method
