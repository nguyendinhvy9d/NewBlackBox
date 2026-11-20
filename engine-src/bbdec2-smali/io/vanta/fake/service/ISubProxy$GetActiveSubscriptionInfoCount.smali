.class public Lio/vanta/fake/service/ISubProxy$GetActiveSubscriptionInfoCount;
.super Lio/vanta/fake/hook/MethodHook;
.source "ISubProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ISubProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetActiveSubscriptionInfoCount"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getActiveSubscriptionInfoCount"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
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

    .line 118
    :try_start_0
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-object p1

    :catchall_8
    const/4 p1, 0x0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
