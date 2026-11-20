.class public Lio/vanta/fake/service/IPackageManagerProxy$GetInstalledApplications;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetInstalledApplications"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getInstalledApplications"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 348
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 352
    aget-object p1, p3, p1

    invoke-static {p1}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result p1

    .line 353
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lio/vanta/fake/frameworks/BPackageManager;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
