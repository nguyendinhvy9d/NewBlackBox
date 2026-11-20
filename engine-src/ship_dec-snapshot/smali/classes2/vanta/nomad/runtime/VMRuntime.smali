.class public interface abstract Lvanta/nomad/runtime/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "dalvik.system.VMRuntime"
.end annotation


# virtual methods
.method public abstract getCurrentInstructionSet()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract getRuntime()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract is64Bit()Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract is64BitAbi(Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract isJavaDebuggable()Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract setTargetSdkVersion(I)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
