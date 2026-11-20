.class public Lio/vanta/fake/frameworks/BJobManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BJobManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/am/IBJobManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sJobManager:Lio/vanta/fake/frameworks/BJobManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/vanta/fake/frameworks/BJobManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BJobManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BJobManager;->sJobManager:Lio/vanta/fake/frameworks/BJobManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BJobManager;
    .locals 1

    .line 16
    sget-object v0, Lio/vanta/fake/frameworks/BJobManager;->sJobManager:Lio/vanta/fake/frameworks/BJobManager;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)I
    .locals 2

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBJobManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lio/vanta/core/system/am/IBJobManagerService;->cancel(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 2

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBJobManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/am/IBJobManagerService;->cancelAll(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "job_manager"

    return-object v0
.end method

.method public queryJobRecord(Ljava/lang/String;I)Lio/vanta/entity/JobRecord;
    .locals 2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBJobManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lio/vanta/core/system/am/IBJobManagerService;->queryJobRecord(Ljava/lang/String;II)Lio/vanta/entity/JobRecord;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public schedule(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .locals 2

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/am/IBJobManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/vanta/core/system/am/IBJobManagerService;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
