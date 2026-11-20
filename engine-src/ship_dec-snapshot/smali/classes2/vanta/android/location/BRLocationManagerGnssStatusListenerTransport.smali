.class public Lvanta/android/location/BRLocationManagerGnssStatusListenerTransport;
.super Ljava/lang/Object;
.source "BRLocationManagerGnssStatusListenerTransport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;)Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;
    .locals 2

    .line 22
    const-class v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;

    return-object p0
.end method

.method public static get()Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;
    .locals 3

    .line 13
    const-class v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;

    return-object v0
.end method

.method public static getRealClass()Ljava/lang/Class;
    .locals 1

    .line 26
    const-class v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;

    invoke-static {v0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getWithException(Ljava/lang/Object;)Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;
    .locals 2

    .line 18
    const-class v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportContext;

    return-object p0
.end method

.method public static getWithException()Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;
    .locals 3

    .line 9
    const-class v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/android/location/LocationManagerGnssStatusListenerTransportStatic;

    return-object v0
.end method
