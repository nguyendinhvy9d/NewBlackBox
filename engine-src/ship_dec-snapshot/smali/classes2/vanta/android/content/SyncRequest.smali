.class public interface abstract Lvanta/android/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.SyncRequest"
.end annotation


# virtual methods
.method public abstract mAccountToSync()Landroid/accounts/Account;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mAuthority()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mExtras()Landroid/os/Bundle;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mIsPeriodic()Z
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mSyncFlexTimeSecs()J
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mSyncRunTimeSecs()J
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
