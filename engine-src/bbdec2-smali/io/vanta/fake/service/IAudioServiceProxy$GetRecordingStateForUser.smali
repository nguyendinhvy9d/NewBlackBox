.class public Lio/vanta/fake/service/IAudioServiceProxy$GetRecordingStateForUser;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAudioServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAudioServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRecordingStateForUser"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getRecordingStateForUser"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    const-string v0, "AudioServiceProxy"

    const-string v1, "AudioService: getRecordingStateForUser called, allowing"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
