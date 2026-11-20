.class public Lio/vanta/fake/service/IActivityManagerProxy$checkPermission;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkPermission"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "checkPermission"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1124
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

    .line 1127
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 1128
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
