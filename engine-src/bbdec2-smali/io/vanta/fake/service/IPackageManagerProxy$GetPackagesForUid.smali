.class public Lio/vanta/fake/service/IPackageManagerProxy$GetPackagesForUid;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPackagesForUid"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getPackagesForUid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 446
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 447
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v2

    if-ne v1, v2, :cond_27

    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->uidPkgs()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    return-object v3

    .line 448
    :cond_16
    invoke-static {}, Lio/vanta/app/BActivityThread;->getBUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 449
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 451
    :cond_27
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GetPackagesForUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManagerStub"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_65

    .line 453
    array-length v2, v1

    if-lez v2, :cond_65

    return-object v1

    .line 457
    :cond_65
    :try_start_65
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_6a

    return-object p1

    :catchall_6a
    if-eqz v1, :cond_6d

    goto :goto_6f

    .line 459
    :cond_6d
    new-array v1, v0, [Ljava/lang/String;

    :goto_6f
    return-object v1
.end method
