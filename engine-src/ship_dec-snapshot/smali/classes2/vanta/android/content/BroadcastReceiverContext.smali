.class public interface abstract Lvanta/android/content/BroadcastReceiverContext;
.super Ljava/lang/Object;
.source "BroadcastReceiverContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.content.BroadcastReceiver"
.end annotation


# virtual methods
.method public abstract _check_getPendingResult()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_setPendingResult(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.content.BroadcastReceiver$PendingResult"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
.end method

.method public abstract setPendingResult(Ljava/lang/Object;)Ljava/lang/Void;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.content.BroadcastReceiver$PendingResult"
        .end annotation
    .end param
.end method
