.class public Lio/vanta/fake/service/IAccountManagerProxy$updateCredentials;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateCredentials"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "updateCredentials"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 361
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object v0

    const/4 p1, 0x0

    aget-object p2, p3, p1

    move-object v1, p2

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    const/4 p2, 0x1

    aget-object p2, p3, p2

    move-object v2, p2

    check-cast v2, Landroid/accounts/Account;

    const/4 p2, 0x2

    aget-object p2, p3, p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const/4 p2, 0x3

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    .line 364
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 p2, 0x4

    aget-object p2, p3, p2

    move-object v5, p2

    check-cast v5, Landroid/os/Bundle;

    .line 361
    invoke-virtual/range {v0 .. v5}, Lio/vanta/fake/frameworks/BAccountManager;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
