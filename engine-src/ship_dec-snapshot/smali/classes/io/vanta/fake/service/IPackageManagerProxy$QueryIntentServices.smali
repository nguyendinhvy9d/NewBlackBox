.class public Lio/vanta/fake/service/IPackageManagerProxy$QueryIntentServices;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntentServices"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "queryIntentServices"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
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

    .line 210
    const-class v0, Landroid/content/Intent;

    invoke-static {p3, v0}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lio/vanta/fake/service/GmsCallerFix;->fixGmsComponentPkg(Landroid/content/Intent;)V

    .line 211
    const-class v1, Ljava/lang/Integer;

    invoke-static {p3, v1}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 218
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    invoke-static {v1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 228
    invoke-static {v2}, Lio/vanta/core/env/AppSystemEnv;->isOpenPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lio/vanta/core/env/AppSystemEnv;->isOpenPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    :cond_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v1, :cond_6

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :cond_6
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 237
    invoke-static {v1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method
