.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivityIntentSender;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivityIntentSender"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "startActivityIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 279
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

    .line 283
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    :goto_5
    array-length v2, p3

    if-ge v1, v2, :cond_14

    .line 286
    aget-object v2, p3, v1

    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_11

    .line 287
    check-cast v2, Landroid/content/Intent;

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_22

    .line 291
    array-length v1, p3

    const/4 v3, 0x3

    if-le v1, v3, :cond_22

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 293
    aput-object v2, p3, v3

    :cond_22
    if-eqz v2, :cond_3c

    if-eqz v0, :cond_2b

    .line 297
    const-string v1, "_B_|_P_caller_pkg_"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_2b
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 300
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3c

    .line 305
    :catchall_3c
    :cond_3c
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
