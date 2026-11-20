.class public Lio/vanta/fake/service/IDisplayManagerProxy$CreateVirtualDisplay;
.super Lio/vanta/fake/hook/MethodHook;
.source "IDisplayManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IDisplayManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateVirtualDisplay"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "createVirtualDisplay"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "createVirtualDisplay"

    return-object v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
