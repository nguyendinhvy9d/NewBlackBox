.class public Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIntentSender"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private getIntentsIndex([Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    .line 826
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 827
    aget-object v1, p1, v0

    instance-of v1, v1, [Landroid/content/Intent;

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_e
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x6

    return p1

    :cond_16
    const/4 p1, 0x5

    return p1
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 793
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 794
    invoke-direct {p0, p3}, Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;->getIntentsIndex([Ljava/lang/Object;)I

    move-result v2

    aget-object v2, p3, v2

    check-cast v2, [Landroid/content/Intent;

    .line 795
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    move v3, v0

    .line 797
    :goto_15
    array-length v4, v2

    const/4 v5, 0x2

    if-ge v3, v4, :cond_47

    .line 798
    aget-object v4, v2, v3

    if-eq v1, v5, :cond_1e

    goto :goto_44

    .line 801
    :cond_1e
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 802
    new-instance v6, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v8

    invoke-static {v8}, Lio/vanta/proxy/ProxyManifest;->getProxyPendingActivity(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 803
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v6

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v4, v6, v7}, Lio/vanta/proxy/record/ProxyPendingRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;ILjava/lang/String;)V

    .line 804
    aput-object v5, v2, v3

    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 808
    :cond_47
    invoke-direct {p0, p3}, Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;->getIntentsIndex([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v5

    .line 810
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_6c

    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6c

    .line 811
    invoke-static {}, Lio/vanta/compat/AndroidCompatibility;->get()Lio/vanta/compat/IAndroidCompatibilityHandler;

    move-result-object v2

    aget-object v4, p3, v1

    check-cast v4, Ljava/lang/Integer;

    .line 812
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4, v3}, Lio/vanta/compat/IAndroidCompatibilityHandler;->sanitizePendingIntentFlags(IZ)I

    move-result v2

    .line 811
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    .line 814
    :cond_6c
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    if-eqz p1, :cond_9c

    .line 816
    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getCallingBUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/vanta/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 817
    array-length p3, p2

    if-ge p3, v3, :cond_8b

    .line 818
    new-array p2, v3, [Ljava/lang/String;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    .line 820
    :cond_8b
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object p3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    aget-object p2, p2, v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getCallingBUid()I

    move-result v0

    invoke-virtual {p3, v1, p2, v0}, Lio/vanta/fake/frameworks/BActivityManager;->getIntentSender(Landroid/os/IBinder;Ljava/lang/String;I)V

    :cond_9c
    return-object p1
.end method
