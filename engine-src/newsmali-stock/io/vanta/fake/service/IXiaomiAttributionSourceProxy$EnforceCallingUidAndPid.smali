.class public Lio/vanta/fake/service/IXiaomiAttributionSourceProxy$EnforceCallingUidAndPid;
.super Lio/vanta/fake/hook/MethodHook;
.source "IXiaomiAttributionSourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IXiaomiAttributionSourceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforceCallingUidAndPid"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "enforceCallingUidAndPid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
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

    .line 86
    const-string p1, "IXiaomiAttributionSourceProxy"

    const-string p2, "Xiaomi enforceCallingUidAndPid bypassed to prevent UID mismatch crashes"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
