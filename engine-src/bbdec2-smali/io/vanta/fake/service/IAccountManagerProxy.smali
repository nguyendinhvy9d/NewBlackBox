.class public Lio/vanta/fake/service/IAccountManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IAccountManagerProxy$unregisterAccountListener;,
        Lio/vanta/fake/service/IAccountManagerProxy$registerAccountListener;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsAndVisibilityForPackage;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountVisibility;,
        Lio/vanta/fake/service/IAccountManagerProxy$setAccountVisibility;,
        Lio/vanta/fake/service/IAccountManagerProxy$addAccountExplicitlyWithVisibility;,
        Lio/vanta/fake/service/IAccountManagerProxy$getPackagesAndVisibilityForAccount;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAuthTokenLabel;,
        Lio/vanta/fake/service/IAccountManagerProxy$accountAuthenticated;,
        Lio/vanta/fake/service/IAccountManagerProxy$confirmCredentialsAsUser;,
        Lio/vanta/fake/service/IAccountManagerProxy$editProperties;,
        Lio/vanta/fake/service/IAccountManagerProxy$updateCredentials;,
        Lio/vanta/fake/service/IAccountManagerProxy$addAccountAsUser;,
        Lio/vanta/fake/service/IAccountManagerProxy$addAccount;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAuthToken;,
        Lio/vanta/fake/service/IAccountManagerProxy$updateAppPermission;,
        Lio/vanta/fake/service/IAccountManagerProxy$setUserData;,
        Lio/vanta/fake/service/IAccountManagerProxy$clearPassword;,
        Lio/vanta/fake/service/IAccountManagerProxy$setPassword;,
        Lio/vanta/fake/service/IAccountManagerProxy$setAuthToken;,
        Lio/vanta/fake/service/IAccountManagerProxy$peekAuthToken;,
        Lio/vanta/fake/service/IAccountManagerProxy$invalidateAuthToken;,
        Lio/vanta/fake/service/IAccountManagerProxy$copyAccountToUser;,
        Lio/vanta/fake/service/IAccountManagerProxy$removeAccountExplicitly;,
        Lio/vanta/fake/service/IAccountManagerProxy$removeAccountAsUser;,
        Lio/vanta/fake/service/IAccountManagerProxy$addAccountExplicitly;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsAsUser;,
        Lio/vanta/fake/service/IAccountManagerProxy$hasAccountAccess;,
        Lio/vanta/fake/service/IAccountManagerProxy$hasFeatures;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsByType;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccounts;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsByFeatures;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountByTypeAndFeatures;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsByTypeForPackage;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAccountsForPackage;,
        Lio/vanta/fake/service/IAccountManagerProxy$getAuthenticatorTypes;,
        Lio/vanta/fake/service/IAccountManagerProxy$getUserData;,
        Lio/vanta/fake/service/IAccountManagerProxy$getPassword;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IAccountManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 30
    invoke-static {}, Lvanta/android/accounts/BRIAccountManagerStub;->get()Lvanta/android/accounts/IAccountManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/accounts/IAccountManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    const-string p1, "account"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IAccountManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lio/vanta/utils/compat/AccountManagerCompat;->disableAccountCaches()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAccountManagerProxy"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 1

    .line 41
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    return-void
.end method
