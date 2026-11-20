.class public Lio/vanta/fake/service/WorkManagerProxy$GetWorkInfos;
.super Lio/vanta/fake/hook/MethodHook;
.source "WorkManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/WorkManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkInfos"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getWorkInfos"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private createEmptyWorkInfoList()Ljava/lang/Object;
    .locals 3

    .line 233
    :try_start_0
    const-string v0, "androidx.work.WorkInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 237
    const-string v1, "WorkManagerProxy"

    const-string v2, "WorkManager: Failed to create empty work info list"

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 217
    const-string v0, "WorkManagerProxy"

    :try_start_0
    const-string v1, "WorkManager: getWorkInfos() called"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 223
    const-string p2, "WorkManager: getWorkInfos() failed, returning empty list"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-direct {p0}, Lio/vanta/fake/service/WorkManagerProxy$GetWorkInfos;->createEmptyWorkInfoList()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
