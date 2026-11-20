.class public Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;
.super Lio/vanta/core/IEmpty$Stub;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningServiceRecord"
.end annotation


# instance fields
.field private final mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mConnectedServiceRecord:Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;

.field private mIntent:Landroid/content/Intent;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mStartId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBindCount(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartId(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectedServiceRecord(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)V
    .registers 2

    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mConnectedServiceRecord:Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIntent(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceInfo(Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 356
    invoke-direct {p0}, Lio/vanta/core/IEmpty$Stub;-><init>()V

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public decrementBindCountAndGet()I
    .registers 2

    .line 371
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public getAndIncrementStartId()I
    .registers 2

    .line 367
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public incrementBindCountAndGet()I
    .registers 2

    .line 375
    iget-object v0, p0, Lio/vanta/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
