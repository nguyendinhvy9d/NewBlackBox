.class public final Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$addLifecycleCallback$1;
.super Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;
.source "BlackBoxLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->addLifecycleCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J.\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\nH\u0016J.\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/main/BlackBoxLoader$addLifecycleCallback$1",
        "Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;",
        "beforeCreateApplication",
        "",
        "packageName",
        "",
        "processName",
        "context",
        "Landroid/content/Context;",
        "userId",
        "",
        "beforeApplicationOnCreate",
        "application",
        "Landroid/app/Application;",
        "afterApplicationOnCreate",
        "onStoragePermissionNeeded",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public afterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .locals 3

    const-string v0, "afterApplicationOnCreate: pkg "

    .line 170
    :try_start_0
    sget-object v1, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", processName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object p1, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->INSTANCE:Ltop/niunaijun/blackboxa/app/rocker/RockerManager;

    invoke-virtual {p1, p3, p4}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->init(Landroid/app/Application;I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    sget-object p2, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error in afterApplicationOnCreate: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .locals 1

    const-string p3, "beforeApplicationOnCreate: pkg "

    .line 151
    :try_start_0
    sget-object p4, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p4}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", processName "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    sget-object p2, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error in beforeApplicationOnCreate: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 2

    const-string p3, "beforeCreateApplication: pkg "

    .line 135
    :try_start_0
    sget-object p4, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p4}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p4

    .line 136
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", processName "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",userID:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 139
    sget-object p2, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error in beforeCreateApplication: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStoragePermissionNeeded(Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "Storage permission needed for launching: "

    const/4 v1, 0x0

    .line 188
    :try_start_0
    sget-object v2, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Landroid/content/Intent;

    .line 196
    const-string v2, "top.niunaijun.blackboxa.REQUEST_STORAGE_PERMISSION"

    .line 195
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string p1, "user_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    sget-object p1, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget-object p1, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 210
    sget-object p2, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->Companion:Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;

    invoke-virtual {p2}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error in onStoragePermissionNeeded: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
