.class public interface abstract Lvanta/android/util/SingletonContext;
.super Ljava/lang/Object;
.source "SingletonContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.util.Singleton"
.end annotation


# virtual methods
.method public abstract _check_get()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_mInstance()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_mInstance(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract mInstance()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
