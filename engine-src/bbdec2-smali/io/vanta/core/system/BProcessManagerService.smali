.class public Lio/vanta/core/system/BProcessManagerService;
.super Ljava/lang/Object;
.source "BProcessManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BProcessManager"

.field public static sBProcessManagerService:Lio/vanta/core/system/BProcessManagerService;


# instance fields
.field private final mPidsSelfLocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessLock:Ljava/lang/Object;

.field private final mProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lio/vanta/core/system/BProcessManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/BProcessManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/BProcessManagerService;->sBProcessManagerService:Lio/vanta/core/system/BProcessManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    return-void
.end method

.method private attachClientL(Lio/vanta/core/system/ProcessRecord;Landroid/os/IBinder;)V
    .registers 6

    .line 170
    invoke-static {p2}, Lio/vanta/core/IBActivityThread$Stub;->asInterface(Landroid/os/IBinder;)Lio/vanta/core/IBActivityThread;

    move-result-object v0

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->kill()V

    return-void

    .line 176
    :cond_a
    :try_start_a
    new-instance v1, Lio/vanta/core/system/BProcessManagerService$1;

    invoke-direct {v1, p0, p1, p2}, Lio/vanta/core/system/BProcessManagerService$1;-><init>(Lio/vanta/core/system/BProcessManagerService;Lio/vanta/core/system/ProcessRecord;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p2

    .line 185
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    :goto_18
    iput-object v0, p1, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    .line 189
    :try_start_1a
    invoke-interface {v0}, Lio/vanta/core/IBActivityThread;->getActivityThread()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lio/vanta/utils/compat/ApplicationThreadCompat;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Lio/vanta/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p2

    .line 191
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    :goto_29
    iget-object p1, p1, Lio/vanta/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private static createProc(Lio/vanta/core/system/ProcessRecord;)V
    .registers 4

    .line 344
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {v1}, Lio/vanta/core/env/BEnvironment;->getProcDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cmdline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    :try_start_d
    iget-object p0, p0, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0}, Lio/vanta/utils/FileUtils;->writeToFile([BLjava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public static get()Lio/vanta/core/system/BProcessManagerService;
    .registers 1

    .line 46
    sget-object v0, Lio/vanta/core/system/BProcessManagerService;->sBProcessManagerService:Lio/vanta/core/system/BProcessManagerService;

    return-object v0
.end method

.method public static getPid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 330
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 331
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 333
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 334
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return p0

    :catchall_27
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2b
    const/4 p0, -0x1

    return p0
.end method

.method private static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 315
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 316
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 317
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_10

    .line 318
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eqz p0, :cond_27

    return-object p0

    .line 323
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "processName = null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getUsingBPidL()I
    .registers 4

    .line 107
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 108
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 111
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/vanta/core/system/BProcessManagerService;->parseBPid(Ljava/lang/String;)I

    move-result v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_33
    const/4 v0, 0x0

    :goto_34
    const/16 v2, 0x32

    if-ge v0, v2, :cond_46

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_45
    return v0

    :cond_46
    const/4 v0, -0x1

    return v0
.end method

.method private initAppProcessL(Lio/vanta/core/system/ProcessRecord;)Z
    .registers 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->getClientConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v2, "Nomad_client_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_Black_|_init_process_"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lio/vanta/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 159
    const-string v1, "_Black_|_client_"

    invoke-static {v0, v1}, Lio/vanta/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 160
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_46

    .line 163
    :cond_3e
    invoke-direct {p0, p1, v0}, Lio/vanta/core/system/BProcessManagerService;->attachClientL(Lio/vanta/core/system/ProcessRecord;Landroid/os/IBinder;)V

    .line 165
    invoke-static {p1}, Lio/vanta/core/system/BProcessManagerService;->createProc(Lio/vanta/core/system/ProcessRecord;)V

    const/4 p1, 0x1

    return p1

    :cond_46
    :goto_46
    const/4 p1, 0x0

    return p1
.end method

.method private parseBPid(Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 141
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 145
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2d} :catch_2e

    return p1

    :catch_2e
    :cond_2e
    return v0
.end method

.method private static removeProc(Lio/vanta/core/system/ProcessRecord;)V
    .registers 1

    .line 352
    iget p0, p0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {p0}, Lio/vanta/core/env/BEnvironment;->getProcDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    return-void
.end method


# virtual methods
.method public findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;
    .registers 6

    .line 304
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/ProcessRecord;

    .line 306
    iget v3, v2, Lio/vanta/core/system/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_9

    .line 307
    monitor-exit v0

    return-object v2

    :cond_1b
    const/4 p1, 0x0

    .line 309
    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p1

    .line 310
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;
    .registers 6

    .line 214
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    monitor-enter v0

    .line 215
    :try_start_3
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 216
    invoke-static {p3, p1}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 217
    iget-object p3, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 219
    monitor-exit v0

    return-object p1

    .line 220
    :cond_20
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/ProcessRecord;

    monitor-exit v0

    return-object p1

    :catchall_28
    move-exception p1

    .line 221
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public getBUidByPidOrPackageName(ILjava/lang/String;)I
    .registers 3

    .line 282
    invoke-virtual {p0, p1}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_f

    .line 284
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 286
    :cond_f
    iget p1, p1, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {p1}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    return p1
.end method

.method public getPackageProcessAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lio/vanta/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    monitor-enter v0

    .line 273
    :try_start_3
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 274
    iget-object p2, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_24

    .line 276
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p1

    .line 277
    :cond_24
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p2

    :catchall_2f
    move-exception p1

    .line 278
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public getProcessRecords()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v0

    .line 299
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 300
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getUserIdByCallingPid(I)I
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 294
    :cond_8
    iget p1, p1, Lio/vanta/core/system/ProcessRecord;->userId:I

    return p1
.end method

.method public killAll()V
    .registers 5

    .line 258
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_31

    .line 260
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/ProcessRecord;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2e

    .line 262
    :try_start_1d
    invoke-virtual {v3}, Lio/vanta/core/system/ProcessRecord;->kill()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_11

    goto :goto_11

    .line 265
    :cond_21
    :try_start_21
    iget-object v2, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 266
    iget-object v2, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 267
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2e

    .line 268
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_31

    return-void

    :catchall_2e
    move-exception v2

    .line 267
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v2

    :catchall_31
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public killAllByPackageName(Ljava/lang/String;)V
    .registers 9

    .line 225
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 227
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 229
    iget-object v3, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/ProcessRecord;

    .line 230
    iget v5, v4, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {v5}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result v5

    if-ne p1, v5, :cond_1b

    .line 232
    iget-object v5, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v6, v4, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v4}, Lio/vanta/core/system/ProcessRecord;->kill()V

    goto :goto_1b

    .line 237
    :cond_41
    iget-object p1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 238
    iget-object p1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4e

    .line 240
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    return-void

    :catchall_4e
    move-exception p1

    .line 239
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1

    :catchall_51
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public killPackageAsUser(Ljava/lang/String;I)V
    .registers 6

    .line 244
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 246
    iget-object p2, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1f

    .line 248
    monitor-exit v0

    return-void

    .line 249
    :cond_1f
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/ProcessRecord;

    .line 250
    invoke-virtual {v1}, Lio/vanta/core/system/ProcessRecord;->kill()V

    .line 251
    iget-object v2, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 253
    :cond_3c
    iget-object p2, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public onProcessDie(Lio/vanta/core/system/ProcessRecord;)V
    .registers 5

    .line 197
    iget-object v0, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->kill()V

    .line 199
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v2, p1, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2c

    .line 201
    iget-object v2, p1, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 203
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v2, p1, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2c
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    invoke-static {p1}, Lio/vanta/core/system/BProcessManagerService;->removeProc(Lio/vanta/core/system/ProcessRecord;)V

    .line 209
    invoke-static {}, Lio/vanta/core/system/notification/BNotificationManagerService;->get()Lio/vanta/core/system/notification/BNotificationManagerService;

    move-result-object v1

    invoke-virtual {p1}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v2, p1}, Lio/vanta/core/system/notification/BNotificationManagerService;->deletePackageNotification(Ljava/lang/String;I)V

    .line 210
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 124
    iget-object v1, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 127
    invoke-virtual {p0, v7}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_23

    .line 129
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lio/vanta/core/system/BProcessManagerService;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lio/vanta/core/system/BProcessManagerService;->parseBPid(Ljava/lang/String;)I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 131
    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;

    .line 133
    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_25

    throw p1
.end method

.method public startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Lio/vanta/core/system/ProcessRecord;
    .registers 15

    const-string v0, "init bUid = "

    .line 50
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 51
    const-string p1, "BProcessManager"

    const-string p2, "Virtual process launch blocked: License is invalid or revoked"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 54
    :cond_15
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_21

    return-object v2

    .line 58
    :cond_21
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    invoke-static {p3, v3}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result v3

    .line 59
    iget-object v4, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 60
    :try_start_30
    iget-object v5, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_43

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_43
    const/4 v6, -0x1

    if-ne p4, v6, :cond_7d

    .line 66
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/vanta/core/system/ProcessRecord;

    if-eqz p4, :cond_5d

    .line 68
    iget-object v7, p4, Lio/vanta/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    if-eqz v7, :cond_57

    .line 69
    iget-object v7, p4, Lio/vanta/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V

    .line 71
    :cond_57
    iget-object v7, p4, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    if-eqz v7, :cond_5d

    .line 72
    monitor-exit v4

    return-object p4

    .line 75
    :cond_5d
    invoke-direct {p0}, Lio/vanta/core/system/BProcessManagerService;->getUsingBPidL()I

    move-result p4

    .line 76
    const-string v7, "BProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", bPid = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    if-eq p4, v6, :cond_d8

    .line 81
    new-instance v0, Lio/vanta/core/system/ProcessRecord;

    invoke-direct {v0, v1, p2}, Lio/vanta/core/system/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Lio/vanta/core/system/ProcessRecord;->uid:I

    .line 83
    iput p4, v0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    .line 84
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object p4

    invoke-virtual {p4, p1}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p4

    iput p4, v0, Lio/vanta/core/system/ProcessRecord;->buid:I

    .line 85
    invoke-virtual {p0, p5, p1}, Lio/vanta/core/system/BProcessManagerService;->getBUidByPidOrPackageName(ILjava/lang/String;)I

    move-result p1

    iput p1, v0, Lio/vanta/core/system/ProcessRecord;->callingBUid:I

    .line 86
    iput p3, v0, Lio/vanta/core/system/ProcessRecord;->userId:I

    .line 88
    invoke-interface {v5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    monitor-enter p1
    :try_end_a9
    .catchall {:try_start_30 .. :try_end_a9} :catchall_e0

    .line 92
    :try_start_a9
    iget-object p3, p0, Lio/vanta/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_d5

    .line 94
    :try_start_b3
    invoke-direct {p0, v0}, Lio/vanta/core/system/BProcessManagerService;->initAppProcessL(Lio/vanta/core/system/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_c2

    .line 96
    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lio/vanta/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 100
    :cond_c2
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, v0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {p2}, Lio/vanta/proxy/ProxyManifest;->getProcessName(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/core/system/BProcessManagerService;->getPid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lio/vanta/core/system/ProcessRecord;->pid:I

    move-object v2, v0

    .line 102
    :goto_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_b3 .. :try_end_d4} :catchall_e0

    return-object v2

    :catchall_d5
    move-exception p2

    .line 93
    :try_start_d6
    monitor-exit p1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    :try_start_d7
    throw p2

    .line 79
    :cond_d8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No processes available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_e0
    move-exception p1

    .line 102
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_e0

    throw p1
.end method

.method public systemReady()V
    .registers 2

    .line 357
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    return-void
.end method
