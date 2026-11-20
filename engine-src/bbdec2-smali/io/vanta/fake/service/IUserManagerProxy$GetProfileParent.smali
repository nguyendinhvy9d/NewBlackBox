.class public Lio/vanta/fake/service/IUserManagerProxy$GetProfileParent;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetProfileParent"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getProfileParent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p2

    invoke-static {}, Lvanta/android/content/pm/BRUserInfo;->get()Lvanta/android/content/pm/UserInfoStatic;

    move-result-object p3

    invoke-interface {p3}, Lvanta/android/content/pm/UserInfoStatic;->FLAG_PRIMARY()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v0, "Nomad"

    invoke-interface {p1, p2, v0, p3}, Lvanta/android/content/pm/UserInfoStatic;->_new(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
