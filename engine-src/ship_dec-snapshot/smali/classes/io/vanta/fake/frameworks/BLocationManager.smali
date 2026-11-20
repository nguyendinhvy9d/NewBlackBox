.class public Lio/vanta/fake/frameworks/BLocationManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/location/IBLocationManagerService;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLOSE_MODE:I = 0x0

.field public static final GLOBAL_MODE:I = 0x1

.field public static final OWN_MODE:I = 0x2

.field private static final sLocationManager:Lio/vanta/fake/frameworks/BLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/vanta/fake/frameworks/BLocationManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BLocationManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BLocationManager;->sLocationManager:Lio/vanta/fake/frameworks/BLocationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static disableFakeLocation(ILjava/lang/String;)V
    .locals 2

    .line 37
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lio/vanta/fake/frameworks/BLocationManager;->setPattern(ILjava/lang/String;I)V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BLocationManager;
    .locals 1

    .line 24
    sget-object v0, Lio/vanta/fake/frameworks/BLocationManager;->sLocationManager:Lio/vanta/fake/frameworks/BLocationManager;

    return-object v0
.end method

.method public static isFakeLocationEnable()Z
    .locals 3

    .line 33
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/vanta/fake/frameworks/BLocationManager;->getPattern(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAllCell(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService;->getAllCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getCell(ILjava/lang/String;)Lio/vanta/entity/location/BCell;
    .locals 1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService;->getCell(ILjava/lang/String;)Lio/vanta/entity/location/BCell;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlobalLocation()Lio/vanta/entity/location/BLocation;
    .locals 1

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0}, Lio/vanta/core/system/location/IBLocationManagerService;->getGlobalLocation()Lio/vanta/entity/location/BLocation;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalNeighboringCell()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0}, Lio/vanta/core/system/location/IBLocationManagerService;->getGlobalNeighboringCell()Ljava/util/List;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;
    .locals 1

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNeighboringCell(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService;->getNeighboringCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPattern(ILjava/lang/String;)I
    .locals 1

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2}, Lio/vanta/core/system/location/IBLocationManagerService;->getPattern(ILjava/lang/String;)I

    move-result p1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "location_manager"

    return-object v0
.end method

.method public removeUpdates(Landroid/os/IBinder;)V
    .locals 1

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/location/IBLocationManagerService;->removeUpdates(Landroid/os/IBinder;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public requestLocationUpdates(Landroid/os/IBinder;)V
    .locals 3

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lio/vanta/core/system/location/IBLocationManagerService;->requestLocationUpdates(Landroid/os/IBinder;Ljava/lang/String;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setAllCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;)V"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/location/IBLocationManagerService;->setAllCell(ILjava/lang/String;Ljava/util/List;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setCell(ILjava/lang/String;Lio/vanta/entity/location/BCell;)V
    .locals 1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/location/IBLocationManagerService;->setCell(ILjava/lang/String;Lio/vanta/entity/location/BCell;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setGlobalAllCell(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;)V"
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/location/IBLocationManagerService;->setGlobalAllCell(Ljava/util/List;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setGlobalCell(Lio/vanta/entity/location/BCell;)V
    .locals 1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/location/IBLocationManagerService;->setGlobalCell(Lio/vanta/entity/location/BCell;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setGlobalLocation(Lio/vanta/entity/location/BLocation;)V
    .locals 1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/location/IBLocationManagerService;->setGlobalLocation(Lio/vanta/entity/location/BLocation;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setGlobalNeighboringCell(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;)V"
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1}, Lio/vanta/core/system/location/IBLocationManagerService;->setGlobalNeighboringCell(Ljava/util/List;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V
    .locals 1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/location/IBLocationManagerService;->setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/vanta/entity/location/BCell;",
            ">;)V"
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/location/IBLocationManagerService;->setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public setPattern(ILjava/lang/String;I)V
    .locals 1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BLocationManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/location/IBLocationManagerService;

    invoke-interface {v0, p1, p2, p3}, Lio/vanta/core/system/location/IBLocationManagerService;->setPattern(ILjava/lang/String;I)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
