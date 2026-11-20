.class Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;
.super Landroid/content/ContextWrapper;
.source "AppServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/app/dispatcher/AppServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticatorContextWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 428
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isAccountPerm(Ljava/lang/String;)Z
    .registers 3

    .line 432
    const-string v0, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.AUTHENTICATE_ACCOUNTS"

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.MANAGE_ACCOUNTS"

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.USE_CREDENTIALS"

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.READ_GSERVICES"

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.BACKUP"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.CONFIRM_FULL_BACKUP"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.permission.BACKUP_DATA"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_53

    :cond_51
    const/4 p1, 0x0

    return p1

    :cond_53
    :goto_53
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 446
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCallingOrSelfPermission: force-granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthContextWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 450
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 4

    .line 455
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCallingPermission: force-granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthContextWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 459
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 5

    .line 464
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "checkPermission: force-granting "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 468
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 473
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSelfPermission: force-granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthContextWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 477
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 482
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 483
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "enforceCallingOrSelfPermission: allowing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 486
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 491
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "enforceCallingPermission: allowing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 495
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 500
    invoke-direct {p0, p1}, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorContextWrapper;->isAccountPerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "enforcePermission: allowing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 504
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContextWrapper;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
