.class public Lio/vanta/fake/service/IPackageManagerProxy$GetNameForUid;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNameForUid"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getNameForUid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lio/vanta/fake/service/GmsCallerFix;->gnuLog(ILjava/lang/String;)V

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v0

    if-ne v1, v0, :cond_1f

    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->callerPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    return-object v2
.end method
