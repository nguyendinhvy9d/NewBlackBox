.class public Lio/vanta/fake/service/IPackageManagerProxy$getComponentEnabledSetting;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getComponentEnabledSetting"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getComponentEnabledSetting"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 486
    array-length v2, p3

    if-lez v2, :cond_0

    aget-object v2, p3, v0

    instance-of v3, v2, Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 487
    check-cast v2, Landroid/content/ComponentName;

    .line 488
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v1

    .line 495
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v1
.end method
