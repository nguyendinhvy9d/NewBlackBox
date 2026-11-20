.class public Lio/vanta/fake/service/IPackageManagerProxy$GetApplicationInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetApplicationInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getApplicationInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 370
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

    .line 373
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 374
    aget-object v1, p3, v1

    invoke-static {v1}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 376
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    .line 381
    :cond_1b
    :try_start_1b
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    return-object p1

    :catchall_20
    const/4 p1, 0x0

    return-object p1
.end method
