.class Lio/vanta/core/system/accounts/BAccountManagerService$1;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/core/system/accounts/BAccountManagerService;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 311
    iput-object p1, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iput-object p2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$opPackageName:Ljava/lang/String;

    iput-object p4, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$accountType:Ljava/lang/String;

    iput p5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$userId:I

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$response:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 316
    :cond_0
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 318
    new-array p1, v0, [Landroid/os/Parcelable;

    .line 320
    :cond_1
    array-length v1, p1

    new-array v4, v1, [Landroid/accounts/Account;

    .line 321
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 322
    aget-object v1, p1, v0

    check-cast v1, Landroid/accounts/Account;

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_2
    iget-object v2, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->this$0:Lio/vanta/core/system/accounts/BAccountManagerService;

    iget-object v3, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v5, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$opPackageName:Ljava/lang/String;

    iget-object v6, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$accountType:Ljava/lang/String;

    iget v7, p0, Lio/vanta/core/system/accounts/BAccountManagerService$1;->val$userId:I

    invoke-static/range {v2 .. v7}, Lio/vanta/core/system/accounts/BAccountManagerService;->-$$Nest$mhandleGetAccountsResult(Lio/vanta/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
