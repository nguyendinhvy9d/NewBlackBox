.class public Lio/vanta/fake/service/IActivityManagerProxy$getCurrentUserId;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getCurrentUserId"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getCurrentUserId"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1113
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1119
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
