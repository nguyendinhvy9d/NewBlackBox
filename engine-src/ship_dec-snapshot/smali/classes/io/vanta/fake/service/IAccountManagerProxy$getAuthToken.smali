.class public Lio/vanta/fake/service/IAccountManagerProxy$getAuthToken;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getAuthToken"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAuthToken"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 311
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

    .line 314
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 p2, 0x4

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    .line 315
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 p2, 0x5

    aget-object p2, p3, p2

    move-object v6, p2

    check-cast v6, Landroid/os/Bundle;

    .line 311
    invoke-virtual/range {v0 .. v6}, Lio/vanta/fake/frameworks/BAccountManager;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
