.class public interface abstract Lvanta/android/content/BroadcastReceiver$PendingResultM;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PendingResultM"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.BroadcastReceiver$PendingResult"
.end annotation


# virtual methods
.method public abstract _new(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)Landroid/content/BroadcastReceiver$PendingResult;
    .annotation runtime Lvanta/nomadengine/annotation/BConstructor;
    .end annotation
.end method

.method public abstract mAbortBroadcast()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mFinished()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mFlags()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mInitialStickyHint()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mOrderedHint()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mResultCode()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mResultData()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mResultExtras()Landroid/os/Bundle;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mSendingUser()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mToken()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mType()I
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
