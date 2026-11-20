.class public Lio/vanta/fake/service/IAudioServiceProxy$IsMicrophoneMuted;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAudioServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAudioServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsMicrophoneMuted"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "isMicrophoneMuted"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    const-string p1, "AudioServiceProxy"

    const-string p2, "AudioService: isMicrophoneMuted returning false"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
