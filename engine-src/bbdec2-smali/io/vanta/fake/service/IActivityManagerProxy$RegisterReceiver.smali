.class public Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiver;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterReceiver"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "registerReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1028
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1032
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 1034
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x0

    if-ge v2, v0, :cond_15

    aget-object v4, p3, v2

    .line 1035
    instance-of v5, v4, Landroid/content/IntentFilter;

    if-eqz v5, :cond_12

    .line 1036
    check-cast v4, Landroid/content/IntentFilter;

    goto :goto_16

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    move-object v4, v3

    :goto_16
    const/4 v0, 0x2

    .line 1041
    aget-object v2, p3, v0

    if-eqz v2, :cond_38

    .line 1042
    check-cast v2, Landroid/content/IIntentReceiver;

    .line 1043
    invoke-static {v2, v4}, Lio/vanta/fake/delegate/InnerReceiverDelegate;->createProxy(Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1045
    invoke-static {v2}, Lvanta/android/app/BRLoadedApkReceiverDispatcherInnerReceiver;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;->mDispatcher()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1047
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lvanta/android/app/BRLoadedApkReceiverDispatcher;->get(Ljava/lang/Object;)Lvanta/android/app/LoadedApkReceiverDispatcherContext;

    move-result-object v2

    invoke-interface {v2, v4}, Lvanta/android/app/LoadedApkReceiverDispatcherContext;->_set_mIIntentReceiver(Ljava/lang/Object;)V

    .line 1050
    :cond_36
    aput-object v4, p3, v0

    :cond_38
    const/4 v0, 0x4

    .line 1054
    aget-object v2, p3, v0

    if-eqz v2, :cond_3f

    .line 1055
    aput-object v3, p3, v0

    .line 1058
    :cond_3f
    array-length v0, p3

    if-lez v0, :cond_60

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 1059
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 1060
    aget-object v2, p3, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1061
    const/4 v3, -0x5

    and-int/2addr v2, v3

    const/4 v3, 0x2

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1064
    :cond_60
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
