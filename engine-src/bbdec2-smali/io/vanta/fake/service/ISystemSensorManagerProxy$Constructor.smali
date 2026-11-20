.class public Lio/vanta/fake/service/ISystemSensorManagerProxy$Constructor;
.super Lio/vanta/fake/hook/MethodHook;
.source "ISystemSensorManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ISystemSensorManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constructor"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "SystemSensorManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
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

    .line 43
    const-string v0, "ISystemSensorManagerProxy"

    :try_start_2
    invoke-static {p3}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInArgs([Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_9} :catch_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in SystemSensorManager constructor hook: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lio/vanta/fake/service/ISystemSensorManagerProxy;->-$$Nest$smcreateSafeSensorManager()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_26
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_54

    .line 50
    const-string p3, "Calling uid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    const-string p3, "doesn\'t match source uid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "UID mismatch in SystemSensorManager constructor, creating safe fallback: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lio/vanta/fake/service/ISystemSensorManagerProxy;->-$$Nest$smcreateSafeSensorManager()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 54
    :cond_54
    throw p1
.end method
