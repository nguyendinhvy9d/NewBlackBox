.class public Lio/vanta/fake/service/IStorageManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IStorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IStorageManagerProxy$mkdirs;,
        Lio/vanta/fake/service/IStorageManagerProxy$GetVolumeList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "mount"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 28
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const-string v1, "mount"

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lvanta/android/os/storage/BRIStorageManagerStub;->get()Lvanta/android/os/storage/IStorageManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v2

    invoke-interface {v2, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/storage/IStorageManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lvanta/android/os/mount/BRIMountServiceStub;->get()Lvanta/android/os/mount/IMountServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v2

    invoke-interface {v2, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/mount/IMountServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 38
    const-string p1, "mount"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IStorageManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
