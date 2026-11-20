.class public Lio/vanta/fake/service/IPackageManagerProxy$QueryContentProviders;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryContentProviders"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "queryContentProviders"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x2

    .line 392
    aget-object p1, p3, p1

    invoke-static {p1}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result p1

    .line 393
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p2

    .line 394
    invoke-static {}, Lio/vanta/VantaCore;->getAppProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lio/vanta/VantaCore;->getBUid()I

    move-result v0

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lio/vanta/fake/frameworks/BPackageManager;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
