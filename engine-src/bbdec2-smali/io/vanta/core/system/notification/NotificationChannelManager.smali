.class public Lio/vanta/core/system/notification/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field public static APP_CHANNEL:Landroid/app/NotificationChannel;

.field private static final sManager:Lio/vanta/core/system/notification/NotificationChannelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/vanta/core/system/notification/NotificationChannelManager;

    invoke-direct {v0}, Lio/vanta/core/system/notification/NotificationChannelManager;-><init>()V

    sput-object v0, Lio/vanta/core/system/notification/NotificationChannelManager;->sManager:Lio/vanta/core/system/notification/NotificationChannelManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 26
    invoke-direct {p0}, Lio/vanta/core/system/notification/NotificationChannelManager;->registerAppChannel()V

    :cond_0
    return-void
.end method

.method public static get()Lio/vanta/core/system/notification/NotificationChannelManager;
    .locals 1

    .line 21
    sget-object v0, Lio/vanta/core/system/notification/NotificationChannelManager;->sManager:Lio/vanta/core/system/notification/NotificationChannelManager;

    return-object v0
.end method

.method private registerAppChannel()V
    .locals 5

    .line 32
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 33
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "black-box-app"

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sput-object v2, Lio/vanta/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 38
    sget-object v2, Lio/vanta/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 39
    sget-object v2, Lio/vanta/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 40
    sget-object v2, Lio/vanta/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 41
    sget-object v1, Lio/vanta/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
