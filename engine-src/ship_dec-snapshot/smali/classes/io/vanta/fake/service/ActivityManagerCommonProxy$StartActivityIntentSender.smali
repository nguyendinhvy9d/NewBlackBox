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
    .locals 0

    .line 279
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

    .line 283
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 286
    aget-object v2, p3, v1

    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 287
    check-cast v2, Landroid/content/Intent;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 291
    array-length v1, p3

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 293
    aput-object v2, p3, v3

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 297
    const-string v1, "_B_|_P_caller_pkg_"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_3
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 300
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 305
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
