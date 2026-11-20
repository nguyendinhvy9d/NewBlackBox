.class public interface abstract Lvanta/android/app/ServiceStartArgs;
.super Ljava/lang/Object;
.source "ServiceStartArgs.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.ServiceStartArgs"
.end annotation


# virtual methods
.method public abstract _new(ZIILandroid/content/Intent;)Lvanta/android/app/ServiceStartArgs;
    .annotation runtime Lvanta/nomadengine/annotation/BConstructor;
    .end annotation
.end method

.method public abstract args()Landroid/content/Intent;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract flags()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract startId()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract taskRemoved()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
