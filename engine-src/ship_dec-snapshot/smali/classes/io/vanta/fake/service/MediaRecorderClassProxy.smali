.class public Lio/vanta/fake/service/MediaRecorderClassProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "MediaRecorderClassProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/MediaRecorderClassProxy$Reset;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$Release;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$Stop;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$Start;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$Prepare;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$SetOutputFile;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$SetAudioEncoder;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$SetOutputFormat;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$SetAudioSource;,
        Lio/vanta/fake/service/MediaRecorderClassProxy$Constructor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaRecorderClassProxy"


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
