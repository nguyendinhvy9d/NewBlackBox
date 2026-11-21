.class public Lio/vanta/core/system/accounts/BAccountManagerService;
.super Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;
.source "BAccountManagerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;
.implements Lio/vanta/core/system/pm/PackageMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;,
        Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;,
        Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lio/vanta/core/system/accounts/BAccountManagerService$RemoveAccountSession;,
        Lio/vanta/core/system/accounts/BAccountManagerService$Session;
    }
.end annotation


# static fields
.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sService:Lio/vanta/core/system/accounts/BAccountManagerService;


# instance fields
.field private final mAccountListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPms:Lio/vanta/core/system/pm/BPackageManagerService;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/accounts/BAccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenCaches:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/vanta/core/system/accounts/TokenCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserAccountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/vanta/core/system/accounts/BUserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuthenticatorCache(Lio/vanta/core/system/accounts/BAccountManagerService;)Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPms(Lio/vanta/core/system/accounts/BAccountManagerService;)Lio/vanta/core/system/pm/BPackageManagerService;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessions(Lio/vanta/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcompleteCloningAccount(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetAccountsResult(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAccountPresentForCaller(Lio/vanta/core/system/accounts/BAccountManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveAccountInternal(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->removeAccountInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateLastAuthenticatedTime(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->updateLastAuthenticatedTime(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-direct {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/accounts/BAccountManagerService;->sService:Lio/vanta/core/system/accounts/BAccountManagerService;

    const/4 v0, 0x0

    .line 82
    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lio/vanta/core/system/accounts/IBAccountManagerService$Stub;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    .line 90
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService-IA;)V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAccountListenerPackages:Ljava/util/Set;

    .line 104
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    return-void
.end method

.method private addAccountInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/vanta/core/system/accounts/BUserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "skipping since insertExtra failed for key "

    if-nez p1, :cond_0

    .line 1030
    new-instance p1, Lio/vanta/core/system/accounts/BUserAccounts;

    invoke-direct {p1}, Lio/vanta/core/system/accounts/BUserAccounts;-><init>()V

    .line 1032
    :cond_0
    iget-object v1, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1033
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1035
    const-string p1, "AccountManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1036
    monitor-exit v1

    return p1

    .line 1038
    :cond_1
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->addAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object v0

    .line 1039
    iput-object p3, v0, Lio/vanta/core/system/accounts/BAccount;->password:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 1041
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1042
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1043
    invoke-virtual {v0, v2, v3}, Lio/vanta/core/system/accounts/BAccount;->insertExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 1048
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 1049
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 1050
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1049
    invoke-direct {p0, p2, p5, p4, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILio/vanta/core/system/accounts/BUserAccounts;)Z

    goto :goto_1

    .line 1054
    :cond_3
    monitor-exit v1

    .line 1055
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 1056
    iget p1, p1, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-direct {p0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->sendAccountsChangedBroadcast(I)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1054
    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private buildChooseAccountIntent(Ljava/lang/String;[Landroid/accounts/Account;I)Landroid/content/Intent;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1222
    :try_start_0
    array-length v0, p2

    if-ne v0, v1, :cond_0

    aget-object v0, p2, v2

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 1223
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1221
    invoke-static/range {v4 .. v11}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "newChooseAccountIntent error: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AccountManagerService"

    invoke-static {v0, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    :goto_1
    if-nez p2, :cond_1

    .line 1230
    const-string v0, "com.google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1232
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gms"

    const-string v6, "com.google.android.gms.common.account.AccountPickerActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1233
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    const-string v5, "allowableAccountTypes"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    iget-object v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-virtual {v4, v0, v2, v3, p3}, Lio/vanta/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1235
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    if-nez p2, :cond_2

    .line 1241
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v2

    const-string p1, "account_types"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 1246
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method

.method private buildGoogleAddAccountIntent(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4

    .line 1604
    const-string v0, "AccountManagerService"

    const-string v1, "buildGoogleAddAccountIntent: building intent for GMS AccountIntroActivity"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1606
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.auth.uiflows.addaccount.AccountIntroActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 1611
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1614
    :cond_0
    const-string p3, "accountType"

    const-string v1, "com.google"

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 1616
    const-string p3, "authTokenType"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    .line 1619
    const-string p1, "requiredFeatures"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 1621
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;I)V
    .locals 12

    .line 901
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$8;

    iget-object v4, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v11, p2

    move-object v9, p3

    move-object/from16 v2, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lio/vanta/core/system/accounts/BAccountManagerService$8;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 939
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$8;->bind()V

    return-void
.end method

.method private dispatchManifestReceivers(Landroid/content/Intent;I)V
    .locals 5

    .line 1333
    :try_start_0
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/vanta/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 1336
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1337
    :cond_1
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p2}, Lio/vanta/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1339
    iget-object v3, v2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    if-eqz v3, :cond_0

    .line 1340
    new-instance v3, Lio/vanta/entity/am/ReceiverData;

    invoke-direct {v3}, Lio/vanta/entity/am/ReceiverData;-><init>()V

    .line 1341
    iput-object p1, v3, Lio/vanta/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 1342
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, v3, Lio/vanta/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1343
    new-instance v1, Lio/vanta/entity/am/PendingResultData;

    invoke-direct {v1}, Lio/vanta/entity/am/PendingResultData;-><init>()V

    iput-object v1, v3, Lio/vanta/entity/am/ReceiverData;->data:Lio/vanta/entity/am/PendingResultData;

    .line 1345
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {v1, v3}, Lio/vanta/core/IBActivityThread;->scheduleReceiver(Lio/vanta/entity/am/ReceiverData;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_1
    :cond_2
    return-void
.end method

.method private filterAccounts(Lio/vanta/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .locals 7

    .line 1109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1110
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 1111
    invoke-direct {p0, v4, p3, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    if-eqz p4, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1117
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1125
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array p2, v2, [Landroid/accounts/Account;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method private generateServicesMap(Ljava/util/List;Ljava/util/Map;Lio/vanta/core/system/accounts/RegisteredServicesParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;",
            ">;",
            "Lio/vanta/core/system/accounts/RegisteredServicesParser;",
            ")V"
        }
    .end annotation

    .line 1567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1568
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {p3, v1, v2, v3}, Lio/vanta/core/system/accounts/RegisteredServicesParser;->getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1572
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1574
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 1577
    :cond_1
    const-string v3, "account-authenticator"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1579
    invoke-virtual {p3, v1, v3}, Lio/vanta/core/system/accounts/RegisteredServicesParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1578
    invoke-static {v1, v3, v2}, Lio/vanta/core/system/accounts/BAccountManagerService;->parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1582
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    new-instance v3, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v1, v0}, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static get()Lio/vanta/core/system/accounts/BAccountManagerService;
    .locals 1

    .line 100
    sget-object v0, Lio/vanta/core/system/accounts/BAccountManagerService;->sService:Lio/vanta/core/system/accounts/BAccountManagerService;

    return-object v0
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)I
    .locals 1

    .line 1149
    iget-object v0, p3, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1151
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 1152
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1154
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 2

    .line 2045
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2046
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2053
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2054
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2055
    aget-object v0, v0, v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2059
    :catchall_0
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lio/vanta/core/system/accounts/BUserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1160
    invoke-virtual {p2, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getVisibility(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1170
    const-string v0, "accountType"

    const-string v1, "authAccount"

    const-string v2, "intent"

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    invoke-direct {p0, p2, p3, p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1181
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1182
    aget-object p4, p2, v3

    iget-object p4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1183
    invoke-direct {p0, p4, p2, p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->buildChooseAccountIntent(Ljava/lang/String;[Landroid/accounts/Account;I)Landroid/content/Intent;

    move-result-object p2

    .line 1182
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1184
    invoke-direct {p0, p1, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 1187
    :cond_1
    array-length p3, p2

    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 1188
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1189
    aget-object p4, p2, v3

    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    aget-object p2, p2, v3

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0, p1, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 1195
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1197
    invoke-direct {p0, p4, p2, p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->buildChooseAccountIntent(Ljava/lang/String;[Landroid/accounts/Account;I)Landroid/content/Intent;

    move-result-object p2

    .line 1196
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1198
    invoke-direct {p0, p1, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 1171
    :cond_3
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x0

    .line 1172
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-array p3, v3, [Landroid/accounts/Account;

    .line 1175
    invoke-direct {p0, p4, p3, p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->buildChooseAccountIntent(Ljava/lang/String;[Landroid/accounts/Account;I)Landroid/content/Intent;

    move-result-object p3

    .line 1174
    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1176
    invoke-direct {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1282
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1284
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private loadAccounts()V
    .locals 11

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 135
    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    const-class v3, Lio/vanta/core/system/accounts/BUserAccounts;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    .line 141
    :cond_1
    :try_start_3
    iget-object v5, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v5

    .line 142
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v6, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 143
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 144
    iget-object v8, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/vanta/core/system/accounts/BUserAccounts;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_2
    monitor-exit v5

    .line 150
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    .line 146
    :try_start_5
    monitor-exit v5

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 148
    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v3

    .line 150
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 152
    throw v3
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    .line 1202
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 1203
    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    return v2

    .line 1204
    :cond_1
    aget-object p1, p1, v1

    .line 1205
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 1206
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4

    .line 2020
    const-string v0, "AccountManagerService"

    if-nez p2, :cond_0

    .line 2021
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x2

    .line 2023
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2032
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2033
    const-string p2, "failure while notifying response"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private static parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 9

    .line 1523
    invoke-static {}, Lvanta/com/android/internal/BRRstyleable;->get()Lvanta/com/android/internal/RstyleableStatic;

    move-result-object v0

    .line 1524
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator()[I

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1526
    :try_start_0
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_accountType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_label()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1528
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_icon()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1529
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_smallIcon()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1530
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_accountPreferences()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1531
    invoke-interface {v0}, Lvanta/com/android/internal/RstyleableStatic;->AccountAuthenticator_customTokens()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1532
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1538
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    .line 1535
    :cond_0
    :try_start_1
    new-instance v1, Landroid/accounts/AuthenticatorDescription;

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 1538
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1539
    throw p1
.end method

.method private readUserDataInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1253
    :cond_0
    iget-object v0, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccountUserData(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    .line 1255
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1256
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeAccountInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .locals 1

    .line 1291
    iget-object v0, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->delAccount(Landroid/accounts/Account;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1294
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 1295
    iget p1, p1, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-direct {p0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1297
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 1298
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x3

    .line 1132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p3, :cond_0

    return-object v0

    .line 1134
    :cond_0
    invoke-virtual {p3, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 1141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x2

    .line 1143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private saveAllAccounts()V
    .locals 7

    .line 156
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 158
    new-instance v2, Landroidx/core/util/AtomicFile;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 161
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    :try_start_2
    invoke-virtual {v2}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 164
    invoke-static {v1, v5}, Lio/vanta/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 165
    invoke-virtual {v2, v5}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 170
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v6

    .line 167
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    invoke-virtual {v2, v5}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 170
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 173
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    monitor-exit v0

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    .line 170
    :goto_1
    :try_start_7
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v5, v4, v3

    invoke-static {v4}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 171
    throw v2

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    .line 173
    :try_start_8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2

    :catchall_2
    move-exception v1

    .line 175
    monitor-exit v0

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 4

    .line 1302
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-static {}, Lio/vanta/utils/compat/AccountManagerCompat;->invalidateAccountCaches()V

    .line 1305
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Lio/vanta/core/system/am/BActivityManagerService;->get()Lio/vanta/core/system/am/BActivityManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Lio/vanta/core/system/am/BActivityManagerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1308
    const-string v2, "AccountManagerService"

    const-string v3, "Failed to send BAMS broadcast"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    :goto_0
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1316
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lio/vanta/core/system/BProcessManagerService;->getProcessRecords()Ljava/util/List;

    move-result-object v1

    .line 1317
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_2
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/ProcessRecord;

    if-eqz v2, :cond_0

    .line 1318
    iget-object v3, v2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    if-eqz v3, :cond_0

    iget v3, v2, Lio/vanta/core/system/ProcessRecord;->userId:I

    if-ne v3, p1, :cond_0

    .line 1320
    :try_start_2
    iget-object v2, v2, Lio/vanta/core/system/ProcessRecord;->bActivityThread:Lio/vanta/core/IBActivityThread;

    invoke-interface {v2}, Lio/vanta/core/IBActivityThread;->notifyAccountsChanged()V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1327
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->dispatchManifestReceivers(Landroid/content/Intent;I)V

    .line 1328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->dispatchManifestReceivers(Landroid/content/Intent;I)V

    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILio/vanta/core/system/accounts/BUserAccounts;)Z
    .locals 1

    .line 1061
    iget-object v0, p4, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_0
    invoke-virtual {p4, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1064
    monitor-exit v0

    return p1

    .line 1066
    :cond_0
    iget-object p1, p1, Lio/vanta/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1067
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1068
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateLastAuthenticatedTime(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .locals 0

    .line 2040
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->updateLastAuthenticatedTime(Landroid/accounts/Account;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 791
    invoke-virtual {p0, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 794
    :cond_0
    invoke-direct {p0, p2, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->updateLastAuthenticatedTime(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p1

    return p1
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-nez p6, :cond_0

    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p6

    :goto_0
    move/from16 v0, p7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "core addAccount uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "acct"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v3

    .line 713
    new-instance v1, Lio/vanta/core/system/accounts/BAccountManagerService$4;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v14, p2

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v14}, Lio/vanta/core/system/accounts/BAccountManagerService$4;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1}, Lio/vanta/core/system/accounts/BAccountManagerService$4;->bind()V

    return-void

    .line 708
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    invoke-virtual/range {p0 .. p7}, Lio/vanta/core/system/accounts/BAccountManagerService;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 372
    invoke-virtual/range {v0 .. v5}, Lio/vanta/core/system/accounts/BAccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p1

    return p1
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 6

    .line 956
    invoke-virtual {p0, p5}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 957
    invoke-direct/range {v0 .. v5}, Lio/vanta/core/system/accounts/BAccountManagerService;->addAccountInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public clearPassword(Landroid/accounts/Account;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1, v0, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->setPassword(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v12, p3

    move/from16 v0, p4

    .line 404
    invoke-virtual {p0, v12}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 405
    invoke-virtual {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v11

    .line 406
    const-string v1, "AccountManagerService"

    if-eqz v2, :cond_1

    if-nez v11, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Copying account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$2;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p1

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v12}, Lio/vanta/core/system/accounts/BAccountManagerService$2;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lio/vanta/core/system/accounts/BUserAccounts;I)V

    .line 445
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$2;->bind()V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 408
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 409
    const-string v0, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to report error back to the client."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 767
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 768
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$6;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v9, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/accounts/BAccountManagerService$6;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$6;->bind()V

    return-void

    .line 765
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 764
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 298
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v6

    .line 301
    invoke-static {p3}, Lio/vanta/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    .line 302
    invoke-virtual {p0, v6, p2, v3, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountsFromCache(Lio/vanta/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p4

    .line 305
    invoke-direct/range {v0 .. v5}, Lio/vanta/core/system/accounts/BAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v4, p2

    move v5, p4

    .line 310
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$1;

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/vanta/core/system/accounts/BAccountManagerService$1;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    new-instance p1, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x1

    move-object v7, v3

    move-object v2, v6

    move-object v3, v0

    move v6, v5

    move-object v0, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 341
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    return-void

    .line 296
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 974
    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 975
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 976
    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 984
    :cond_1
    const-string v0, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    .line 992
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lio/vanta/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 944
    invoke-virtual {p0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p1

    if-nez p1, :cond_0

    .line 946
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 948
    :cond_0
    invoke-virtual {p1}, Lio/vanta/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 998
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 999
    iget-object v1, p3, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    iget-object v2, p3, Lio/vanta/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/accounts/BAccount;

    .line 1001
    iget-object v4, v3, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    iget-object v4, v3, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-virtual {p3, v4}, Lio/vanta/core/system/accounts/BUserAccounts;->getVisibility(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 1004
    iget-object v3, v3, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1007
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p2

    if-nez p2, :cond_0

    .line 277
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 280
    invoke-virtual {p2}, Lio/vanta/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 282
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v1, p2, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object p2, p2, Lio/vanta/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/accounts/BAccount;

    .line 285
    iget-object v3, v2, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    iget-object v2, v2, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_3
    monitor-exit v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 290
    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 349
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v2

    if-eqz p3, :cond_1

    .line 352
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 367
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    return-void

    :cond_1
    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    const/4 p1, 0x0

    .line 353
    invoke-virtual {p0, v2, v4, v7, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountsFromCache(Lio/vanta/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    .line 355
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 356
    const-string p3, "accounts"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 357
    invoke-direct {p0, v3, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v1, p0

    .line 347
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v1, p0

    .line 346
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    if-nez p3, :cond_0

    .line 257
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 259
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, p3, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object p3, p3, Lio/vanta/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/accounts/BAccount;

    if-eqz p1, :cond_2

    .line 262
    iget-object v3, v2, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    :cond_2
    iget-object v3, v2, Lio/vanta/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 264
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 265
    :cond_3
    iget-object v2, v2, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_4
    monitor-exit v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 270
    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :catchall_0
    move-exception p1

    .line 269
    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAccountsForPackage(Ljava/lang/String;II)[Landroid/accounts/Account;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p2

    if-nez p2, :cond_0

    .line 239
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 241
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v0, p2, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object p2, p2, Lio/vanta/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/accounts/BAccount;

    .line 244
    iget-object v2, v1, Lio/vanta/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 246
    :cond_2
    iget-object v1, v1, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_3
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 250
    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected getAccountsFromCache(Lio/vanta/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .locals 6

    if-eqz p2, :cond_2

    .line 1074
    iget-object v0, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    .line 1076
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 1077
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->filterAccounts(Lio/vanta/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 1078
    :cond_1
    :goto_0
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    :catchall_0
    move-exception p1

    .line 1076
    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1085
    :cond_2
    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter p2

    .line 1086
    :try_start_2
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/accounts/BUserAccounts;

    .line 1087
    invoke-virtual {v3}, Lio/vanta/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 1091
    sget-object p1, Lio/vanta/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p1

    .line 1093
    :cond_4
    new-array v0, v2, [Landroid/accounts/Account;

    .line 1095
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/accounts/BUserAccounts;

    .line 1096
    invoke-virtual {v4}, Lio/vanta/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 1097
    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1099
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1101
    :cond_5
    monitor-exit p2

    .line 1102
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1, v0, p3, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->filterAccounts(Lio/vanta/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 1101
    :try_start_3
    monitor-exit p2

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v0, p7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 550
    :goto_0
    const-string v5, "response cannot be null"

    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v4, 0x7

    .line 552
    const-string v5, "AccountManagerService"

    if-nez v10, :cond_1

    .line 553
    :try_start_0
    const-string v0, "getAuthToken called with null account"

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "account is null"

    invoke-interface {v3, v4, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-nez v11, :cond_2

    .line 558
    const-string v0, "getAuthToken called with null authTokenType"

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v0, "authTokenType is null"

    invoke-interface {v3, v4, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 563
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to report error back to the client."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 566
    :cond_2
    invoke-virtual {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v4

    .line 567
    iget-object v6, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v6, v6, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    iget-object v7, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    if-eqz v6, :cond_3

    .line 569
    iget-object v6, v6, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-boolean v6, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v6, :cond_3

    move v13, v2

    goto :goto_2

    :cond_3
    move v13, v1

    :goto_2
    if-eqz p6, :cond_4

    move-object/from16 v9, p6

    goto :goto_3

    .line 573
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v9, v1

    .line 574
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 576
    const-string v7, "androidPackageName"

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 577
    invoke-static {}, Lio/vanta/core/system/BProcessManagerService;->get()Lio/vanta/core/system/BProcessManagerService;

    move-result-object v12

    invoke-virtual {v12, v1}, Lio/vanta/core/system/BProcessManagerService;->findProcessByPid(I)Lio/vanta/core/system/ProcessRecord;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 579
    iget v6, v12, Lio/vanta/core/system/ProcessRecord;->buid:I

    .line 580
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    invoke-virtual {v12}, Lio/vanta/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 582
    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 584
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 585
    invoke-static {}, Lio/vanta/core/system/pm/BPackageManagerService;->get()Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v7

    invoke-virtual {v7, v8}, Lio/vanta/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    .line 587
    invoke-static {v0, v7}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result v6

    :cond_6
    :goto_4
    move-object v14, v8

    .line 591
    const-string v0, "callerUid"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    const-string v0, "callerPid"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_7

    .line 595
    const-string v0, "notifyOnAuthFailure"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    :cond_7
    const-string v0, "accountType"

    const-string v1, "authAccount"

    const-string v2, "authtoken"

    if-nez v13, :cond_8

    .line 601
    invoke-virtual {p0, v4, v10, v11}, Lio/vanta/core/system/accounts/BAccountManagerService;->readAuthTokenInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 603
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 604
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v2, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-direct {p0, v3, v4}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_8
    if-eqz v13, :cond_a

    .line 614
    invoke-virtual {p0, v4, v10, v11, v14}, Lio/vanta/core/system/accounts/BAccountManagerService;->readCachedTokenInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v4, 0x2

    .line 620
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 621
    const-string v4, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 624
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v2, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v3, v4}, Lio/vanta/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 632
    :cond_a
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$3;

    move-object v2, v4

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v12, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v14}, Lio/vanta/core/system/accounts/BAccountManagerService$3;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 702
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$3;->bind()V

    return-void
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 799
    :goto_0
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 800
    :goto_1
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 804
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 805
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$7;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lio/vanta/core/system/accounts/BAccountManagerService$7;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$7;->bind()V

    return-void
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v1, v1, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    .line 208
    iget-object v2, v2, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    monitor-exit v0

    .line 212
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 213
    const-string v3, "com.google"

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 220
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 223
    const-string v5, "com.google"

    iget-object v6, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    :catchall_0
    :cond_4
    :goto_2
    new-array v0, v2, [Landroid/accounts/AuthenticatorDescription;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/AuthenticatorDescription;

    return-object p1

    :catchall_1
    move-exception p1

    .line 210
    :try_start_2
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getPassword(Landroid/accounts/Account;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 180
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getPassword: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p0, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p2

    .line 187
    invoke-virtual {p0, p2, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->readPasswordInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;
    .locals 4

    .line 1271
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 1272
    :try_start_0
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/accounts/BUserAccounts;

    if-nez v1, :cond_0

    .line 1274
    new-instance v1, Lio/vanta/core/system/accounts/BUserAccounts;

    invoke-direct {v1}, Lio/vanta/core/system/accounts/BUserAccounts;-><init>()V

    iput p1, v1, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    .line 1275
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_0
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/accounts/BUserAccounts;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1278
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 192
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 193
    const-string v2, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const-string v0, "key cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 200
    invoke-direct {p0, p3, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->readUserDataInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v0

    .line 451
    iget-object v1, v0, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-object v0, v0, Lio/vanta/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/accounts/BAccount;

    .line 454
    iget-object v4, v3, Lio/vanta/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    iget-object v2, v3, Lio/vanta/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 460
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 462
    :cond_2
    monitor-exit v1

    .line 464
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter v0

    .line 465
    :try_start_1
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 466
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/accounts/TokenCache;

    .line 468
    iget-object v3, v2, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    if-ne v3, p3, :cond_3

    iget-object v2, v2, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 472
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 462
    :try_start_2
    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public loadAuthenticatorCache(Ljava/lang/String;)V
    .locals 4

    .line 1543
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1546
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    :cond_0
    iget-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    const/4 v2, -0x1

    const/16 v3, 0x80

    .line 1549
    invoke-virtual {p1, v0, v3, v2}, Lio/vanta/core/system/pm/BPackageManagerService;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    new-instance v2, Lio/vanta/core/system/accounts/RegisteredServicesParser;

    invoke-direct {v2}, Lio/vanta/core/system/accounts/RegisteredServicesParser;-><init>()V

    .line 1548
    invoke-direct {p0, p1, v0, v2}, Lio/vanta/core/system/accounts/BAccountManagerService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Lio/vanta/core/system/accounts/RegisteredServicesParser;)V

    .line 1552
    iget-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object p1, p1, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    const-string v0, "com.google"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1554
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    new-instance v1, Lio/vanta/core/system/accounts/RegisteredServicesParser;

    invoke-direct {v1}, Lio/vanta/core/system/accounts/RegisteredServicesParser;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/vanta/core/system/accounts/BAccountManagerService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Lio/vanta/core/system/accounts/RegisteredServicesParser;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public onPackageInstalled(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ZI)V
    .locals 0

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v0, "authTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 482
    :cond_0
    iget-object v0, p3, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    invoke-virtual {p3, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 484
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected readAuthTokenInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 892
    :cond_0
    iget-object v0, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    .line 894
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 895
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected readCachedTokenInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter v2

    .line 871
    :try_start_0
    iget-object v3, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 872
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 873
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/core/system/accounts/TokenCache;

    .line 875
    iget v5, v4, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    iget v6, p1, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 876
    iget-wide v5, v4, Lio/vanta/core/system/accounts/TokenCache;->expiryEpochMillis:J

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    .line 877
    iget-object p1, v4, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    monitor-exit v2

    return-object p1

    .line 879
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 883
    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 884
    monitor-exit v2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readPasswordInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1262
    :cond_0
    iget-object v1, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1263
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1265
    monitor-exit v1

    return-object v0

    .line 1266
    :cond_1
    iget-object p1, p1, Lio/vanta/core/system/accounts/BAccount;->password:Ljava/lang/String;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1267
    monitor-exit v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1014
    iget-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAccountListenerPackages:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "registerAccountListener for package: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 377
    :goto_0
    const-string v3, "account cannot be null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 378
    :goto_1
    const-string v1, "response cannot be null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 381
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v4

    .line 382
    new-instance v2, Lio/vanta/core/system/accounts/BAccountManagerService$RemoveAccountSession;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lio/vanta/core/system/accounts/BAccountManagerService$RemoveAccountSession;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v2}, Lio/vanta/core/system/accounts/BAccountManagerService$RemoveAccountSession;->bind()V

    return-void
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 388
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "removeAccountExplicitly: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 395
    const-string p1, "account is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_1
    invoke-virtual {p0, p2}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p2

    .line 399
    invoke-direct {p0, p2, p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->removeAccountInternal(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p1

    return p1
.end method

.method protected saveAuthTokenToDatabase(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 858
    :cond_0
    iget-object v0, p1, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    invoke-virtual {p1, p2}, Lio/vanta/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 861
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected saveCachedToken(Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Lio/vanta/core/system/accounts/TokenCache;

    iget v1, p1, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lio/vanta/core/system/accounts/TokenCache;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 849
    iget-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter p1

    .line 850
    :try_start_0
    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 851
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 964
    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 965
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 968
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILio/vanta/core/system/accounts/BUserAccounts;)Z

    move-result p1

    return p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    const-string v0, "authTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p4, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_0
    invoke-virtual {p4, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 498
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    invoke-virtual {p0, p3}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v1, v0, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    invoke-virtual {v0, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Lio/vanta/core/system/accounts/BAccount;

    move-result-object v0

    .line 509
    iput-object p2, v0, Lio/vanta/core/system/accounts/BAccount;->password:Ljava/lang/String;

    .line 510
    iget-object p2, v0, Lio/vanta/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 511
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 512
    monitor-exit v1

    .line 513
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter p2

    .line 514
    :try_start_1
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 515
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/accounts/TokenCache;

    .line 517
    iget-object v2, v1, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    if-ne v1, p3, :cond_1

    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 521
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 512
    :try_start_2
    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p0, p4}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p4, Lio/vanta/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    invoke-virtual {p4, p1}, Lio/vanta/core/system/accounts/BUserAccounts;->getAccountUserData(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->saveAllAccounts()V

    .line 540
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 532
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public systemReady()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService;->loadAccounts()V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mPms:Lio/vanta/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p0}, Lio/vanta/core/system/pm/BPackageManagerService;->addPackageMonitor(Lio/vanta/core/system/pm/PackageMonitor;)V

    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1022
    iget-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService;->mAccountListenerPackages:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1023
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "unregisterAccountListener for package: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 742
    invoke-static {}, Lio/vanta/core/system/accounts/BAccountManagerService;->clearCallingIdentity()J

    move/from16 v0, p6

    .line 743
    invoke-virtual {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Lio/vanta/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 744
    new-instance v0, Lio/vanta/core/system/accounts/BAccountManagerService$5;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lio/vanta/core/system/accounts/BAccountManagerService$5;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 759
    invoke-virtual {v0}, Lio/vanta/core/system/accounts/BAccountManagerService$5;->bind()V

    return-void

    .line 741
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 740
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
