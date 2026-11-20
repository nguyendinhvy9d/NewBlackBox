.class public interface abstract Lvanta/nomad/runtime/VMRuntimeContext;
.super Ljava/lang/Object;
.source "VMRuntimeContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "dalvik.system.VMRuntime"
.end annotation


# virtual methods
.method public abstract _check_is64Bit()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_isJavaDebuggable()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_setTargetSdkVersion(I)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract is64Bit()Ljava/lang/Boolean;
.end method

.method public abstract isJavaDebuggable()Ljava/lang/Boolean;
.end method

.method public abstract setTargetSdkVersion(I)Ljava/lang/Void;
.end method
