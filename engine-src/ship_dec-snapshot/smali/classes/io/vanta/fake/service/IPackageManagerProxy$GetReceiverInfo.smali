.class public Lio/vanta/fake/service/IPackageManagerProxy$GetReceiverInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetReceiverInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getReceiverInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 300
    aget-object v1, p3, v1

    invoke-static {v1}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 301
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method
