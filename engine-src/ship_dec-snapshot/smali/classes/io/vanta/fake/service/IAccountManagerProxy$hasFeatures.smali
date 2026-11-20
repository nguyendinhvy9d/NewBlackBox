.class public Lio/vanta/fake/service/IAccountManagerProxy$hasFeatures;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "hasFeatures"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "hasFeatures"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
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

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 151
    array-length p2, p3

    if-lez p2, :cond_3

    aget-object p2, p3, p1

    instance-of v0, p2, Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_3

    .line 152
    check-cast p2, Landroid/accounts/IAccountManagerResponse;

    .line 153
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p3, p3, v1

    instance-of v0, p3, Landroid/accounts/Account;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 156
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object v0

    iget-object v2, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/vanta/fake/frameworks/BAccountManager;->getAccountsAsUser(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 158
    array-length v2, v0

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 159
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, p1

    .line 166
    :goto_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v0, "booleanResult"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    :try_start_0
    invoke-interface {p2, p3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    .line 173
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
