.class public Lio/vanta/fake/service/MediaRecorderProxy$SetMaxDuration;
.super Lio/vanta/fake/hook/MethodHook;
.source "MediaRecorderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/MediaRecorderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetMaxDuration"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setMaxDuration"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 167
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

    .line 170
    const-string v0, "MediaRecorderProxy"

    const-string v1, "MediaRecorder: setMaxDuration called, allowing"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
