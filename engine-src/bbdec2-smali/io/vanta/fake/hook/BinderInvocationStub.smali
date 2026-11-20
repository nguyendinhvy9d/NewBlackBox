.class public abstract Lio/vanta/fake/hook/BinderInvocationStub;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "BinderInvocationStub.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BinderInvocationStub"


# instance fields
.field private mBaseBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 23
    iput-object p1, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    .line 55
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    .line 62
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public getExtension()Landroid/os/IBinder;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExtension called on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returning null to prevent Oplus crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderInvocationStub"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBinderAlive()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    .line 74
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_7
    return-void
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

.method public pingBinder()Z
    .registers 2

    .line 38
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method protected replaceSystemService(Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/ServiceManagerStatic;->sCache()Ljava/util/Map;

    move-result-object v0

    .line 97
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4

    .line 80
    iget-object v0, p0, Lio/vanta/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method
