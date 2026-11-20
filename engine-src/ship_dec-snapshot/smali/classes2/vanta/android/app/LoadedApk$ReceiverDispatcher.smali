.class public interface abstract Lvanta/android/app/LoadedApk$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.LoadedApk$ReceiverDispatcher"
.end annotation


# virtual methods
.method public abstract getIIntentReceiver()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract mIIntentReceiver()Landroid/content/IIntentReceiver;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mReceiver()Landroid/content/BroadcastReceiver;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
