.class public Lio/vanta/fake/service/IMiuiSecurityManagerProxy$SetAppPrivacyStatus;
.super Lio/vanta/fake/hook/MethodHook;
.source "IMiuiSecurityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IMiuiSecurityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetAppPrivacyStatus"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setAppPrivacyStatus"
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
    array-length p1, p3

    if-lez p1, :cond_9

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string p1, "unknown"

    .line 87
    :goto_b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SetAppPrivacyStatus: Bypassing privacy status for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiSecurityManagerProxy"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
