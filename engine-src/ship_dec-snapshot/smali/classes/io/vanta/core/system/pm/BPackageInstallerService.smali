.class public Lio/vanta/core/system/pm/BPackageInstallerService;
.super Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;
.source "BPackageInstallerService.java"

# interfaces
.implements Lio/vanta/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BPackageInstallerService"

.field private static final sService:Lio/vanta/core/system/pm/BPackageInstallerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/vanta/core/system/pm/BPackageInstallerService;

    invoke-direct {v0}, Lio/vanta/core/system/pm/BPackageInstallerService;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/BPackageInstallerService;->sService:Lio/vanta/core/system/pm/BPackageInstallerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;-><init>()V

    return-void
.end method

.method public static get()Lio/vanta/core/system/pm/BPackageInstallerService;
    .locals 1

    .line 21
    sget-object v0, Lio/vanta/core/system/pm/BPackageInstallerService;->sService:Lio/vanta/core/system/pm/BPackageInstallerService;

    return-object v0
.end method


# virtual methods
.method public clearPackage(Lio/vanta/core/system/pm/BPackageSettings;I)I
    .locals 6

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v1, Lio/vanta/core/system/pm/installer/RemoveUserExecutor;

    invoke-direct {v1}, Lio/vanta/core/system/pm/installer/RemoveUserExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lio/vanta/core/system/pm/installer/CreateUserExecutor;

    invoke-direct {v1}, Lio/vanta/core/system/pm/installer/CreateUserExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p1, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/installer/Executor;

    .line 79
    invoke-interface {v2, p1, v1, p2}, Lio/vanta/core/system/pm/installer/Executor;->exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I

    move-result v3

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uninstallPackageAsUser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " exec: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BPackageInstallerService"

    invoke-static {v4, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public installPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;I)I
    .locals 7

    .line 28
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BPackageInstallerService"

    if-nez v0, :cond_0

    .line 29
    const-string p1, "installPackageAsUser blocked: Bcore license is not authorized"

    invoke-static {v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v2, Lio/vanta/core/system/pm/installer/CreateUserExecutor;

    invoke-direct {v2}, Lio/vanta/core/system/pm/installer/CreateUserExecutor;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lio/vanta/core/system/pm/installer/CreatePackageExecutor;

    invoke-direct {v2}, Lio/vanta/core/system/pm/installer/CreatePackageExecutor;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lio/vanta/core/system/pm/installer/CopyExecutor;

    invoke-direct {v2}, Lio/vanta/core/system/pm/installer/CopyExecutor;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/installer/Executor;

    .line 41
    invoke-interface {v3, p1, v2, p2}, Lio/vanta/core/system/pm/installer/Executor;->exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I

    move-result v4

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "installPackageAsUser: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exec: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public uninstallPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;ZI)I
    .locals 5

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 55
    new-instance p2, Lio/vanta/core/system/pm/installer/RemoveAppExecutor;

    invoke-direct {p2}, Lio/vanta/core/system/pm/installer/RemoveAppExecutor;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    new-instance p2, Lio/vanta/core/system/pm/installer/RemoveUserExecutor;

    invoke-direct {p2}, Lio/vanta/core/system/pm/installer/RemoveUserExecutor;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/installer/Executor;

    .line 61
    invoke-interface {v1, p1, p2, p3}, Lio/vanta/core/system/pm/installer/Executor;->exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I

    move-result v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uninstallPackageAsUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exec: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BPackageInstallerService"

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePackage(Lio/vanta/core/system/pm/BPackageSettings;)I
    .locals 4

    .line 90
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/license/LicenseManager;->isLicenseValid(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 91
    const-string p1, "BPackageInstallerService"

    const-string v0, "updatePackage blocked: Bcore license is not authorized"

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v2, Lio/vanta/core/system/pm/installer/CreatePackageExecutor;

    invoke-direct {v2}, Lio/vanta/core/system/pm/installer/CreatePackageExecutor;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lio/vanta/core/system/pm/installer/CopyExecutor;

    invoke-direct {v2}, Lio/vanta/core/system/pm/installer/CopyExecutor;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackageSettings;->installOption:Lio/vanta/entity/pm/InstallOption;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/installer/Executor;

    .line 99
    invoke-interface {v3, p1, v2, v1}, Lio/vanta/core/system/pm/installer/Executor;->exec(Lio/vanta/core/system/pm/BPackageSettings;Lio/vanta/entity/pm/InstallOption;I)I

    move-result v3

    if-eqz v3, :cond_1

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
