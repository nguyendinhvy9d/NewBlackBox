.class public Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterReceiverWithFeature"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "registerReceiverWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 974
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionIndex()I
    .registers 2

    .line 1019
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    return v0

    :cond_8
    const/4 v0, 0x5

    return v0
.end method

.method public getReceiverIndex()I
    .registers 2

    .line 1012
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    return v0

    :cond_8
    const/4 v0, 0x3

    return v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 977
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 979
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x0

    if-ge v2, v0, :cond_15

    aget-object v4, p3, v2

    .line 980
    instance-of v5, v4, Landroid/content/IntentFilter;

    if-eqz v5, :cond_12

    .line 981
    check-cast v4, Landroid/content/IntentFilter;

    goto :goto_16

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    move-object v4, v3

    .line 985
    :goto_16
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;->getReceiverIndex()I

    move-result v0

    .line 986
    aget-object v2, p3, v0

    if-eqz v2, :cond_3b

    .line 987
    check-cast v2, Landroid/content/IIntentReceiver;

    .line 988
    invoke-static {v2, v4}, Lio/vanta/fake/delegate/InnerReceiverDelegate;->createProxy(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 990
    invoke-static {v2}, Lvanta/android/app/BRLoadedApkReceiverDispatcherInnerReceiver;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;->mDispatcher()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 992
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lvanta/android/app/BRLoadedApkReceiverDispatcher;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkReceiverDispatcherContext;

    move-result-object v2

    invoke-interface {v2, v4}, Lvanta/android/app/LoadedApkReceiverDispatcherContext;->_set_mIIntentReceiver(Ljava/lang/Object;)V

    .line 995
    :cond_39
    aput-object v4, p3, v0

    .line 998
    :cond_3b
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;->getPermissionIndex()I

    move-result v0

    aget-object v0, p3, v0

    if-eqz v0, :cond_49

    .line 999
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;->getPermissionIndex()I

    move-result v0

    aput-object v3, p3, v0

    .line 1002
    :cond_49
    array-length v0, p3

    if-lez v0, :cond_6a

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6a

    .line 1003
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 1004
    aget-object v2, p3, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1005
    const/4 v3, -0x5

    and-int/2addr v2, v3

    const/4 v3, 0x2

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1008
    :cond_6a
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
