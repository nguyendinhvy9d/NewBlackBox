.class public final Lio/vanta/license/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/license/LicenseManager$Result;,
        Lio/vanta/license/LicenseManager$Callback;,
        Lio/vanta/license/LicenseManager$LicenseStateListener;
    }
.end annotation


# static fields
.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "BcoreLicense"

.field private static volatile sActiveToken:Lio/vanta/license/LicenseToken;

.field private static volatile sCachedMessage:Ljava/lang/String;

.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/license/LicenseManager$LicenseStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/vanta/license/LicenseManager;->MAIN_HANDLER:Landroid/os/Handler;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/vanta/license/LicenseManager;->sListeners:Ljava/util/List;

    .line 14
    const-string v0, "License active"

    sput-object v0, Lio/vanta/license/LicenseManager;->sCachedMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lio/vanta/license/LicenseManager;->sActiveToken:Lio/vanta/license/LicenseToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 21
    sget-object v0, Lio/vanta/license/LicenseManager;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static assertAuthorized(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static clearAuthorization(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static forceVerifyOnline(Landroid/content/Context;Ljava/lang/String;)Lio/vanta/license/LicenseManager$Result;
    .locals 6

    const/4 p0, 0x1

    .line 57
    const-string p1, "License active"

    invoke-static {p0, p1}, Lio/vanta/license/LicenseManager;->notifyListeners(ZLjava/lang/String;)V

    .line 58
    new-instance v0, Lio/vanta/license/LicenseManager$Result;

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-string v2, "License active"

    invoke-direct/range {v0 .. v5}, Lio/vanta/license/LicenseManager$Result;-><init>(ZLjava/lang/String;JZ)V

    return-object v0
.end method

.method public static getActiveToken()Lio/vanta/license/LicenseToken;
    .locals 1

    .line 70
    sget-object v0, Lio/vanta/license/LicenseManager;->sActiveToken:Lio/vanta/license/LicenseToken;

    return-object v0
.end method

.method public static getLicenseExpirationFormatted(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 94
    const-string p0, "Lifetime"

    return-object p0
.end method

.method public static getLicenseExpiresAt(Landroid/content/Context;)J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static getLicenseMessage()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "License active"

    return-object v0
.end method

.method public static getSavedLicenseKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 78
    const-string p0, "UNLIMITED"

    return-object p0
.end method

.method public static isLicenseValid(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$notifyListeners$0(ZLjava/lang/String;)V
    .locals 2

    .line 34
    sget-object v0, Lio/vanta/license/LicenseManager;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/license/LicenseManager$LicenseStateListener;

    .line 36
    :try_start_0
    invoke-interface {v1, p0, p1}, Lio/vanta/license/LicenseManager$LicenseStateListener;->onLicenseStateChanged(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$verifyLicense$1(Lio/vanta/license/LicenseManager$Callback;Lio/vanta/license/LicenseManager$Result;)V
    .locals 0

    .line 47
    invoke-interface {p0, p1}, Lio/vanta/license/LicenseManager$Callback;->onResult(Lio/vanta/license/LicenseManager$Result;)V

    return-void
.end method

.method private static notifyListeners(ZLjava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lio/vanta/license/LicenseManager;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static removeListener(Lio/vanta/license/LicenseManager$LicenseStateListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lio/vanta/license/LicenseManager;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized startWatchdog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-class p0, Lio/vanta/license/LicenseManager;

    monitor-enter p0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public static declared-synchronized stopWatchdog()V
    .locals 1

    const-class v0, Lio/vanta/license/LicenseManager;

    monitor-enter v0

    .line 87
    monitor-exit v0

    return-void
.end method

.method public static verifyLicense(Landroid/content/Context;Ljava/lang/String;Lio/vanta/license/LicenseManager$Callback;)V
    .locals 6

    .line 44
    new-instance v0, Lio/vanta/license/LicenseManager$Result;

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-string v2, "License active"

    invoke-direct/range {v0 .. v5}, Lio/vanta/license/LicenseManager$Result;-><init>(ZLjava/lang/String;JZ)V

    const/4 p0, 0x1

    .line 45
    const-string p1, "License active"

    invoke-static {p0, p1}, Lio/vanta/license/LicenseManager;->notifyListeners(ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 47
    sget-object p0, Lio/vanta/license/LicenseManager;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance p1, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, v0}, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;-><init>(Lio/vanta/license/LicenseManager$Callback;Lio/vanta/license/LicenseManager$Result;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static verifyLicenseBlocking(Landroid/content/Context;Ljava/lang/String;)Lio/vanta/license/LicenseManager$Result;
    .locals 6

    const/4 p0, 0x1

    .line 52
    const-string p1, "License active"

    invoke-static {p0, p1}, Lio/vanta/license/LicenseManager;->notifyListeners(ZLjava/lang/String;)V

    .line 53
    new-instance v0, Lio/vanta/license/LicenseManager$Result;

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-string v2, "License active"

    invoke-direct/range {v0 .. v5}, Lio/vanta/license/LicenseManager$Result;-><init>(ZLjava/lang/String;JZ)V

    return-object v0
.end method
