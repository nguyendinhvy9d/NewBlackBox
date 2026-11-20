.class public Lio/vanta/fake/service/IUserManagerProxy$getUsers;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getUsers"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getUsers"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
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

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p3

    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/pm/UserInfoStatic;->FLAG_PRIMARY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "Nomad"

    invoke-interface {p2, p3, v1, v0}, Lvanta/android/content/pm/UserInfoStatic;->_new(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
