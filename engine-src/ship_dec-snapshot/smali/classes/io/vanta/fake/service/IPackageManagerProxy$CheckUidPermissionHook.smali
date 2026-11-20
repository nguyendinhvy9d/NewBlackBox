.class public Lio/vanta/fake/service/IPackageManagerProxy$CheckUidPermissionHook;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckUidPermissionHook"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "checkUidPermission"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 703
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 706
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 707
    check-cast v1, Ljava/lang/String;

    .line 708
    invoke-static {v1}, Lio/vanta/fake/service/IPermissionManagerProxy;->isForceGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CheckUidPermissionHook: force-granting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 710
    array-length p2, p3

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    aget-object p2, p3, v1

    goto :goto_0

    :cond_0
    const-string p2, "?"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 709
    const-string p2, "IPackageManagerProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 714
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
