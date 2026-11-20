.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$getCallingActivity;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getCallingActivity"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getCallingActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 362
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 365
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/vanta/fake/frameworks/BActivityManager;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object v3

    :try_start_11
    invoke-virtual {v0, v1, v2}, Lio/vanta/fake/frameworks/BActivityManager;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/vanta/VantaCore;->getCallingBUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lio/vanta/fake/service/GmsCallerFix;->resolveCaller(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_1f

    :catchall_1e
    move-exception v4

    :goto_1f
    return-object v3
.end method
