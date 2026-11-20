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
    .locals 0

    .line 184
    iput-object p1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 188
    const-string v0, "ProxyVpnService"

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmIsEstablished(Lio/vanta/proxy/ProxyVpnService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

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
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 201
    :catch_0
    :try_start_2
    const-string v1, "VPN interface appears to be closed, re-establishing..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService$2;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-static {v1}, Lio/vanta/proxy/ProxyVpnService;->-$$Nest$mreestablishVpn(Lio/vanta/proxy/ProxyVpnService;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
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

    goto :goto_1

    :catch_2
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

    :cond_1
    :goto_1
    return-void
.end method
