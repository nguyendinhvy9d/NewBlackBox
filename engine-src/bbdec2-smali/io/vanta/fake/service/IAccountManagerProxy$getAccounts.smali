.class public Lio/vanta/fake/service/IAccountManagerProxy$getAccounts;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getAccounts"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAccounts"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 121
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

    if-eqz p3, :cond_f

    .line 126
    array-length p1, p3

    if-lez p1, :cond_f

    const/4 p1, 0x0

    aget-object p1, p3, p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 127
    check-cast p1, Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 129
    :goto_10
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/vanta/fake/frameworks/BAccountManager;->getAccountsAsUser(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
