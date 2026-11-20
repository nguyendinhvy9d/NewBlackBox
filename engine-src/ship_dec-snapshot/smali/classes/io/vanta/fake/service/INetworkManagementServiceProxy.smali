.class public Lio/vanta/fake/service/INetworkManagementServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "INetworkManagementServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/INetworkManagementServiceProxy$getNetworkStatsUidDetail;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "network_management"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "network_management"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 26
    invoke-static {}, Lvanta/android/os/BRINetworkManagementServiceStub;->get()Lvanta/android/os/INetworkManagementServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "network_management"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/INetworkManagementServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 31
    const-string p1, "network_management"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/INetworkManagementServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 3

    .line 41
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 42
    new-instance v0, Lio/vanta/fake/service/base/UidMethodProxy;

    const-string v1, "setUidCleartextNetworkPolicy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/INetworkManagementServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 43
    new-instance v0, Lio/vanta/fake/service/base/UidMethodProxy;

    const-string v1, "setUidMeteredNetworkBlacklist"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/INetworkManagementServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 44
    new-instance v0, Lio/vanta/fake/service/base/UidMethodProxy;

    const-string v1, "setUidMeteredNetworkWhitelist"

    invoke-direct {v0, v1, v2}, Lio/vanta/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/INetworkManagementServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
