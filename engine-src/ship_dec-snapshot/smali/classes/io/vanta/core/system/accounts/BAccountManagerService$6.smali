.class Lio/vanta/core/system/accounts/BAccountManagerService$6;
.super Lio/vanta/core/system/accounts/BAccountManagerService$Session;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/core/system/accounts/BAccountManagerService;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$6;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iput-object p9, p0, Lio/vanta/core/system/accounts/BAccountManagerService$6;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;-><init>(Lio/vanta/core/system/accounts/BAccountManagerService;Lio/vanta/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$6;->mAccountType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lio/vanta/core/system/accounts/BAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", editProperties, accountType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$6;->val$accountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
