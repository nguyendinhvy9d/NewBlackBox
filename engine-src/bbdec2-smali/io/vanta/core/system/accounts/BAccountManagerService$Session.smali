.class abstract Lio/vanta/core/system/accounts/BAccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "BAccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/accounts/BAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lio/vanta/core/system/accounts/BAccountManagerService;


# direct methods
.method public constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1654
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2

    .line 1660
    iput-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    .line 1661
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    const/4 v0, 0x0

    .line 1642
    iput v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    .line 1643
    iput v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    .line 1644
    iput v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    const/4 v1, 0x0

    .line 1646
    iput-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_1

    .line 1664
    iput-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    .line 1665
    iput-boolean p6, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 1666
    iput-object p3, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1667
    iput-object p4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 1668
    iput-boolean p5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 1669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mCreationTime:J

    .line 1670
    iput-object p7, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 1671
    iput-boolean p8, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 1672
    iput-boolean p9, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 1674
    invoke-static {p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Lio/vanta/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 1675
    :try_start_0
    invoke-static {p1}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Lio/vanta/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 1679
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1681
    :catch_0
    iput-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1682
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->binderDied()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1676
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 1663
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 9

    .line 1965
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmAuthenticatorCache(Lio/vanta/core/system/accounts/BAccountManagerService;)Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1967
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-virtual {v0, v1}, Lio/vanta/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmAuthenticatorCache(Lio/vanta/core/system/accounts/BAccountManagerService;)Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    move-result-object v0

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1970
    const-string v4, "AccountManagerService"

    if-nez v0, :cond_2

    .line 1971
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "there is no authenticator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", bailing out"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 1985
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1986
    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1990
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v0, v0, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    const-string v6, "_B_|_UserId"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1992
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "performing bindService to "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    .line 2000
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v6

    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v8, v8, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-virtual {v6, p1, v7, v1, v8}, Lio/vanta/fake/frameworks/BActivityManager;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2002
    iget-object v6, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v6}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v1

    .line 2005
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Virtual bindService failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_4
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v1}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2009
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2010
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bindService to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    return v0
.end method

.method private close()V
    .locals 3

    .line 1719
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Lio/vanta/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 1720
    :try_start_0
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v1}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Lio/vanta/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1722
    monitor-exit v0

    return-void

    .line 1724
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 1727
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1730
    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1732
    :cond_1
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->cancelTimeout()V

    .line 1733
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->unbind()V

    return-void

    :catchall_0
    move-exception v1

    .line 1724
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private unbind()V
    .locals 3

    .line 1765
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1766
    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1768
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v2, v2, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-virtual {v0, v1, v2}, Lio/vanta/fake/frameworks/BActivityManager;->unbindService(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session.bind: binding to authenticator type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Session.bind: bindToAuthenticator FAILED for type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1758
    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 1760
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Session.bind: bindToAuthenticator succeeded for type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .locals 1

    const/4 v0, 0x0

    .line 1738
    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1739
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->close()V

    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .line 1779
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmHandler(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .locals 5

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 1700
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1701
    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1703
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1705
    :try_start_0
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmPms(Lio/vanta/core/system/accounts/BAccountManagerService;)Lio/vanta/core/system/pm/BPackageManagerService;

    move-result-object v0

    iget-object v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v4, v4, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-virtual {v0, p2, p1, v1, v4}, Lio/vanta/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 1708
    :try_start_1
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v1}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 1714
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    throw p1
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 1

    .line 1688
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1693
    :cond_0
    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->close()V

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5

    .line 1942
    iget v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    .line 1943
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    const/4 v1, 0x2

    .line 1944
    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_1

    .line 1945
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1952
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1953
    const-string p2, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1957
    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1958
    const-string p1, "Session.onError: already closed"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestContinued()V
    .locals 1

    .line 1937
    iget v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 10

    .line 1835
    const-string v0, "errorCode"

    iget v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    .line 1837
    const-string v1, "accountType"

    const-string v3, "authAccount"

    if-eqz p1, :cond_8

    .line 1839
    :try_start_0
    iget-object v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    invoke-static {v4}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Lio/vanta/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    :catchall_0
    const-string v4, "booleanResult"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1845
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1846
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    .line 1848
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1849
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1850
    iget-object v7, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 1852
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1853
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1854
    iget-object v8, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 1857
    :cond_2
    iget-boolean v9, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v9, :cond_3

    if-nez v4, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 1859
    iget-boolean v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v4, :cond_8

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1860
    iget-object v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iget-object v5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v5, v5, Lio/vanta/core/system/accounts/BUserAccounts;->userId:I

    invoke-static {v4, v7, v8, v5}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$misAccountPresentForCaller(Lio/vanta/core/system/accounts/BAccountManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    .line 1862
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iget-object v5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v6}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$mupdateLastAuthenticatedTime(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    .line 1864
    :cond_6
    iget-boolean v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    .line 1867
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v2, v4}, Lio/vanta/core/system/accounts/BUserAccounts;->findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J

    move-result-wide v4

    goto :goto_2

    :cond_7
    const-wide/16 v4, -0x1

    .line 1871
    :goto_2
    const-string v2, "lastAuthenticatedTime"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1876
    :cond_8
    const-string v2, "intent"

    const-string v4, "AccountManagerService"

    if-eqz p1, :cond_9

    .line 1877
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_a

    const/high16 v6, 0x10000000

    .line 1878
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1879
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Session.onResult: KEY_INTENT found for type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)Z

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    .line 1883
    :cond_a
    :goto_3
    const-string v6, "authtoken"

    if-eqz p1, :cond_b

    .line 1884
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1885
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1886
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1888
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    :cond_b
    iget-boolean v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    .line 1895
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1896
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_4

    .line 1898
    :cond_c
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_12

    const/4 v2, 0x2

    if-nez p1, :cond_e

    .line 1903
    :try_start_1
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1904
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " calling onError() on response "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_d
    const-string p1, "null bundle returned"

    const/4 v0, 0x5

    invoke-interface {v1, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_5

    .line 1910
    :cond_e
    iget-boolean v3, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v3, :cond_f

    .line 1911
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1913
    :cond_f
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " calling onResult() on response "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v3, -0x1

    .line 1917
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_11

    if-nez v5, :cond_11

    .line 1920
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "errorMessage"

    .line 1921
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1920
    invoke-interface {v1, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_5

    .line 1923
    :cond_11
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 1928
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1929
    const-string v0, "failure while notifying response"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_5
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1784
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p2

    iput-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1785
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Session.onServiceConnected: bound to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1787
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1793
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session.onServiceConnected: SecurityException calling run() for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "security exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1794
    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session.onServiceConnected: RemoteException calling run() for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1790
    const-string p2, "remote exception"

    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    .line 1801
    iput-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1802
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1805
    :try_start_0
    const-string v0, "disconnected"

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 1808
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    const-string v0, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onTimedOut()V
    .locals 3

    .line 1819
    invoke-virtual {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1822
    :try_start_0
    const-string v1, "timeout"

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 1825
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    const-string v1, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .line 1743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session: expectLaunch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
