.class public Lio/vanta/fake/service/WorkManagerProxy$CancelAllWork;
.super Lio/vanta/fake/hook/MethodHook;
.source "WorkManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WorkManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelAllWork"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "cancelAllWork"
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

    .line 171
    const-string v0, "WorkManagerProxy"

    :try_start_2
    const-string v1, "WorkManager: cancelAllWork() called"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 177
    const-string p2, "WorkManager: cancelAllWork() failed, ignoring"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
