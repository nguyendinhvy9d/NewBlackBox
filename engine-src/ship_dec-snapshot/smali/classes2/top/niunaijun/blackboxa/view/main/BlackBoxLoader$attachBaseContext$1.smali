.class public final Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;
.super Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;
.source "BlackBoxLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1",
        "Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;",
        "getHostPackageName",
        "",
        "isHideRoot",
        "",
        "isEnableDaemonService",
        "isUseVpnNetwork",
        "isDisableFlagSecure",
        "getLogSenderChatId",
        "requestInstallPackage",
        "file",
        "Ljava/io/File;",
        "userId",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    .line 228
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostPackageName()Ljava/lang/String;
    .locals 4

    .line 231
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 233
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting package name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "unknown"

    return-object v0
.end method

.method public getLogSenderChatId()Ljava/lang/String;
    .locals 1

    .line 275
    const-string v0, "-1003931307293"

    return-object v0
.end method

.method public isDisableFlagSecure()Z
    .locals 4

    .line 267
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->access$getMDisableFlagSecure(Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking disableFlagSecure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableDaemonService()Z
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->access$getMDaemonEnable(Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 251
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking daemonEnable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isHideRoot()Z
    .locals 4

    .line 240
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->access$getMHideRoot(Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking hideRoot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isUseVpnNetwork()Z
    .locals 4

    .line 258
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->this$0:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->access$getMUseVpnNetwork(Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 260
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking useVpnNetwork: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestInstallPackage(Ljava/io/File;I)Z
    .locals 3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 284
    :try_start_0
    sget-object p1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "requestInstallPackage: file is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 288
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$attachBaseContext$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    sget-object v0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in requestInstallPackage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method
