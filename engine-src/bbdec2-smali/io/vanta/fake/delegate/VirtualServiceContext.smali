.class public Lio/vanta/fake/delegate/VirtualServiceContext;
.super Landroid/content/ContextWrapper;
.source "VirtualServiceContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualServiceContext"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static isForceGranted(Ljava/lang/String;)Z
    .registers 1

    .line 181
    invoke-static {p0}, Lio/vanta/fake/service/IPermissionManagerProxy;->isForceGranted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_4
    instance-of v0, p0, Lio/vanta/fake/delegate/VirtualServiceContext;

    if-eqz v0, :cond_9

    goto :goto_13

    .line 199
    :cond_9
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/VantaCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-object p0

    .line 203
    :cond_14
    new-instance v0, Lio/vanta/fake/delegate/VirtualServiceContext;

    invoke-direct {v0, p0}, Lio/vanta/fake/delegate/VirtualServiceContext;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 136
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCallingOrSelfPermission: Granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualServiceContext"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 4

    .line 145
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCallingPermission: Granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualServiceContext"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 5

    .line 118
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "checkPermission: Granting "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualServiceContext"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 127
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSelfPermission: Granting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualServiceContext"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_1c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 172
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "enforceCallingOrSelfPermission: Permitting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualServiceContext"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 163
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "enforceCallingPermission: Permitting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualServiceContext"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 154
    invoke-static {p1}, Lio/vanta/fake/delegate/VirtualServiceContext;->isForceGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "enforcePermission: Permitting "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualServiceContext"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContextWrapper;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 51
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 55
    :cond_7
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 4

    .line 103
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 104
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 105
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    iget v0, v0, Lio/vanta/entity/AppConfig;->userId:I

    invoke-static {v1, v0}, Lio/vanta/core/env/BEnvironment;->getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_29
    return-object v0

    .line 113
    :cond_2a
    invoke-super {p0}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .registers 4

    .line 88
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 89
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 90
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    iget v0, v0, Lio/vanta/entity/AppConfig;->userId:I

    invoke-static {v1, v0}, Lio/vanta/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_29
    return-object v0

    .line 98
    :cond_2a
    invoke-super {p0}, Landroid/content/ContextWrapper;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 4

    .line 73
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 74
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 75
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    iget v0, v0, Lio/vanta/entity/AppConfig;->userId:I

    invoke-static {v1, v0}, Lio/vanta/core/env/BEnvironment;->getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_29
    return-object v0

    .line 83
    :cond_2a
    invoke-super {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .line 64
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppConfig()Lio/vanta/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 65
    iget-object v1, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 66
    iget-object v0, v0, Lio/vanta/entity/AppConfig;->packageName:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_d
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
