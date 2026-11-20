.class public Lio/vanta/fake/service/XjAddAccountFinisher;
.super Ljava/lang/Object;
.source "XjAddAccountFinisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/app/Activity;

.field final baseline:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/fake/service/XjAddAccountFinisher;->a:Landroid/app/Activity;

    iput p2, p0, Lio/vanta/fake/service/XjAddAccountFinisher;->baseline:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_31

    :try_start_5
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v4, p0, Lio/vanta/fake/service/XjAddAccountFinisher;->a:Landroid/app/Activity;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    iget v5, p0, Lio/vanta/fake/service/XjAddAccountFinisher;->baseline:I

    if-le v4, v5, :cond_2d

    const-wide/16 v2, 0x9c4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v4, p0, Lio/vanta/fake/service/XjAddAccountFinisher;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    const-string v4, "XjAddAccountFinisher"

    const-string v5, "XJUX auto-finish add-account (account added, skip verify hang)"

    invoke-static {v4, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    goto :goto_31

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_30
    move-exception v1

    :cond_31
    :goto_31
    const/4 v0, 0x0

    sput-boolean v0, Lio/vanta/fake/service/XjAddAccountWatcher;->sWatching:Z

    return-void
.end method
