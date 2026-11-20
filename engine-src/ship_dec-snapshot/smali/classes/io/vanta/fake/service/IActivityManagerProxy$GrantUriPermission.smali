.class public Lio/vanta/fake/service/IActivityManagerProxy$GrantUriPermission;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantUriPermission"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "grantUriPermission"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1072
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
