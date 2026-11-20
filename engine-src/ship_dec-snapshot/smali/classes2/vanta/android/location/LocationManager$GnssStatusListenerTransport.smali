.class public interface abstract Lvanta/android/location/LocationManager$GnssStatusListenerTransport;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GnssStatusListenerTransport"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.location.LocationManager$GnssStatusListenerTransport"
.end annotation


# virtual methods
.method public abstract mGpsListener()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mGpsNmeaListener()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract onFirstFix(I)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract onGnssStarted()V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract onNmeaReceived(JLjava/lang/String;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract this$0()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
