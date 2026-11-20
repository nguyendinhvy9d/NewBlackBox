.class public interface abstract Lvanta/android/location/LocationManager$ListenerTransport;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListenerTransport"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.location.LocationManager$GnssStatusListenerTransport"
.end annotation


# virtual methods
.method public abstract mListener()Landroid/location/LocationListener;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract onLocationChanged(Landroid/location/Location;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract onProviderDisabled(Ljava/lang/String;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract onProviderEnabled(Ljava/lang/String;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract this$0()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
