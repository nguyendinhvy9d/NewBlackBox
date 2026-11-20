.class public Lio/vanta/fake/service/IUserManagerProxy$GetUserInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUserInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getUserInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
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

    .line 98
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    if-eqz p3, :cond_0

    .line 99
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    .line 100
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 102
    :cond_0
    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p2

    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p3

    invoke-interface {p3}, Lvanta/android/content/pm/UserInfoStatic;->FLAG_PRIMARY()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v0, "Nomad"

    invoke-interface {p2, p1, v0, p3}, Lvanta/android/content/pm/UserInfoStatic;->_new(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
