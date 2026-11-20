.class public Lio/vanta/fake/service/IUserManagerProxy$IsUserAdmin;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsUserAdmin"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "isUserAdmin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 222
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 223
    array-length v0, p3

    if-lez v0, :cond_0

    aget-object p3, p3, p2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 224
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    .line 226
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
