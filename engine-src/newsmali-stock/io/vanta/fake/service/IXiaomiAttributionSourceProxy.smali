.class public Lio/vanta/fake/service/IXiaomiAttributionSourceProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IXiaomiAttributionSourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IXiaomiAttributionSourceProxy$FromParcel;,
        Lio/vanta/fake/service/IXiaomiAttributionSourceProxy$EnforceCallingUidAndPid;,
        Lio/vanta/fake/service/IXiaomiAttributionSourceProxy$EnforceCallingUid;,
        Lio/vanta/fake/service/IXiaomiAttributionSourceProxy$AttributionSourceConstructor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IXiaomiAttributionSourceProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 29
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result p1

    const-string p2, "IXiaomiAttributionSourceProxy"

    if-eqz p1, :cond_33

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IXiaomiAttributionSource proxy initialized for MIUI UID mismatch prevention on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (MIUI "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_33
    const-string p1, "IXiaomiAttributionSource proxy initialized for MIUI UID mismatch prevention"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
