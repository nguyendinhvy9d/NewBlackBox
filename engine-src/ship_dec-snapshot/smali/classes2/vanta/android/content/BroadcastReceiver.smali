.class public interface abstract Lvanta/android/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/content/BroadcastReceiver$PendingResult;,
        Lvanta/android/content/BroadcastReceiver$PendingResultM;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.BroadcastReceiver"
.end annotation


# virtual methods
.method public abstract getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract setPendingResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.content.BroadcastReceiver$PendingResult"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
