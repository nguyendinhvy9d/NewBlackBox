.class public Lio/vanta/fake/service/IJobServiceProxy$ScheduleAsPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleAsPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "scheduleAsPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    move v1, v0

    .line 116
    :goto_0
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 117
    aget-object v2, p3, v1

    instance-of v3, v2, Landroid/app/job/JobInfo;

    if-eqz v3, :cond_0

    .line 118
    check-cast v2, Landroid/app/job/JobInfo;

    .line 119
    invoke-static {}, Lio/vanta/VantaCore;->getBJobManager()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/vanta/fake/frameworks/BJobManager;->schedule(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    aput-object v2, p3, v1

    goto :goto_1

    .line 123
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 124
    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 133
    const-string p2, "JobServiceStub"

    const-string p3, "scheduleAsPackage failed, fallback to 0"

    invoke-static {p2, p3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
