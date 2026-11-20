.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$getCallingPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getCallingPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getCallingPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 357
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/vanta/fake/frameworks/BActivityManager;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getCallingBUid()I

    move-result v4

    invoke-static {v3, v4}, Lio/vanta/fake/service/GmsCallerFix;->resolveCallerPkg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_0
    return-object v3
.end method
