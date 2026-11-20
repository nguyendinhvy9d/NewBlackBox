.class public Lvanta/com/android/internal/telephony/BRITelephonyStub;
.super Ljava/lang/Object;
.source "BRITelephonyStub.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;)Lvanta/com/android/internal/telephony/ITelephonyStubContext;
    .locals 2

    .line 21
    const-class v0, Lvanta/com/android/internal/telephony/ITelephonyStubContext;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/com/android/internal/telephony/ITelephonyStubContext;

    return-object p0
.end method

.method public static get()Lvanta/com/android/internal/telephony/ITelephonyStubStatic;
    .locals 3

    .line 13
    const-class v0, Lvanta/com/android/internal/telephony/ITelephonyStubStatic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/com/android/internal/telephony/ITelephonyStubStatic;

    return-object v0
.end method

.method public static getRealClass()Ljava/lang/Class;
    .locals 1

    .line 25
    const-class v0, Lvanta/com/android/internal/telephony/ITelephonyStubContext;

    invoke-static {v0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getWithException(Ljava/lang/Object;)Lvanta/com/android/internal/telephony/ITelephonyStubContext;
    .locals 2

    .line 17
    const-class v0, Lvanta/com/android/internal/telephony/ITelephonyStubContext;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/com/android/internal/telephony/ITelephonyStubContext;

    return-object p0
.end method

.method public static getWithException()Lvanta/com/android/internal/telephony/ITelephonyStubStatic;
    .locals 3

    .line 9
    const-class v0, Lvanta/com/android/internal/telephony/ITelephonyStubStatic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/com/android/internal/telephony/ITelephonyStubStatic;

    return-object v0
.end method
