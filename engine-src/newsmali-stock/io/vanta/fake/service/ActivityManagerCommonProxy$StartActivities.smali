.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivities;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivities"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "startActivities"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntents()I
    .registers 2

    .line 271
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivities;->getIntents()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 254
    aget-object v2, p3, v0

    move-object v5, v2

    check-cast v5, [Landroid/content/Intent;

    add-int/lit8 v2, v0, 0x2

    .line 255
    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 256
    aget-object v1, p3, v2

    move-object v7, v1

    check-cast v7, Landroid/os/IBinder;

    .line 257
    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    .line 259
    invoke-static {v5}, Lio/vanta/utils/ComponentUtils;->isSelf([Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 260
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 263
    :cond_29
    array-length p2, v5

    const/4 p3, 0x0

    :goto_2b
    if-ge p3, p2, :cond_3d

    aget-object v0, v5, p3

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    .line 266
    :cond_3d
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lio/vanta/fake/frameworks/BActivityManager;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
