.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$StartIntentSenderForResult;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartIntentSenderForResult"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "startIntentSenderForResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 310
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

    .line 313
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
