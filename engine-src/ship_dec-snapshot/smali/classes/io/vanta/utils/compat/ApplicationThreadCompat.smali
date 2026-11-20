.class public Lio/vanta/utils/compat/ApplicationThreadCompat;
.super Ljava/lang/Object;
.source "ApplicationThreadCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .line 12
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lvanta/android/app/BRIApplicationThreadOreoStub;->get()Lvanta/android/app/IApplicationThreadOreoStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lvanta/android/app/IApplicationThreadOreoStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    invoke-static {}, Lvanta/android/app/BRApplicationThreadNative;->get()Lvanta/android/app/ApplicationThreadNativeStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lvanta/android/app/ApplicationThreadNativeStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method
