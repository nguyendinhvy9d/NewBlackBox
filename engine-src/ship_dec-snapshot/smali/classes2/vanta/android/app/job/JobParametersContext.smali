.class public interface abstract Lvanta/android/app/job/JobParametersContext;
.super Ljava/lang/Object;
.source "JobParametersContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.app.job.JobParameters"
.end annotation


# virtual methods
.method public abstract _check_callback()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_extras()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_jobId()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_callback(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_extras(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_jobId(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract callback()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract extras()Landroid/os/PersistableBundle;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract jobId()Ljava/lang/Integer;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
