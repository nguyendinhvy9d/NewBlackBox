.class public Lio/vanta/fake/service/IActivityTaskManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IActivityTaskManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IActivityTaskManagerProxy$SetTaskDescription;
    }
.end annotation

.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "activity_task"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 28
    invoke-static {}, Lvanta/android/app/BRIActivityTaskManagerStub;->get()Lvanta/android/app/IActivityTaskManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "activity_task"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/app/IActivityTaskManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 33
    const-string p1, "activity_task"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IActivityTaskManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lvanta/android/app/BRActivityTaskManager;->get()Lvanta/android/app/ActivityTaskManagerStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityTaskManagerStatic;->getService()Ljava/lang/Object;

    .line 35
    invoke-static {}, Lvanta/android/app/BRActivityTaskManager;->get()Lvanta/android/app/ActivityTaskManagerStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityTaskManagerStatic;->IActivityTaskManagerSingleton()Ljava/lang/Object;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lvanta/android/util/BRSingleton;->get(Ljava/lang/Object;)Lvanta/android/util/SingletonContext;

    move-result-object p1

    invoke-static {}, Lvanta/android/app/BRIActivityTaskManagerStub;->get()Lvanta/android/app/IActivityTaskManagerStubStatic;

    move-result-object p2

    invoke-interface {p2, p0}, Lvanta/android/app/IActivityTaskManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    invoke-interface {p1, p2}, Lvanta/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
