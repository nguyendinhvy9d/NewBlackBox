.class public interface abstract Lvanta/android/app/IApplicationThread;
.super Ljava/lang/Object;
.source "IApplicationThread.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.IApplicationThread"
.end annotation


# virtual methods
.method public abstract scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract scheduleStopService(Landroid/os/IBinder;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
