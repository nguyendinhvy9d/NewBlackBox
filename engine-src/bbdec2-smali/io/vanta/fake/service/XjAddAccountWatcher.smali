.class public Lio/vanta/fake/service/XjAddAccountWatcher;
.super Ljava/lang/Object;
.source "XjAddAccountWatcher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static volatile sWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/app/Application;)V
    .registers 2

    if-eqz p0, :cond_a

    new-instance v0, Lio/vanta/fake/service/XjAddAccountWatcher;

    invoke-direct {v0}, Lio/vanta/fake/service/XjAddAccountWatcher;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uiflows.addaccount."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-boolean v0, Lio/vanta/fake/service/XjAddAccountWatcher;->sWatching:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    sput-boolean v0, Lio/vanta/fake/service/XjAddAccountWatcher;->sWatching:Z

    :try_start_17
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Lio/vanta/fake/service/XjAddAccountFinisher;

    invoke-direct {v1, p1, v0}, Lio/vanta/fake/service/XjAddAccountFinisher;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lio/vanta/fake/service/XjAddAccountWatcher;->sWatching:Z

    :cond_34
    :goto_34
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
