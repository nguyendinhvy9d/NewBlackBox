.class public interface abstract Lvanta/android/app/Activity;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.Activity"
.end annotation


# virtual methods
.method public abstract mActivityInfo()Landroid/content/pm/ActivityInfo;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mEmbeddedID()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mFinished()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mParent()Landroid/app/Activity;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mResultCode()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mResultData()Landroid/content/Intent;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mToken()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
