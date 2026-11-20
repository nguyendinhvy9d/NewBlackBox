.class public Lio/vanta/fake/service/IActivityManagerProxy$GetRunningAppProcesses;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRunningAppProcesses"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getRunningAppProcesses"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 759
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

    .line 763
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lio/vanta/fake/frameworks/BActivityManager;->getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;

    move-result-object p1

    if-nez p1, :cond_18

    .line 765
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 767
    :cond_18
    iget-object p1, p1, Lio/vanta/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    return-object p1
.end method
