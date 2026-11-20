.class Lio/vanta/proxy/ProxyVpnService$1;
.super Ljava/lang/Object;
.source "ProxyVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/proxy/ProxyVpnService;->onStartCommand(Landroid/content/Intent;II)I
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

    .line 48
    iput-object p1, p0, Lio/vanta/proxy/ProxyVpnService$1;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 51
    iget-object v0, p0, Lio/vanta/proxy/ProxyVpnService$1;->this$0:Lio/vanta/proxy/ProxyVpnService;

    invoke-virtual {v0}, Lio/vanta/proxy/ProxyVpnService;->establishVpn()V

    return-void
.end method
