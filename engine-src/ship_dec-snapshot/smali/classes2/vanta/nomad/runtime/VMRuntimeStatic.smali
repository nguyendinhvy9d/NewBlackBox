.class public interface abstract Lvanta/nomad/runtime/VMRuntimeStatic;
.super Ljava/lang/Object;
.source "VMRuntimeStatic.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "dalvik.system.VMRuntime"
.end annotation


# virtual methods
.method public abstract _check_getCurrentInstructionSet()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_getRuntime()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_is64BitAbi(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract getCurrentInstructionSet()Ljava/lang/String;
.end method

.method public abstract getRuntime()Ljava/lang/Object;
.end method

.method public abstract is64BitAbi(Ljava/lang/String;)Ljava/lang/Boolean;
.end method
