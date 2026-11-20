.class public Lio/vanta/fake/service/IActivityManagerProxy$PeekService;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeekService"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "peekService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 950
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

    .line 954
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 955
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/Intent;

    const/4 p2, 0x1

    .line 956
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 957
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object p3

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lio/vanta/fake/frameworks/BActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
