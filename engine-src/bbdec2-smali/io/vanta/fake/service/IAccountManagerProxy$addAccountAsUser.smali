.class public Lio/vanta/fake/service/IAccountManagerProxy$addAccountAsUser;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "addAccountAsUser"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "addAccountAsUser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 341
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    if-eqz p3, :cond_0

    .line 342
    array-length p2, p3

    const/4 v0, 0x6

    if-le p2, v0, :cond_0

    aget-object p2, p3, v0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 343
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    move v7, p1

    .line 345
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object v0

    const/4 p1, 0x0

    aget-object p2, p3, p1

    move-object v1, p2

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    const/4 p2, 0x1

    aget-object p2, p3, p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const/4 p2, 0x2

    aget-object p2, p3, p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const/4 p2, 0x3

    aget-object p2, p3, p2

    move-object v4, p2

    check-cast v4, [Ljava/lang/String;

    const/4 p2, 0x4

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    .line 349
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 p2, 0x5

    aget-object p2, p3, p2

    move-object v6, p2

    check-cast v6, Landroid/os/Bundle;

    .line 345
    invoke-virtual/range {v0 .. v7}, Lio/vanta/fake/frameworks/BAccountManager;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
