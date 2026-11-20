.class public Lio/vanta/fake/service/IMiuiSecurityManagerProxy$GetAppPrivacyStatus;
.super Lio/vanta/fake/hook/MethodHook;
.source "IMiuiSecurityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IMiuiSecurityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAppPrivacyStatus"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAppPrivacyStatus"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_9

    aget-object p1, p3, p2

    check-cast p1, Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string p1, "unknown"

    .line 98
    :goto_b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "GetAppPrivacyStatus: Returning default status for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MiuiSecurityManagerProxy"

    invoke-static {p3, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
