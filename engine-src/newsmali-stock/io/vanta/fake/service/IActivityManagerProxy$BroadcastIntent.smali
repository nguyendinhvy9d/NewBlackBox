.class public Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntent"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "broadcastIntent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 870
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method fixBroadcastUserId([Ljava/lang/Object;)V
    .registers 5

    .line 913
    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_20

    .line 914
    :cond_4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 915
    aget-object v1, p1, v0

    .line 916
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 917
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    :cond_20
    :goto_20
    return-void
.end method

.method getIntentIndex([Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    .line 896
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 897
    aget-object v1, p1, v0

    .line 898
    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 873
    invoke-virtual {p0, p3}, Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;->getIntentIndex([Ljava/lang/Object;)I

    move-result v0

    .line 874
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    add-int/lit8 v2, v0, 0x1

    .line 875
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 876
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lio/vanta/fake/frameworks/BActivityManager;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 878
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 879
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 881
    :cond_2d
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-static {v2, v1, v3}, Lio/vanta/proxy/record/ProxyBroadcastRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 882
    aput-object v2, p3, v0

    :cond_36
    const/4 v0, 0x0

    .line 885
    :goto_37
    array-length v1, p3

    if-ge v0, v1, :cond_46

    .line 886
    aget-object v1, p3, v0

    .line 887
    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    .line 888
    aput-object v1, p3, v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 891
    :cond_46
    invoke-virtual {p0, p3}, Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;->fixBroadcastUserId([Ljava/lang/Object;)V

    .line 892
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
