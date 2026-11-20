.class public Lio/vanta/core/system/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;,
        Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private final mConnectedServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningServiceRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningServicesByComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectedServices(Lio/vanta/core/system/am/ActiveServices;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServicesByComponent:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    return-void
.end method

.method private createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lio/vanta/core/system/ProcessRecord;Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;
    .registers 11

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    iget v3, p3, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {v3}, Lio/vanta/proxy/ProxyManifest;->getProxyService(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget v4, p3, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-static {p4}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lio/vanta/proxy/record/ProxyServiceRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V

    return-object v0
.end method

.method private findRunningServiceByToken(Landroid/os/IBinder;)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 3

    .line 281
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    return-object p1
.end method

.method private findRunningServiceRecord(Landroid/content/Intent;)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 4

    if-eqz p1, :cond_7

    .line 277
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/vanta/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p1

    return-object p1
.end method

.method private findRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 4

    .line 259
    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->getServiceKey(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 261
    iget-object p3, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServicesByComponent:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    if-eqz p2, :cond_11

    return-object p2

    :cond_11
    if-eqz p1, :cond_21

    .line 267
    iget-object p2, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    new-instance p3, Landroid/content/Intent$FilterComparison;

    invoke-direct {p3, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrCreateRunningServiceRecord(Landroid/content/Intent;)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 4

    if-eqz p1, :cond_7

    .line 273
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/vanta/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreateRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 5

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 244
    new-instance v0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    invoke-direct {v0}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;-><init>()V

    .line 245
    invoke-static {v0, p1}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/Intent;)V

    .line 246
    invoke-direct {p0, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->getServiceKey(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 248
    iget-object p3, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServicesByComponent:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz p1, :cond_25

    .line 251
    iget-object p2, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    new-instance p3, Landroid/content/Intent$FilterComparison;

    invoke-direct {p3, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_25
    iget-object p1, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {p1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method private getServiceKey(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 353
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 14

    .line 123
    invoke-direct {p0, p1, p3, p4}, Lio/vanta/core/system/am/ActiveServices;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-nez p3, :cond_7

    return-object p1

    .line 126
    :cond_7
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v7, -0x1

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move v6, p4

    .line 128
    invoke-virtual/range {v3 .. v8}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object p4

    if-eqz p4, :cond_70

    .line 139
    iget-object v1, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    monitor-enter v1

    .line 140
    :try_start_29
    invoke-direct {p0, p1, v0, v6}, Lio/vanta/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v2

    .line 141
    invoke-static {v2, p3}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V

    if-eqz p2, :cond_66

    .line 144
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;

    if-eqz v0, :cond_3e

    const/4 p2, 0x1

    goto :goto_5e

    .line 149
    :cond_3e
    new-instance v3, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;

    invoke-direct {v3}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;-><init>()V
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_6c

    const/4 v4, 0x0

    .line 151
    :try_start_44
    new-instance v0, Lio/vanta/core/system/am/ActiveServices$2;

    invoke-direct {v0, p0, p2}, Lio/vanta/core/system/am/ActiveServices$2;-><init>(Lio/vanta/core/system/am/ActiveServices;Landroid/os/IBinder;)V

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4c} :catch_4d
    .catchall {:try_start_44 .. :try_end_4c} :catchall_6c

    goto :goto_51

    :catch_4d
    move-exception v0

    .line 159
    :try_start_4e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    :goto_51
    invoke-static {v3, p2}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fputmIBinder(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/os/IBinder;)V

    .line 162
    invoke-static {v3, p1}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fputmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    move p2, v4

    :goto_5e
    if-nez p2, :cond_63

    .line 167
    invoke-virtual {v2}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->incrementBindCountAndGet()I

    .line 169
    :cond_63
    invoke-static {v2, v0}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmConnectedServiceRecord(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)V

    .line 171
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_6c

    .line 172
    invoke-direct {p0, p1, p3, p4, v2}, Lio/vanta/core/system/am/ActiveServices;->createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lio/vanta/core/system/ProcessRecord;Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :catchall_6c
    move-exception v0

    move-object p1, v0

    .line 171
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6c

    throw p1

    .line 135
    :cond_70
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to create "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRunningServiceInfo(Ljava/lang/String;I)Lio/vanta/entity/am/RunningServiceInfo;
    .registers 11

    .line 286
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 289
    :try_start_10
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    goto :goto_16

    :catchall_15
    move-object v0, v2

    .line 292
    :goto_16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_39

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v3, :cond_21

    .line 296
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 301
    :cond_39
    new-instance v0, Lio/vanta/entity/am/RunningServiceInfo;

    invoke-direct {v0}, Lio/vanta/entity/am/RunningServiceInfo;-><init>()V

    .line 302
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServicesByComponent:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 303
    iget-object v4, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catchall_56
    :cond_56
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    if-nez v4, :cond_65

    goto :goto_56

    .line 307
    :cond_65
    invoke-static {v4}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_80

    .line 308
    invoke-static {v4}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 310
    :try_start_71
    invoke-static {v4}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6, v2, p2}, Lio/vanta/core/system/am/ActiveServices;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 312
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 313
    invoke-static {v4, v5}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_80

    :catchall_80
    :cond_80
    if-eqz v5, :cond_56

    .line 318
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_56

    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_56

    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_8f

    goto :goto_56

    .line 321
    :cond_8f
    :try_start_8f
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v4

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1, v6, p2}, Lio/vanta/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v4

    if-nez v4, :cond_9c

    goto :goto_56

    .line 324
    :cond_9c
    iget v6, v4, Lio/vanta/core/system/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v6, :cond_56

    .line 326
    iget-object v4, v4, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v4, v6, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 327
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 328
    iget-object v4, v0, Lio/vanta/entity/am/RunningServiceInfo;->mRunningServiceInfoList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catchall {:try_start_8f .. :try_end_be} :catchall_56

    goto :goto_56

    :cond_bf
    return-object v0
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_30

    .line 202
    :cond_3
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object v0

    .line 203
    iget-object v1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_d

    .line 204
    iget-object p1, v0, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 206
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 208
    iget-object v1, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServicesByComponent:Ljava/util/Map;

    invoke-direct {p0, v0, p2}, Lio/vanta/core/system/am/ActiveServices;->getServiceKey(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1c
    iget-object p2, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    if-eqz p1, :cond_30

    .line 212
    iget-object p2, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    return-void
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Lio/vanta/entity/UnbindRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 219
    :cond_4
    invoke-static {p1}, Lio/vanta/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyServiceRecord;

    move-result-object p1

    .line 220
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_13

    iget-object v1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    .line 222
    :goto_14
    iget-object p1, p1, Lio/vanta/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v1, p2}, Lio/vanta/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p1

    if-nez p1, :cond_1d

    return-object v0

    .line 225
    :cond_1d
    new-instance p2, Lio/vanta/entity/UnbindRecord;

    invoke-direct {p2}, Lio/vanta/entity/UnbindRecord;-><init>()V

    .line 226
    invoke-virtual {p2, v1}, Lio/vanta/entity/UnbindRecord;->setComponentName(Landroid/content/ComponentName;)V

    .line 227
    invoke-static {p1}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/vanta/entity/UnbindRecord;->setBindCount(I)V

    .line 228
    invoke-static {p1}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/vanta/entity/UnbindRecord;->setStartId(I)V

    return-object p2
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 7

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 341
    :cond_8
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lio/vanta/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_1b

    return-object v0

    .line 345
    :cond_1b
    :try_start_1b
    iget-object p2, p2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {p2, p1}, Lio/vanta/core/IBActivityThread;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    .line 347
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)V
    .registers 14

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startService: intent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolvedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqFg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActiveServices"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1, p2, p4}, Lio/vanta/core/system/am/ActiveServices;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_4b

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "startService: resolveService returned null for intent="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_4b
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startService: resolved service="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " process="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object p4

    if-eqz p4, :cond_b2

    .line 61
    invoke-direct {p0, p1, v0, v6}, Lio/vanta/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v0

    .line 62
    invoke-static {v0, p2}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V

    .line 64
    invoke-virtual {v0}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->getAndIncrementStartId()I

    .line 65
    invoke-direct {p0, p1, p2, p4, v0}, Lio/vanta/core/system/am/ActiveServices;->createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lio/vanta/core/system/ProcessRecord;Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    new-instance p2, Ljava/lang/Thread;

    new-instance p4, Lio/vanta/core/system/am/ActiveServices$1;

    invoke-direct {p4, p0, p1, p3}, Lio/vanta/core/system/am/ActiveServices$1;-><init>(Lio/vanta/core/system/am/ActiveServices;Landroid/content/Intent;Z)V

    invoke-direct {p2, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 59
    :cond_b2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to create "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 13

    .line 93
    iget-object v1, p0, Lio/vanta/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    monitor-enter v1

    .line 94
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 95
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1b

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 97
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    :goto_1f
    invoke-direct {p0, p1, v0, p3}, Lio/vanta/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_28

    .line 100
    monitor-exit v1

    return v2

    .line 102
    :cond_28
    invoke-static {v0}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_3b

    .line 103
    const-string p1, "ActiveServices"

    const-string p2, "There are also connections"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit v1

    return v2

    .line 106
    :cond_3b
    invoke-static {v0}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-nez p2, :cond_46

    .line 108
    monitor-exit v1

    return v2

    .line 109
    :cond_46
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 110
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v7, -0x1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_5e

    .line 112
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_65

    return v2

    .line 115
    :cond_5e
    :try_start_5e
    iget-object p2, p2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {p2, p1}, Lio/vanta/core/IBActivityThread;->stopService(Landroid/content/Intent;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_65

    .line 118
    :catch_63
    :try_start_63
    monitor-exit v1

    return v2

    :catchall_65
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_65

    throw p1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .registers 4

    .line 190
    invoke-direct {p0, p2}, Lio/vanta/core/system/am/ActiveServices;->findRunningServiceByToken(Landroid/os/IBinder;)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 192
    invoke-static {p1}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lio/vanta/core/system/am/ActiveServices;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    :cond_e
    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 7

    .line 176
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;

    if-nez v0, :cond_b

    return-void

    .line 180
    :cond_b
    invoke-static {v0}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;

    move-result-object v1

    .line 182
    invoke-static {v0}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    invoke-static {v0}, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v3

    .line 180
    :goto_20
    invoke-direct {p0, v1, v0, p2}, Lio/vanta/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/Intent;Landroid/content/ComponentName;I)Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p2

    .line 184
    invoke-static {p2, v3}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmConnectedServiceRecord(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)V

    .line 185
    invoke-static {p2}, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 186
    iget-object p2, p0, Lio/vanta/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
