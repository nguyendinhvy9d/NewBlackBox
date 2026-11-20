.class public Lio/vanta/fake/service/IJobServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IJobServiceProxy$Enqueue;,
        Lio/vanta/fake/service/IJobServiceProxy$CancelAllInNamespace;,
        Lio/vanta/fake/service/IJobServiceProxy$CancelAll;,
        Lio/vanta/fake/service/IJobServiceProxy$Cancel;,
        Lio/vanta/fake/service/IJobServiceProxy$ScheduleAsPackage;,
        Lio/vanta/fake/service/IJobServiceProxy$Schedule;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "JobServiceStub"


# instance fields
.field private final mRawBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/IJobServiceProxy;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 29
    iput-object p1, p0, Lio/vanta/fake/service/IJobServiceProxy;->mRawBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 34
    iget-object v0, p0, Lio/vanta/fake/service/IJobServiceProxy;->mRawBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-static {}, Lvanta/android/app/job/BRIJobSchedulerStub;->get()Lvanta/android/app/job/IJobSchedulerStubStatic;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/fake/service/IJobServiceProxy;->mRawBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lvanta/android/app/job/IJobSchedulerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 40
    const-string p1, "jobscheduler"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IJobServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
