.class public Lio/vanta/core/system/ProcessRecord;
.super Landroid/os/Binder;
.source "ProcessRecord.java"


# instance fields
.field public appThread:Landroid/os/IInterface;

.field public bActivityThread:Lio/vanta/core/IBActivityThread;

.field public bpid:I

.field public buid:I

.field public callingBUid:I

.field public final info:Landroid/content/pm/ApplicationInfo;

.field public initLock:Landroid/os/ConditionVariable;

.field public pid:I

.field public final processName:Ljava/lang/String;

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 30
    iput-object p1, p0, Lio/vanta/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 31
    iput-object p2, p0, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallingBUid()I
    .registers 2

    .line 35
    iget v0, p0, Lio/vanta/core/system/ProcessRecord;->callingBUid:I

    return v0
.end method

.method public getClientConfig()Lio/vanta/entity/AppConfig;
    .registers 3

    .line 48
    new-instance v0, Lio/vanta/entity/AppConfig;

    invoke-direct {v0}, Lio/vanta/entity/AppConfig;-><init>()V

    .line 49
    iget-object v1, p0, Lio/vanta/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Lio/vanta/entity/AppConfig;->processName:Ljava/lang/String;

    .line 51
    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    iput v1, v0, Lio/vanta/entity/AppConfig;->bpid:I

    .line 52
    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->buid:I

    iput v1, v0, Lio/vanta/entity/AppConfig;->buid:I

    .line 53
    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->uid:I

    iput v1, v0, Lio/vanta/entity/AppConfig;->uid:I

    .line 54
    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->callingBUid:I

    iput v1, v0, Lio/vanta/entity/AppConfig;->callingBUid:I

    .line 55
    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->userId:I

    iput v1, v0, Lio/vanta/entity/AppConfig;->userId:I

    .line 56
    iput-object p0, v0, Lio/vanta/entity/AppConfig;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lio/vanta/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .registers 2

    .line 44
    iget v0, p0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {v0}, Lio/vanta/proxy/ProxyManifest;->getProxyAuthorities(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .line 40
    iget-object v0, p0, Lio/vanta/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lio/vanta/core/system/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/vanta/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/vanta/core/system/ProcessRecord;->bpid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lio/vanta/core/system/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lio/vanta/core/system/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lio/vanta/core/system/ProcessRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public kill()V
    .registers 2

    .line 61
    iget v0, p0, Lio/vanta/core/system/ProcessRecord;->pid:I

    if-lez v0, :cond_c

    .line 63
    :try_start_4
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    return-void
.end method
