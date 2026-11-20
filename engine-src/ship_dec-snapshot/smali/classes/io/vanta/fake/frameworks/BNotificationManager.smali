.class public Lio/vanta/fake/frameworks/BNotificationManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/notification/IBNotificationManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sNotificationManager:Lio/vanta/fake/frameworks/BNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/vanta/fake/frameworks/BNotificationManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BNotificationManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BNotificationManager;->sNotificationManager:Lio/vanta/fake/frameworks/BNotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BNotificationManager;
    .locals 1

    .line 20
    sget-object v0, Lio/vanta/fake/frameworks/BNotificationManager;->sNotificationManager:Lio/vanta/fake/frameworks/BNotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancelNotificationWithTag(ILjava/lang/String;)V
    .locals 2

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->cancelNotificationWithTag(ILjava/lang/String;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 2

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->createNotificationChannel(Landroid/app/NotificationChannel;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .locals 2

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->deleteNotificationChannel(Ljava/lang/String;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .locals 2

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->deleteNotificationChannelGroup(Ljava/lang/String;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;)V
    .locals 2

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 2

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->getNotificationChannel(Ljava/lang/String;I)Landroid/app/NotificationChannel;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannels(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BNotificationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/IBNotificationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/notification/IBNotificationManagerService;->getNotificationChannels(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "notification_manager"

    return-object v0
.end method
