.class public Lio/vanta/utils/compat/AccountManagerCompat;
.super Ljava/lang/Object;
.source "AccountManagerCompat.java"


# static fields
.field public static final ACTION_VISIBLE_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

.field public static final CACHE_KEY_ACCOUNTS_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.accounts_data"

.field public static final CACHE_KEY_USER_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.account_user_data"

.field public static final ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String; = "androidPackageName"

.field public static final KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field public static final KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAccountCaches()V
    .locals 5

    .line 49
    :try_start_0
    const-string v0, "android.app.PropertyInvalidatedCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    const-string v1, "disableForCurrentProcess"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    const-string v1, "cache_key.system_server.accounts_data"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "cache_key.system_server.account_user_data"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static invalidateAccountCaches()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    :try_start_0
    const-string v2, "android.app.PropertyInvalidatedCache"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 30
    const-string v3, "invalidateCache"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 31
    const-string v3, "cache_key.system_server.accounts_data"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "cache_key.system_server.account_user_data"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-class v2, Landroid/accounts/AccountManager;

    const-string v3, "invalidateLocalAccountsDataCaches"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 37
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    const-class v2, Landroid/accounts/AccountManager;

    const-string v3, "invalidateLocalAccountUserDataCaches"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method
