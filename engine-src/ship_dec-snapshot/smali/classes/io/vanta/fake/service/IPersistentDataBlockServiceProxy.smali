.class public Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IPersistentDataBlockServiceProxy.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "persistent_data_block"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 20
    invoke-static {}, Lvanta/android/service/persistentdata/BRIPersistentDataBlockServiceStub;->get()Lvanta/android/service/persistentdata/IPersistentDataBlockServiceStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/service/persistentdata/IPersistentDataBlockServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25
    const-string p1, "persistent_data_block"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 5

    .line 35
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 36
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "write"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 37
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 37
    new-array v3, v1, [B

    const-string v4, "read"

    invoke-direct {v0, v4, v3}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 38
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "wipe"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 39
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "getDataBlockSize"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 40
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "getMaximumDataBlockSize"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 41
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v3, "setOemUnlockEnabled"

    invoke-direct {v0, v3, v2}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 42
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "getOemUnlockEnabled"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
