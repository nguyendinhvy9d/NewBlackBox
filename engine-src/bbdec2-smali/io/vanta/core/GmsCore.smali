.class public Lio/vanta/core/GmsCore;
.super Ljava/lang/Object;
.source "GmsCore.java"


# static fields
.field public static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field private static final GOOGLE_APP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GOOGLE_SERVICE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSF_PKG:Ljava/lang/String; = "com.google.android.gsf"

.field private static final TAG:Ljava/lang/String; = "GmsCore"

.field public static final VENDING_PKG:Ljava/lang/String; = "com.android.vending"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lio/vanta/core/GmsCore;->GOOGLE_APP:Ljava/util/Set;

    .line 16
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    .line 22
    const-string v2, "com.android.vending"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v2, "com.google.android.play.games"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v2, "com.google.android.wearable.app"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v2, "com.google.android.wearable.app.cn"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "com.google.android.gms"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "com.google.android.gsf"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "com.google.android.gsf.login"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "com.google.android.backuptransport"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "com.google.android.backup"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "com.google.android.configupdater"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "com.google.android.syncadapters.contacts"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "com.google.android.feedback"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "com.google.android.onetimeinitializer"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "com.google.android.partnersetup"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "com.google.android.setupwizard"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "com.google.android.syncadapters.calendar"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installGApps(I)Lio/vanta/entity/pm/InstallResult;
    .locals 2

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 114
    sget-object v1, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 115
    sget-object v1, Lio/vanta/core/GmsCore;->GOOGLE_APP:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-static {v0, p0}, Lio/vanta/core/GmsCore;->installPackages(Ljava/util/Set;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object v0

    .line 118
    iget-boolean v1, v0, Lio/vanta/entity/pm/InstallResult;->success:Z

    if-nez v1, :cond_0

    .line 119
    invoke-static {p0}, Lio/vanta/core/GmsCore;->uninstallGApps(I)V

    :cond_0
    return-object v0
.end method

.method private static installPackages(Ljava/util/Set;I)Lio/vanta/entity/pm/InstallResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Lio/vanta/entity/pm/InstallResult;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 55
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "com.google.android.gms"

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v4, p1}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    move v3, v7

    goto :goto_0

    .line 64
    :cond_1
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {v0, v4, p1}, Lio/vanta/VantaCore;->installPackageAsUser(Ljava/lang/String;I)Lio/vanta/entity/pm/InstallResult;

    move-result-object v6

    .line 77
    iget-boolean v8, v6, Lio/vanta/entity/pm/InstallResult;->success:Z

    if-nez v8, :cond_3

    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-static {v1, p1}, Lio/vanta/core/GmsCore;->uninstallPackages(Ljava/util/Set;I)V

    return-object v6

    .line 82
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Optional package install failed: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Lio/vanta/entity/pm/InstallResult;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GmsCore"

    invoke-static {v5, v4}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 68
    :catch_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    new-instance p0, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p0}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p1, "Official Google Play services is not installed on the host device."

    invoke-virtual {p0, v5, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    .line 93
    invoke-static {v1, p1}, Lio/vanta/core/GmsCore;->uninstallPackages(Ljava/util/Set;I)V

    .line 94
    new-instance p0, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p0}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    const-string p1, "Official Google Play services could not be installed."

    invoke-virtual {p0, v5, p1}, Lio/vanta/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Lio/vanta/entity/pm/InstallResult;

    move-result-object p0

    return-object p0

    .line 99
    :cond_5
    new-instance p0, Lio/vanta/entity/pm/InstallResult;

    invoke-direct {p0}, Lio/vanta/entity/pm/InstallResult;-><init>()V

    return-object p0
.end method

.method public static isGoogleAppOrService(Ljava/lang/String;)Z
    .locals 1

    .line 47
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_APP:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isGoogleService(Ljava/lang/String;)Z
    .locals 1

    .line 43
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInstalledGoogleService(I)Z
    .locals 2

    .line 147
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1, p0}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isSupportGms()Z
    .locals 3

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    .line 139
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 131
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_APP:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static uninstallGApps(I)V
    .locals 1

    .line 126
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_SERVICE:Ljava/util/Set;

    invoke-static {v0, p0}, Lio/vanta/core/GmsCore;->uninstallPackages(Ljava/util/Set;I)V

    .line 127
    sget-object v0, Lio/vanta/core/GmsCore;->GOOGLE_APP:Ljava/util/Set;

    invoke-static {v0, p0}, Lio/vanta/core/GmsCore;->uninstallPackages(Ljava/util/Set;I)V

    return-void
.end method

.method private static uninstallPackages(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    .line 104
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1, p1}, Lio/vanta/VantaCore;->uninstallPackageAsUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
