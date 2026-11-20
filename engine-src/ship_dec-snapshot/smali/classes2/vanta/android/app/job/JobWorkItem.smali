.class public interface abstract Lvanta/android/app/job/JobWorkItem;
.super Ljava/lang/Object;
.source "JobWorkItem.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.job.JobWorkItem"
.end annotation


# virtual methods
.method public abstract _new(Landroid/content/Intent;)Lvanta/android/app/job/JobWorkItem;
    .annotation runtime Lvanta/nomadengine/annotation/BConstructor;
    .end annotation
.end method

.method public abstract getIntent()Landroid/content/Intent;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract mDeliveryCount()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mGrants()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mWorkId()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
