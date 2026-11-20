.class public Lio/vanta/fake/service/AudioPermissionProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "AudioPermissionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/AudioPermissionProxy$IsBluetoothScoOn;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetBluetoothScoOn;,
        Lio/vanta/fake/service/AudioPermissionProxy$IsSpeakerphoneOn;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetSpeakerphoneOn;,
        Lio/vanta/fake/service/AudioPermissionProxy$IsStreamMute;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetStreamMute;,
        Lio/vanta/fake/service/AudioPermissionProxy$GetStreamMaxVolume;,
        Lio/vanta/fake/service/AudioPermissionProxy$GetStreamVolume;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetStreamVolume;,
        Lio/vanta/fake/service/AudioPermissionProxy$GetMode;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetMode;,
        Lio/vanta/fake/service/AudioPermissionProxy$AbandonAudioFocus;,
        Lio/vanta/fake/service/AudioPermissionProxy$UnregisterAudioFocusClient;,
        Lio/vanta/fake/service/AudioPermissionProxy$RegisterAudioFocusClient;,
        Lio/vanta/fake/service/AudioPermissionProxy$RequestAudioFocus;,
        Lio/vanta/fake/service/AudioPermissionProxy$GetRecordingStateForUser;,
        Lio/vanta/fake/service/AudioPermissionProxy$GetRecordingState;,
        Lio/vanta/fake/service/AudioPermissionProxy$IsRecordingActive;,
        Lio/vanta/fake/service/AudioPermissionProxy$StopRecording;,
        Lio/vanta/fake/service/AudioPermissionProxy$StartRecording;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetMicrophoneMuteForUser;,
        Lio/vanta/fake/service/AudioPermissionProxy$IsMicrophoneMutedForUser;,
        Lio/vanta/fake/service/AudioPermissionProxy$SetMicrophoneMute;,
        Lio/vanta/fake/service/AudioPermissionProxy$IsMicrophoneMuted;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioPermissionProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "audio"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 8

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "audio"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    const-string v2, "AudioPermissionProxy"

    if-nez v0, :cond_0

    .line 27
    const-string v0, "Failed to get audio service binder"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 33
    :cond_0
    :try_start_0
    const-string v3, "android.media.IAudioService$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 34
    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 35
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    const-string v3, "Successfully obtained IAudioService interface"

    invoke-static {v2, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 41
    :cond_1
    const-string v0, "Reflection succeeded but returned null interface"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 45
    const-string v3, "Failed to get IAudioService interface"

    invoke-static {v2, v3, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 52
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/AudioPermissionProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
