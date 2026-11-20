.class public Lio/vanta/fake/service/IPackageManagerProxy$ResolveService;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveService"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "resolveService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    move-object v5, v0

    invoke-static {v0}, Lio/vanta/fake/service/GmsCallerFix;->fixGmsComponentPkg(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 196
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 197
    aget-object v2, p3, v2

    invoke-static {v2}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 198
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lio/vanta/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-string v6, "resolveService-cell"

    invoke-static {v6, v5, v0}, Lio/vanta/fake/service/XjLineDiag;->xjLineLog(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Object;)V

    if-eqz v0, :cond_29

    return-object v0

    .line 202
    :cond_29
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
