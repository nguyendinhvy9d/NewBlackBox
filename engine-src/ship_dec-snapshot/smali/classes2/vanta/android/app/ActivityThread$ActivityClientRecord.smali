.class public interface abstract Lvanta/android/app/ActivityThread$ActivityClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityClientRecord"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.ActivityThread$ActivityClientRecord"
.end annotation


# virtual methods
.method public abstract activity()Landroid/app/Activity;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract activityInfo()Landroid/content/pm/ActivityInfo;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract intent()Landroid/content/Intent;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract isTopResumedActivity()Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mPreserveWindow()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract packageInfo()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract token()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract window()Landroid/view/Window;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
