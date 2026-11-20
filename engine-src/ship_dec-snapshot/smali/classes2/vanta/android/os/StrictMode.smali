.class public interface abstract Lvanta/android/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.os.StrictMode"
.end annotation


# virtual methods
.method public abstract DETECT_VM_FILE_URI_EXPOSURE()I
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method

.method public abstract PENALTY_DEATH_ON_FILE_URI_EXPOSURE()I
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method

.method public abstract disableDeathOnFileUriExposure()V
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract sVmPolicyMask()I
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method
