.class public Lio/vanta/core/system/permission/XiaomiPermissionManager;
.super Ljava/lang/Object;
.source "XiaomiPermissionManager.java"


# static fields
.field private static final POST_NOTIFICATIONS:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final TAG:Ljava/lang/String; = "XiaomiPermissionManager"

.field private static final XIAOMI_AUTOSTART_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final XIAOMI_AUTOSTART_SETTINGS:Ljava/lang/String; = "miui.intent.action.OP_AUTO_START"

.field private static final XIAOMI_BACKGROUND_RUNNING:Ljava/lang/String; = "miui.permission.RUN_IN_BACKGROUND"

.field private static final XIAOMI_BATTERY_OPTIMIZATION:Ljava/lang/String; = "miui.permission.OPTIMIZE_POWER"

.field private static final XIAOMI_BATTERY_SETTINGS:Ljava/lang/String; = "miui.intent.action.POWER_HIDE_MODE_APP_LIST"

.field private static final XIAOMI_NOTIFICATION_PERMISSION:Ljava/lang/String; = "miui.permission.POST_NOTIFICATIONS"

.field private static final XIAOMI_NOTIFICATION_SETTINGS:Ljava/lang/String; = "miui.intent.action.NOTIFICATION_SETTINGS"

.field private static final sInstance:Lio/vanta/core/system/permission/XiaomiPermissionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lio/vanta/core/system/permission/XiaomiPermissionManager;

    invoke-direct {v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;-><init>()V

    sput-object v0, Lio/vanta/core/system/permission/XiaomiPermissionManager;->sInstance:Lio/vanta/core/system/permission/XiaomiPermissionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNotificationChannels()V
    .registers 7

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 237
    const-string v1, "XiaomiPermissionManager"

    if-nez v0, :cond_1d

    .line 238
    const-string v0, "NotificationManager not available"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "nomad_main"

    const-string v4, "VantaCore Core"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 249
    const-string v3, "Core VantaCore functionality notifications"

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 250
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 252
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 254
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 255
    const-string v2, "Created main notification channel"

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "nomad_background"

    const-string v4, "VantaCore Background"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 263
    const-string v3, "Background service notifications"

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 265
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 266
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 268
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 269
    const-string v0, "Created background notification channel"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception v0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create notification channels: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private disableBatteryOptimization()V
    .registers 10

    .line 278
    const-string v0, "XiaomiPermissionManager"

    .line 0
    const-string v1, "Failed to disable battery optimization through reflection: "

    .line 282
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 285
    :try_start_8
    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-nez v3, :cond_13

    goto :goto_7b

    .line 290
    :cond_13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 294
    const-string v4, "App is not ignoring battery optimizations, attempting to disable"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_64

    .line 298
    :try_start_22
    const-class v4, Landroid/os/PowerManager;

    const-string v5, "setIgnoreBatteryOptimizations"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 301
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v2, "Successfully disabled battery optimization through reflection"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_47} :catch_48

    goto :goto_7b

    :catch_48
    move-exception v2

    .line 304
    :try_start_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 307
    :cond_5e
    const-string v1, "App is already ignoring battery optimizations"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_63} :catch_64

    goto :goto_7b

    :catch_64
    move-exception v1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking battery optimization: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-void
.end method

.method public static get()Lio/vanta/core/system/permission/XiaomiPermissionManager;
    .registers 1

    .line 42
    sget-object v0, Lio/vanta/core/system/permission/XiaomiPermissionManager;->sInstance:Lio/vanta/core/system/permission/XiaomiPermissionManager;

    return-object v0
.end method

.method private grantPermissionThroughReflection(Ljava/lang/String;)V
    .registers 11

    .line 318
    const-string v0, "XiaomiPermissionManager"

    .line 0
    const-string v1, "Successfully granted permission: "

    .line 318
    :try_start_4
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 324
    const-class v4, Landroid/content/pm/PackageManager;

    const-string v5, "grantRuntimePermission"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 328
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->hashCode()I

    move-result v5

    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, p1, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to grant permission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " through reflection: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public areAllPermissionsGranted()Z
    .registers 5

    .line 341
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isNotificationPermissionGranted()Z

    move-result v0

    .line 342
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiBackgroundPermissionGranted()Z

    move-result v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permission status - Notification: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Xiaomi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XiaomiPermissionManager"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public getPermissionStatusSummary()Ljava/lang/String;
    .registers 7

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission Status Summary:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "\n"

    const-string v4, "GRANTED"

    const-string v5, "DENIED"

    if-lt v1, v2, :cond_2a

    .line 356
    const-string v1, "\u2022 POST_NOTIFICATIONS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isNotificationPermissionGranted()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v2, v4

    goto :goto_22

    :cond_21
    move-object v2, v5

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 358
    :cond_2a
    const-string v1, "\u2022 POST_NOTIFICATIONS: NOT_REQUIRED (Android < 12)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :goto_2f
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiDevice()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 363
    const-string v1, "\u2022 Xiaomi Autostart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiBackgroundPermissionGranted()Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_43

    :cond_42
    move-object v4, v5

    :goto_43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u2022 Xiaomi Battery Optimization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiBackgroundPermissionGranted()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "DISABLED"

    goto :goto_57

    :cond_55
    const-string v1, "ENABLED"

    :goto_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u2022 Xiaomi Background Running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiBackgroundPermissionGranted()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "ALLOWED"

    goto :goto_6b

    :cond_69
    const-string v1, "RESTRICTED"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 367
    :cond_73
    const-string v1, "\u2022 Xiaomi Permissions: NOT_APPLICABLE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :goto_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public grantAllRequiredPermissions()V
    .registers 3

    .line 160
    const-string v0, "Granting all required permissions for optimal functionality"

    const-string v1, "XiaomiPermissionManager"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantNotificationPermission()V

    .line 166
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantXiaomiBackgroundPermissions()V

    .line 169
    invoke-direct {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->createNotificationChannels()V

    .line 171
    const-string v0, "Permission grant process completed"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public grantNotificationPermission()V
    .registers 5

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "XiaomiPermissionManager"

    if-ge v0, v1, :cond_1d

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification permission not required on Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_1d
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isNotificationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 115
    const-string v0, "Notification permission already granted"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_29
    const-string v0, "Attempting to grant notification permission automatically"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_2e
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-direct {p0, v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantPermissionThroughReflection(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to grant notification permission automatically: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public grantXiaomiBackgroundPermissions()V
    .registers 5

    .line 131
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiDevice()Z

    move-result v0

    const-string v1, "XiaomiPermissionManager"

    if-nez v0, :cond_e

    .line 132
    const-string v0, "Not a Xiaomi device, skipping background permission grant"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_e
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiBackgroundPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 137
    const-string v0, "Xiaomi background permissions already granted"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_1a
    const-string v0, "Attempting to grant Xiaomi background permissions automatically"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_1f
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-direct {p0, v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantPermissionThroughReflection(Ljava/lang/String;)V

    .line 146
    const-string v0, "miui.permission.OPTIMIZE_POWER"

    invoke-direct {p0, v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantPermissionThroughReflection(Ljava/lang/String;)V

    .line 147
    const-string v0, "miui.permission.RUN_IN_BACKGROUND"

    invoke-direct {p0, v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantPermissionThroughReflection(Ljava/lang/String;)V

    .line 148
    const-string v0, "miui.permission.POST_NOTIFICATIONS"

    invoke-direct {p0, v0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->grantPermissionThroughReflection(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->disableBatteryOptimization()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to grant Xiaomi background permissions automatically: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isNotificationPermissionGranted()Z
    .registers 4

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    return v2

    .line 62
    :cond_8
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isXiaomiBackgroundPermissionGranted()Z
    .registers 6

    .line 68
    const-string v0, "XiaomiPermissionManager"

    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    .line 72
    :cond_a
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    .line 77
    :try_start_f
    const-string v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1d

    .line 78
    const-string v1, "Xiaomi autostart permission not granted"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 83
    :cond_1d
    const-string v4, "miui.permission.OPTIMIZE_POWER"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2b

    .line 84
    const-string v1, "Xiaomi battery optimization permission not granted"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 89
    :cond_2b
    const-string v4, "miui.permission.RUN_IN_BACKGROUND"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_39

    .line 90
    const-string v1, "Xiaomi background running permission not granted"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 95
    :cond_39
    const-string v4, "miui.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_47

    .line 96
    const-string v1, "Xiaomi notification permission not granted"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_46} :catch_48

    return v3

    :cond_47
    return v2

    :catch_48
    move-exception v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error checking Xiaomi permissions: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isXiaomiDevice()Z
    .registers 3

    .line 49
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hyperos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    return v0

    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0
.end method

.method public openNotificationSettings()V
    .registers 7

    .line 208
    const-string v0, "XiaomiPermissionManager"

    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 212
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_20

    .line 213
    const-string v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 216
    :cond_20
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v3, "package"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 218
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_33
    const/high16 v3, 0x10000000

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    const-string v1, "Opened notification settings"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open notification settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openXiaomiPermissionSettings()V
    .registers 8

    .line 176
    invoke-virtual {p0}, Lio/vanta/core/system/permission/XiaomiPermissionManager;->isXiaomiDevice()Z

    move-result v0

    const-string v1, "XiaomiPermissionManager"

    if-nez v0, :cond_e

    .line 177
    const-string v0, "Not a Xiaomi device, cannot open Xiaomi settings"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_e
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 185
    :try_start_14
    new-instance v3, Landroid/content/Intent;

    const-string v4, "miui.intent.action.OP_AUTO_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    const-string v3, "Opened Xiaomi autostart settings"

    invoke-static {v1, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v3

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to open Xiaomi autostart settings: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_3e
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v4, "package"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    const-string v0, "Opened general app settings as fallback"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5e} :catch_5f

    goto :goto_76

    :catch_5f
    move-exception v0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open any settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-void
.end method
