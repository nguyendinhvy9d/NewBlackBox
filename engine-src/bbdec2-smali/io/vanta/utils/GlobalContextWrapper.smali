.class public Lio/vanta/utils/GlobalContextWrapper;
.super Landroid/content/ContextWrapper;
.source "GlobalContextWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalContextWrapper"


# instance fields
.field private final fallbackContext:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "unknown"

    :goto_9
    invoke-direct {p0, p1, v0}, Lio/vanta/utils/GlobalContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_7

    .line 18
    :cond_3
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_7
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lio/vanta/utils/GlobalContextWrapper;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static createSafeContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-eqz p0, :cond_7

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "unknown"

    .line 185
    :goto_9
    invoke-static {p0, v0}, Lio/vanta/utils/GlobalContextWrapper;->createSafeContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createSafeContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    if-nez p0, :cond_9

    .line 159
    new-instance p0, Lio/vanta/utils/GlobalContextWrapper;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/vanta/utils/GlobalContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    .line 162
    :cond_9
    instance-of v0, p0, Lio/vanta/utils/GlobalContextWrapper;

    if-eqz v0, :cond_e

    return-object p0

    .line 166
    :cond_e
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_40

    .line 169
    :try_start_12
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_40

    .line 171
    new-instance v0, Lio/vanta/utils/GlobalContextWrapper;

    invoke-direct {v0, p0, p1}, Lio/vanta/utils/GlobalContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Lio/vanta/utils/GlobalContextWrapper;

    invoke-direct {v0, p0, p1}, Lio/vanta/utils/GlobalContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 179
    :cond_40
    new-instance v0, Lio/vanta/utils/GlobalContextWrapper;

    invoke-direct {v0, p0, p1}, Lio/vanta/utils/GlobalContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 4

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting application context from base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_24
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 4

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting assets from base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_24
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 30
    :cond_7
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting class loader from base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_24
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting content resolver from base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_24
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 5

    .line 69
    const-string v0, "GlobalContextWrapper"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting package manager from base context: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_24
    :try_start_24
    iget-object v1, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting fallback package manager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 36
    :cond_5
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const-string v0, "unknown"

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 6

    .line 42
    const-string v0, "GlobalContextWrapper"

    :try_start_2
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting resources from base context: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_24
    :try_start_24
    iget-object v1, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting fallback resources: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 57
    :try_start_43
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v1, v1, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    return-object v2

    :catch_49
    move-exception v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating minimal resources: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/GlobalContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 147
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting system service from base context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextWrapper"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_24
    iget-object v0, p0, Lio/vanta/utils/GlobalContextWrapper;->fallbackContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
