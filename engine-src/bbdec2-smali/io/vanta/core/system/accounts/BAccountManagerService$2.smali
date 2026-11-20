.class Lio/vanta/core/system/accounts/BAccountManagerService$2;
.super Lio/vanta/core/system/accounts/BAccountManagerService$Session;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/core/system/accounts/BAccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field final synthetic val$toAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

.field final synthetic val$userFrom:I


# direct methods
.method constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lio/vanta/core/system/accounts/BUserAccounts;I)V
    .locals 0

    .line 423
    iput-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iput-object p9, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$account:Landroid/accounts/Account;

    iput-object p10, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p11, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$toAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iput p12, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$userFrom:I

    invoke-direct/range {p0 .. p8}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 437
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    .line 438
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$toAccounts:Lio/vanta/core/system/accounts/BUserAccounts;

    iget v6, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$userFrom:I

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$mcompleteCloningAccount(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lio/vanta/core/system/accounts/BUserAccounts;I)V

    return-void

    :cond_0
    move-object v3, p1

    .line 442
    invoke-super {p0, v3}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", getAccountCredentialsForClone, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$2;->val$account:Landroid/accounts/Account;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
