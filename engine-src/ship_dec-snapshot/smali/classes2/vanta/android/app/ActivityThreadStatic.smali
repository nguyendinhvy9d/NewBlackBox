.class public interface abstract Lvanta/android/app/ActivityThreadStatic;
.super Ljava/lang/Object;
.source "ActivityThreadStatic.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.app.ActivityThread"
.end annotation


# virtual methods
.method public abstract _check_currentActivityThread()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_currentApplication()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_currentPackageName()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_sPackageManager()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_sPermissionManager()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_sPackageManager(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_sPermissionManager(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract currentActivityThread()Ljava/lang/Object;
.end method

.method public abstract currentApplication()Landroid/app/Application;
.end method

.method public abstract currentPackageName()Ljava/lang/String;
.end method

.method public abstract sPackageManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract sPermissionManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
