.class public Lio/vanta/proxy/ProxyVpnService;
.super Landroid/net/VpnService;
.source "ProxyVpnService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "NomadVPN"

.field private static final NOTIFICATION_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ProxyVpnService"


# instance fields
.field private mIsEstablished:Z

.field private mNetworkThread:Ljava/lang/Thread;

.field private mVpnInterface:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEstablished(Lio/vanta/proxy/ProxyVpnService;)Z
    .locals 0

    iget-boolean p0, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnInterface(Lio/vanta/proxy/ProxyVpnService;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreestablishVpn(Lio/vanta/proxy/ProxyVpnService;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->reestablishVpn()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    .line 22
    iput-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 95
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "NomadVPN"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    :goto_0
    const-string v1, "VantaCore VPN Active"

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Managing network access for sandboxed apps"

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 75
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "VantaCore VPN Service"

    const/4 v2, 0x2

    const-string v3, "NomadVPN"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 80
    const-string v1, "VPN service for VantaCore network access"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 83
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lio/vanta/proxy/ProxyVpnService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private reestablishVpn()V
    .locals 4

    .line 222
    const-string v0, "ProxyVpnService"

    :try_start_0
    const-string v1, "Attempting to re-establish VPN connection"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->stopVpn()V

    const-wide/16 v1, 0x3e8

    .line 224
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 225
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyVpnService;->establishVpn()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to re-establish VPN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startNetworkHandling()V
    .locals 3

    .line 180
    iget-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/vanta/proxy/ProxyVpnService$2;

    invoke-direct {v1, p0}, Lio/vanta/proxy/ProxyVpnService$2;-><init>(Lio/vanta/proxy/ProxyVpnService;)V

    const-string v2, "NomadNetworkHandler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    const-string v0, "ProxyVpnService"

    const-string v1, "Network handling thread started"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVpn()V
    .locals 4

    .line 233
    const-string v0, "ProxyVpnService"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    .line 235
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 237
    iput-object v2, p0, Lio/vanta/proxy/ProxyVpnService;->mNetworkThread:Ljava/lang/Thread;

    .line 240
    :cond_0
    iget-object v1, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 242
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 243
    iput-object v2, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    .line 244
    const-string v1, "VPN interface closed"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing VPN interface: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected establishVpn()V
    .locals 9

    .line 112
    const-string v0, "ProxyVpnService"

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 116
    :try_start_0
    const-string v6, "Starting VPN establishment..."

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 120
    const-string v6, "VPN establishment timeout, aborting"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    new-instance v6, Landroid/net/VpnService$Builder;

    invoke-direct {v6, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 127
    const-string v7, "VantaCore VPN"

    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 130
    const-string v7, "10.0.0.2"

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 133
    const-string v7, "0.0.0.0"

    invoke-virtual {v6, v7, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 136
    const-string v7, "8.8.8.8"

    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 137
    const-string v7, "8.8.4.4"

    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 140
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyVpnService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 143
    const-string v7, "VantaCore Internet Access"

    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 145
    const-string v7, "VPN builder configured, establishing interface..."

    invoke-static {v0, v7}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v7, v7, v4

    if-lez v7, :cond_1

    .line 149
    const-string v6, "VPN establishment timeout before establish(), aborting"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_1
    invoke-virtual {v6}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 156
    iput-boolean v6, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    .line 157
    const-string v6, "VPN interface established successfully"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->startNetworkHandling()V

    goto :goto_0

    .line 162
    :cond_2
    const-string v6, "Failed to establish VPN interface - builder.establish() returned null"

    invoke-static {v0, v6}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error establishing VPN: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    iput-boolean v3, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    .line 173
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VPN establishment took too long: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public getVpnInterface()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lio/vanta/proxy/ProxyVpnService;->mIsEstablished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vanta/proxy/ProxyVpnService;->mVpnInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 27
    const-string v0, "ProxyVpnService"

    const-string v1, "ProxyVpnService created"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->createNotificationChannel()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 68
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->stopVpn()V

    .line 69
    const-string v0, "ProxyVpnService"

    const-string v1, "ProxyVpnService destroyed"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRevoke()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 264
    const-string v0, "ProxyVpnService"

    const-string v1, "VPN service revoked by user"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->stopVpn()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 33
    const-string p1, "ProxyVpnService started"

    const-string p2, "ProxyVpnService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x22

    const/16 v0, 0x3e9

    if-lt p1, p3, :cond_0

    .line 39
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->createNotification()Landroid/app/Notification;

    move-result-object p1

    const/high16 p3, 0x40000000

    invoke-virtual {p0, v0, p1, p3}, Lio/vanta/proxy/ProxyVpnService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lio/vanta/proxy/ProxyVpnService;->createNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/vanta/proxy/ProxyVpnService;->startForeground(ILandroid/app/Notification;)V

    .line 45
    :goto_0
    const-string p1, "Foreground service started successfully"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lio/vanta/proxy/ProxyVpnService$1;

    invoke-direct {p3, p0}, Lio/vanta/proxy/ProxyVpnService$1;-><init>(Lio/vanta/proxy/ProxyVpnService;)V

    const-string v0, "VPNEstablishment"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Critical error in onStartCommand: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyVpnService;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Landroid/net/VpnService;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 272
    const-string p1, "ProxyVpnService"

    const-string v0, "Memory trim requested, optimizing VPN service"

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
