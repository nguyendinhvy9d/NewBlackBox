.class public interface abstract Lvanta/android/app/IActivityManager;
.super Ljava/lang/Object;
.source "IActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/app/IActivityManager$ContentProviderHolder;,
        Lvanta/android/app/IActivityManager$ContentProviderHolderMIUI;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.IActivityManager"
.end annotation


# virtual methods
.method public abstract getTaskForActivity(Landroid/os/IBinder;Z)Ljava/lang/Integer;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract setRequestedOrientation(Landroid/os/IBinder;I)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract startActivities()Ljava/lang/Integer;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract startActivity(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Integer;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.app.IApplicationThread"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.app.ProfilerInfo"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
