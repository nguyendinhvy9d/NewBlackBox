.class public Lio/vanta/fake/service/IAttributionSourceProxy$EnforceCallingUid;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAttributionSourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAttributionSourceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforceCallingUid"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "enforceCallingUid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 108
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

    .line 113
    const-string p1, "IAttributionSourceProxy"

    const/4 p2, 0x0

    :try_start_3
    const-string p3, "Intercepting enforceCallingUid to prevent UID mismatch crashes"

    invoke-static {p1, p3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    return-object p2

    :catch_9
    move-exception p3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in enforceCallingUid hook: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method
