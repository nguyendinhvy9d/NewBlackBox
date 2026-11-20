.class public Lio/vanta/proxy/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/proxy/ProxyService$P49;,
        Lio/vanta/proxy/ProxyService$P48;,
        Lio/vanta/proxy/ProxyService$P47;,
        Lio/vanta/proxy/ProxyService$P46;,
        Lio/vanta/proxy/ProxyService$P45;,
        Lio/vanta/proxy/ProxyService$P44;,
        Lio/vanta/proxy/ProxyService$P43;,
        Lio/vanta/proxy/ProxyService$P42;,
        Lio/vanta/proxy/ProxyService$P41;,
        Lio/vanta/proxy/ProxyService$P40;,
        Lio/vanta/proxy/ProxyService$P39;,
        Lio/vanta/proxy/ProxyService$P38;,
        Lio/vanta/proxy/ProxyService$P37;,
        Lio/vanta/proxy/ProxyService$P36;,
        Lio/vanta/proxy/ProxyService$P35;,
        Lio/vanta/proxy/ProxyService$P34;,
        Lio/vanta/proxy/ProxyService$P33;,
        Lio/vanta/proxy/ProxyService$P32;,
        Lio/vanta/proxy/ProxyService$P31;,
        Lio/vanta/proxy/ProxyService$P30;,
        Lio/vanta/proxy/ProxyService$P29;,
        Lio/vanta/proxy/ProxyService$P28;,
        Lio/vanta/proxy/ProxyService$P27;,
        Lio/vanta/proxy/ProxyService$P26;,
        Lio/vanta/proxy/ProxyService$P25;,
        Lio/vanta/proxy/ProxyService$P24;,
        Lio/vanta/proxy/ProxyService$P23;,
        Lio/vanta/proxy/ProxyService$P22;,
        Lio/vanta/proxy/ProxyService$P21;,
        Lio/vanta/proxy/ProxyService$P20;,
        Lio/vanta/proxy/ProxyService$P19;,
        Lio/vanta/proxy/ProxyService$P18;,
        Lio/vanta/proxy/ProxyService$P17;,
        Lio/vanta/proxy/ProxyService$P16;,
        Lio/vanta/proxy/ProxyService$P15;,
        Lio/vanta/proxy/ProxyService$P14;,
        Lio/vanta/proxy/ProxyService$P13;,
        Lio/vanta/proxy/ProxyService$P12;,
        Lio/vanta/proxy/ProxyService$P11;,
        Lio/vanta/proxy/ProxyService$P10;,
        Lio/vanta/proxy/ProxyService$P9;,
        Lio/vanta/proxy/ProxyService$P8;,
        Lio/vanta/proxy/ProxyService$P7;,
        Lio/vanta/proxy/ProxyService$P6;,
        Lio/vanta/proxy/ProxyService$P5;,
        Lio/vanta/proxy/ProxyService$P4;,
        Lio/vanta/proxy/ProxyService$P3;,
        Lio/vanta/proxy/ProxyService$P2;,
        Lio/vanta/proxy/ProxyService$P1;,
        Lio/vanta/proxy/ProxyService$P0;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StubService"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private showNotification()V
    .locals 5

    .line 77
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/vanta/proxy/ProxyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomad_proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "VantaCore Service"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 86
    const-string v4, "VantaCore background helper service"

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 89
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080041

    .line 90
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/high16 v3, 0x40000000

    invoke-virtual {p0, v1, v2, v3}, Lio/vanta/proxy/ProxyService;->startForeground(ILandroid/app/Notification;I)V

    return-void

    .line 97
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/vanta/proxy/ProxyService;->startForeground(ILandroid/app/Notification;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 101
    :catchall_0
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/vanta/proxy/ProxyService;->startForeground(ILandroid/app/Notification;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 27
    iput-object p1, p0, Lio/vanta/proxy/ProxyService;->mIntent:Landroid/content/Intent;

    .line 28
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    iget-object v0, p0, Lio/vanta/proxy/ProxyService;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v1

    iget-object v0, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->stopService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 61
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 33
    iput-object p1, p0, Lio/vanta/proxy/ProxyService;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 34
    const-string v0, "_nomad_req_foreground_"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lio/vanta/proxy/ProxyService;->showNotification()V

    .line 37
    :cond_0
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x2

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 67
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onTrimMemory(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 72
    invoke-static {}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->onUnbind(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    return p1
.end method
