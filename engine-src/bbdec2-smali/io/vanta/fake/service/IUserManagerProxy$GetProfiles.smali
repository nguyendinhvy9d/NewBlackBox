.class public Lio/vanta/fake/service/IUserManagerProxy$GetProfiles;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetProfiles"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getProfiles"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    if-eqz p3, :cond_16

    .line 111
    array-length p2, p3

    if-lez p2, :cond_16

    const/4 p2, 0x0

    aget-object p2, p3, p2

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_16

    .line 112
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 114
    :cond_16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p3

    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/pm/UserInfoStatic;->FLAG_PRIMARY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "Nomad"

    invoke-interface {p3, p1, v1, v0}, Lvanta/android/content/pm/UserInfoStatic;->_new(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
