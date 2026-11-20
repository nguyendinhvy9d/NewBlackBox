.class public Lio/vanta/utils/StoragePermissionHelper;
.super Ljava/lang/Object;
.source "StoragePermissionHelper.java"


# static fields
.field public static final REQUEST_CODE_MANAGE_STORAGE:I = 0x3ea

.field public static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "StoragePermissionHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionRationale()Ljava/lang/String;
    .locals 2

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 144
    const-string v0, "This app needs access to all files to properly manage sandboxed applications. Please grant \'All files access\' permission in the settings."

    return-object v0

    .line 147
    :cond_0
    const-string v0, "This app needs storage permission to properly manage sandboxed applications. Please grant storage permission."

    return-object v0
.end method

.method public static handleAllFilesAccessResult(I)Z
    .locals 2

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_1

    .line 172
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    .line 173
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    .line 174
    const-string v0, "StoragePermissionHelper"

    if-eqz p0, :cond_0

    .line 175
    const-string v1, "All files access granted"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 177
    :cond_0
    const-string v1, "All files access denied"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Z
    .locals 2

    const/16 p0, 0x3e9

    const/4 p2, 0x0

    if-ne p1, p0, :cond_2

    .line 157
    array-length p0, p3

    move p1, p2

    :goto_0
    const-string v0, "StoragePermissionHelper"

    if-ge p1, p0, :cond_1

    aget v1, p3, p1

    if-nez v1, :cond_0

    .line 159
    const-string p0, "Storage permission granted"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const-string p0, "Storage permission denied"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p2
.end method

.method public static hasAllFilesAccess()Z
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 27
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static hasFullFileAccess(Landroid/content/Context;)Z
    .locals 1

    .line 60
    invoke-static {}, Lio/vanta/utils/StoragePermissionHelper;->hasAllFilesAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/vanta/utils/StoragePermissionHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .locals 5

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    .line 38
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 40
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 42
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3

    .line 44
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    if-lt v0, v1, :cond_5

    .line 46
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v3

    .line 51
    :cond_5
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 53
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public static requestAllFilesAccess(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "package:"

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 66
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3ea

    .line 68
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 73
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestAllFilesAccessForPackage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "package:"

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/16 v1, 0x3ea

    .line 84
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestFullFileAccess(Landroid/app/Activity;)V
    .locals 2

    .line 120
    invoke-static {p0}, Lio/vanta/utils/StoragePermissionHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0}, Lio/vanta/utils/StoragePermissionHelper;->requestStoragePermission(Landroid/app/Activity;)V

    .line 125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-static {p0}, Lio/vanta/utils/StoragePermissionHelper;->requestAllFilesAccess(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static requestStoragePermission(Landroid/app/Activity;)V
    .locals 6

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/16 v2, 0x3e9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v5

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 108
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static shouldShowStorageRationale(Landroid/app/Activity;)Z
    .locals 2

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 133
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 136
    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
