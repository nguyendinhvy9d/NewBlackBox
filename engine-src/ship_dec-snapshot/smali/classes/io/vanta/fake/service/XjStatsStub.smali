.class public Lio/vanta/fake/service/XjStatsStub;
.super Landroid/os/Binder;
.source "XjStatsStub.java"

# interfaces
.implements Lio/vanta/fake/hook/IInjectHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public injectHook()V
    .locals 2

    :try_start_0
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/ServiceManagerStatic;->sCache()Ljava/util/Map;

    move-result-object v0

    const-string v1, "statsmanager"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stats"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
