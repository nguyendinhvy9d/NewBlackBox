.class public Lio/vanta/core/system/notification/BNotificationManagerService;
.super Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;
.source "BNotificationManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field public static final CHANNEL_BLACK:Ljava/lang/String; = "@black-"

.field public static final GROUP_BLACK:Ljava/lang/String; = "@black-group-"

.field private static final sService:Lio/vanta/core/system/notification/BNotificationManagerService;


# instance fields
.field private mNotificationChannelManager:Lio/vanta/core/system/notification/NotificationChannelManager;

.field private final mNotificationRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lio/vanta/core/system/notification/BNotificationManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/notification/BNotificationManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/notification/BNotificationManagerService;->sService:Lio/vanta/core/system/notification/BNotificationManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lio/vanta/core/system/notification/IBNotificationManagerService$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    .line 41
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static get()Lio/vanta/core/system/notification/BNotificationManagerService;
    .registers 1

    .line 44
    sget-object v0, Lio/vanta/core/system/notification/BNotificationManagerService;->sService:Lio/vanta/core/system/notification/BNotificationManagerService;

    return-object v0
.end method

.method private getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_20

    .line 275
    const-string v0, "@black-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_20

    .line 278
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_20
    :goto_20
    return-object p1
.end method

.method private getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_20

    .line 289
    const-string v0, "@black-group-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_20

    .line 291
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_20
    :goto_20
    return-object p1
.end method

.method public static getNotificationId(IILjava/lang/String;)I
    .registers 4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;
    .registers 5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    monitor-enter p2

    .line 56
    :try_start_1a
    iget-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/notification/NotificationRecord;

    if-nez v0, :cond_2e

    .line 58
    new-instance v0, Lio/vanta/core/system/notification/NotificationRecord;

    invoke-direct {v0}, Lio/vanta/core/system/notification/NotificationRecord;-><init>()V

    .line 59
    iget-object v1, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2e
    monitor-exit p2

    return-object v0

    :catchall_30
    move-exception p1

    .line 62
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw p1
.end method

.method private getRealChannelId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_12

    .line 282
    const-string v0, "@black-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_12

    .line 285
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_12
    :goto_12
    return-object p1
.end method

.method private getRealGroupId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_12

    .line 295
    const-string v0, "@black-group-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_12

    .line 297
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_12
    :goto_12
    return-object p1
.end method

.method private handleNotificationChannel(Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 212
    invoke-static {p1}, Lvanta/android/app/BRNotificationChannel;->get(Ljava/lang/Object;)Lvanta/android/app/NotificationChannelContext;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lvanta/android/app/NotificationChannelContext;->mId()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-direct {p0, v1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-interface {v0, v1}, Lvanta/android/app/NotificationChannelContext;->_set_mId(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    return-void
.end method

.method private handleNotificationGroup(Landroid/app/NotificationChannelGroup;I)V
    .registers 4

    .line 228
    invoke-static {p1}, Lvanta/android/app/BRNotificationChannelGroup;->get(Ljava/lang/Object;)Lvanta/android/app/NotificationChannelGroupContext;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Lvanta/android/app/NotificationChannelGroupContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {p1, v0}, Lvanta/android/app/NotificationChannelGroupContext;->_set_mId(Ljava/lang/Object;)V

    .line 233
    invoke-interface {p1}, Lvanta/android/app/NotificationChannelGroupContext;->mChannels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 236
    invoke-virtual {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->createNotificationChannel(Landroid/app/NotificationChannel;I)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method private removeNotificationRecord(Ljava/lang/String;I)V
    .registers 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    monitor-enter p2

    .line 68
    :try_start_1a
    iget-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit p2

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method private resetNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 3

    .line 221
    invoke-static {p1}, Lvanta/android/app/BRNotificationChannel;->get(Ljava/lang/Object;)Lvanta/android/app/NotificationChannelContext;

    move-result-object p1

    .line 222
    invoke-interface {p1}, Lvanta/android/app/NotificationChannelContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lio/vanta/core/system/notification/BNotificationManagerService;->getRealChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-interface {p1, v0}, Lvanta/android/app/NotificationChannelContext;->_set_mId(Ljava/lang/Object;)V

    return-void
.end method

.method private resetNotificationGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 3

    .line 242
    invoke-static {p1}, Lvanta/android/app/BRNotificationChannelGroup;->get(Ljava/lang/Object;)Lvanta/android/app/NotificationChannelGroupContext;

    move-result-object p1

    .line 243
    invoke-interface {p1}, Lvanta/android/app/NotificationChannelGroupContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-direct {p0, v0}, Lio/vanta/core/system/notification/BNotificationManagerService;->getRealGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-interface {p1, v0}, Lvanta/android/app/NotificationChannelGroupContext;->_set_mId(Ljava/lang/Object;)V

    .line 247
    invoke-interface {p1}, Lvanta/android/app/NotificationChannelGroupContext;->mChannels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 250
    invoke-direct {p0, v0}, Lio/vanta/core/system/notification/BNotificationManagerService;->resetNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_19

    :cond_29
    return-void
.end method


# virtual methods
.method public cancelNotificationWithTag(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 201
    :cond_f
    invoke-virtual {p2}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationId(IILjava/lang/String;)I

    move-result p1

    .line 202
    iget-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    invoke-virtual {p2}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 205
    iget-object p3, p2, Lio/vanta/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    monitor-enter p3

    .line 206
    :try_start_27
    iget-object p2, p2, Lio/vanta/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    monitor-exit p3

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p3
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 104
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 105
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 108
    :cond_f
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->handleNotificationChannel(Landroid/app/NotificationChannel;I)V

    .line 109
    iget-object v1, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 111
    invoke-direct {p0, p1}, Lio/vanta/core/system/notification/BNotificationManagerService;->resetNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 112
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 113
    iget-object v0, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter v0

    .line 114
    :try_start_25
    iget-object p2, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;I)V
    .registers 5

    .line 138
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 139
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 142
    :cond_f
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->handleNotificationGroup(Landroid/app/NotificationChannelGroup;I)V

    .line 143
    iget-object v1, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 145
    invoke-direct {p0, p1}, Lio/vanta/core/system/notification/BNotificationManagerService;->resetNotificationGroup(Landroid/app/NotificationChannelGroup;)V

    .line 146
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 147
    iget-object v0, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter v0

    .line 148
    :try_start_25
    iget-object p2, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;I)V
    .registers 5

    .line 121
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 122
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 125
    :cond_f
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 126
    iget-object v1, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter v1

    .line 127
    :try_start_1a
    iget-object v0, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_31

    .line 129
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 132
    :cond_31
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw p1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;I)V
    .registers 5

    .line 155
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 156
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 159
    :cond_f
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter v1

    .line 161
    :try_start_1a
    iget-object v0, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    if-eqz p1, :cond_31

    .line 163
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 166
    :cond_31
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw p1
.end method

.method public deletePackageNotification(Ljava/lang/String;I)V
    .registers 7

    .line 257
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 258
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 259
    iget-object v1, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 260
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_14

    .line 263
    :cond_2e
    iget-object v1, v0, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 264
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_38

    .line 268
    :cond_52
    iget-object v0, v0, Lio/vanta/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 269
    iget-object v2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_58

    .line 271
    :cond_6e
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->removeNotificationRecord(Ljava/lang/String;I)V

    return-void
.end method

.method public enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;I)V
    .registers 7

    .line 171
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 174
    :cond_f
    invoke-virtual {p2}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p1, v0}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationId(IILjava/lang/String;)I

    move-result p1

    .line 176
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 177
    invoke-static {p3}, Lvanta/android/app/BRNotificationO;->get(Ljava/lang/Object;)Lvanta/android/app/NotificationOContext;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Lvanta/android/app/NotificationOContext;->_check_mChannelId()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 180
    invoke-interface {v0}, Lvanta/android/app/NotificationOContext;->mChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Lvanta/android/app/NotificationOContext;->_set_mChannelId(Ljava/lang/Object;)V

    .line 184
    :cond_32
    invoke-interface {v0}, Lvanta/android/app/NotificationOContext;->_check_mGroupKey()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 185
    invoke-interface {v0}, Lvanta/android/app/NotificationOContext;->mGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lio/vanta/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Lvanta/android/app/NotificationOContext;->_set_mGroupKey(Ljava/lang/Object;)V

    .line 189
    :cond_43
    invoke-virtual {p2}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 190
    iget-object p4, p2, Lio/vanta/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    monitor-enter p4

    .line 191
    :try_start_4e
    iget-object p2, p2, Lio/vanta/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit p4
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_5e

    .line 193
    iget-object p2, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_5e
    move-exception p1

    .line 192
    :try_start_5f
    monitor-exit p4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public getNotificationChannel(Ljava/lang/String;I)Landroid/app/NotificationChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 76
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_10
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 80
    iget-object v0, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_1b
    iget-object p2, p2, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p1

    .line 82
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p1

    .line 96
    iget-object p2, p1, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter p2

    .line 97
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2

    return-object v0

    :catchall_14
    move-exception p1

    .line 98
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getNotificationChannels(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Lio/vanta/core/system/notification/NotificationRecord;

    move-result-object p1

    .line 88
    iget-object p2, p1, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter p2

    .line 89
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lio/vanta/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2

    return-object v0

    :catchall_14
    move-exception p1

    .line 90
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public systemReady()V
    .registers 2

    .line 49
    invoke-static {}, Lio/vanta/core/system/notification/NotificationChannelManager;->get()Lio/vanta/core/system/notification/NotificationChannelManager;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/notification/BNotificationManagerService;->mNotificationChannelManager:Lio/vanta/core/system/notification/NotificationChannelManager;

    return-void
.end method
