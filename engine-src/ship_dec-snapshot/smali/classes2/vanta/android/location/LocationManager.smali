.class public interface abstract Lvanta/android/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/location/LocationManager$GnssStatusListenerTransport;,
        Lvanta/android/location/LocationManager$GnssStatusListenerTransportO;,
        Lvanta/android/location/LocationManager$GpsStatusListenerTransport;,
        Lvanta/android/location/LocationManager$GpsStatusListenerTransportOPPO_R815T;,
        Lvanta/android/location/LocationManager$GpsStatusListenerTransportSumsungS5;,
        Lvanta/android/location/LocationManager$GpsStatusListenerTransportVIVO;,
        Lvanta/android/location/LocationManager$ListenerTransport;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.location.LocationManager"
.end annotation


# virtual methods
.method public abstract mGnssNmeaListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mGnssStatusListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mGpsNmeaListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mGpsStatusListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mNmeaListeners()Ljava/util/HashMap;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mService()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
