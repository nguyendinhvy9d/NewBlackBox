.class public Lio/vanta/fake/service/IAudioServiceProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IAudioServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IAudioServiceProxy$AbandonAudioFocus;,
        Lio/vanta/fake/service/IAudioServiceProxy$UnregisterAudioFocusClient;,
        Lio/vanta/fake/service/IAudioServiceProxy$RegisterAudioFocusClient;,
        Lio/vanta/fake/service/IAudioServiceProxy$RequestAudioFocus;,
        Lio/vanta/fake/service/IAudioServiceProxy$GetRecordingStateForUser;,
        Lio/vanta/fake/service/IAudioServiceProxy$SetMicrophoneMuteForUser;,
        Lio/vanta/fake/service/IAudioServiceProxy$IsMicrophoneMutedForUser;,
        Lio/vanta/fake/service/IAudioServiceProxy$GetRecordingState;,
        Lio/vanta/fake/service/IAudioServiceProxy$IsRecordingActive;,
        Lio/vanta/fake/service/IAudioServiceProxy$StopRecording;,
        Lio/vanta/fake/service/IAudioServiceProxy$StartRecording;,
        Lio/vanta/fake/service/IAudioServiceProxy$SetMicrophoneMute;,
        Lio/vanta/fake/service/IAudioServiceProxy$IsMicrophoneMuted;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioServiceProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
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
    .locals 9

    .line 27
    const-string v0, "android.media.IAudioService$Stub"

    const-string v1, "asInterface"

    .line 0
    const-string v2, "Failed alternative path: "

    const-string v3, "Failed Android 16+ path, trying alternative: "

    .line 27
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v4

    const-string v5, "audio"

    invoke-interface {v4, v5}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    .line 28
    const-string v6, "AudioServiceProxy"

    if-nez v4, :cond_0

    .line 29
    const-string v0, "Failed to get AUDIO_SERVICE binder"

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 39
    :cond_0
    :try_start_0
    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v7

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 41
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v3, "android.media.IAudioService"

    invoke-static {v3}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v3

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 47
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    .line 52
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    :try_start_5
    const-string v1, "Successfully obtained IAudioService interface"

    invoke-static {v6, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    check-cast v0, Landroid/os/IInterface;

    return-object v0

    .line 65
    :cond_1
    const-string v0, "Reflection succeeded but returned null interface"

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_2
    move-exception v0

    .line 55
    const-string v1, "All reflection paths failed for IAudioService"

    invoke-static {v6, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v5

    :catch_3
    move-exception v0

    .line 70
    const-string v1, "Failed to get IAudioService interface"

    invoke-static {v6, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 77
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IAudioServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
