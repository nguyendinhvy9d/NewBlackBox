.class public Lio/vanta/fake/frameworks/BUserManager;
.super Lio/vanta/fake/frameworks/BlackManager;
.source "BUserManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/fake/frameworks/BlackManager<",
        "Lio/vanta/core/system/user/IBUserManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BUserManager"

.field private static final sUserManager:Lio/vanta/fake/frameworks/BUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/vanta/fake/frameworks/BUserManager;

    invoke-direct {v0}, Lio/vanta/fake/frameworks/BUserManager;-><init>()V

    sput-object v0, Lio/vanta/fake/frameworks/BUserManager;->sUserManager:Lio/vanta/fake/frameworks/BUserManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/fake/frameworks/BUserManager;
    .locals 1

    .line 21
    sget-object v0, Lio/vanta/fake/frameworks/BUserManager;->sUserManager:Lio/vanta/fake/frameworks/BUserManager;

    return-object v0
.end method


# virtual methods
.method public createUser(I)Lio/vanta/core/system/user/BUserInfo;
    .locals 3

    .line 31
    const-string v0, "BUserManager"

    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v1, p1}, Lio/vanta/core/system/user/IBUserManagerService;->createUser(I)Lio/vanta/core/system/user/BUserInfo;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    const-string v1, "UserManager service is null, cannot create user"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    const-string v1, "Unexpected error in createUser"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 50
    const-string v1, "RemoteException in createUser"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 38
    const-string v2, "UserManager service died during createUser, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->clearServiceCache()V

    const-wide/16 v1, 0x64

    .line 41
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 42
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_1

    .line 44
    invoke-interface {v1, p1}, Lio/vanta/core/system/user/IBUserManagerService;->createUser(I)Lio/vanta/core/system/user/BUserInfo;

    move-result-object p1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 47
    const-string v1, "Failed to create user after retry"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteUser(I)V
    .locals 3

    .line 59
    const-string v0, "BUserManager"

    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1, p1}, Lio/vanta/core/system/user/IBUserManagerService;->deleteUser(I)V

    return-void

    .line 63
    :cond_0
    const-string v1, "UserManager service is null, cannot delete user"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 80
    const-string v1, "Unexpected error in deleteUser"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 78
    const-string v1, "RemoteException in deleteUser"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 66
    const-string v2, "UserManager service died during deleteUser, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->clearServiceCache()V

    const-wide/16 v1, 0x64

    .line 69
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 70
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v1, p1}, Lio/vanta/core/system/user/IBUserManagerService;->deleteUser(I)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 75
    const-string v1, "Failed to delete user after retry"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "user_manager"

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/vanta/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 86
    const-string v0, "BUserManager"

    :try_start_0
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v1}, Lio/vanta/core/system/user/IBUserManagerService;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const-string v1, "UserManager service is null, returning empty list"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    const-string v2, "Unexpected error in getUsers"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 105
    const-string v2, "RemoteException in getUsers"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 93
    const-string v2, "UserManager service died during getUsers, clearing cache and retrying"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->clearServiceCache()V

    const-wide/16 v1, 0x64

    .line 96
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    invoke-virtual {p0}, Lio/vanta/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v1}, Lio/vanta/core/system/user/IBUserManagerService;->getUsers()Ljava/util/List;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_3
    move-exception v1

    .line 102
    const-string v2, "Failed to get users after retry"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
