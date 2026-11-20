.class public Lio/vanta/fake/service/MediaRecorderProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "MediaRecorderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/MediaRecorderProxy$SetOnInfoListener;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetOnErrorListener;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetMaxFileSize;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetMaxDuration;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetAudioEncodingBitRate;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetAudioChannels;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetAudioSamplingRate;,
        Lio/vanta/fake/service/MediaRecorderProxy$Reset;,
        Lio/vanta/fake/service/MediaRecorderProxy$Release;,
        Lio/vanta/fake/service/MediaRecorderProxy$Stop;,
        Lio/vanta/fake/service/MediaRecorderProxy$Start;,
        Lio/vanta/fake/service/MediaRecorderProxy$Prepare;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetOutputFile;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetAudioEncoder;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetOutputFormat;,
        Lio/vanta/fake/service/MediaRecorderProxy$SetAudioSource;,
        Lio/vanta/fake/service/MediaRecorderProxy$Constructor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaRecorderProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
