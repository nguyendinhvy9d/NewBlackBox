.class public Lio/vanta/app/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field public static final KEY_INTENT:Ljava/lang/String; = "launch_intent"

.field public static final KEY_PKG:Ljava/lang/String; = "launch_pkg"

.field public static final KEY_USER_ID:Ljava/lang/String; = "launch_user_id"

.field public static final TAG:Ljava/lang/String; = "SplashScreen"


# instance fields
.field private isRunning:Z


# direct methods
.method public static synthetic $r8$lambda$Jie1ZR9--rFQTVqTvsnp-eBUYdU(Lio/vanta/app/LauncherActivity;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/vanta/app/LauncherActivity;->lambda$launchAppAsync$2(Landroid/content/Intent;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lio/vanta/app/LauncherActivity;->isRunning:Z

    return-void
.end method

.method private getPackageInfoWithFallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 9

    const-string v0, "Created fallback PackageInfo for "

    const/4 v1, 0x0

    .line 137
    :try_start_3
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get package info for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (attempt 1): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SplashScreen"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_2f
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v2, p1, v5, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    move-exception v2

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (attempt 2): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_59
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    .line 151
    invoke-virtual {v2, p1, v1, p2}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_b1

    .line 155
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 156
    iput-object p1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 157
    iput-object p2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 p2, 0x1

    .line 158
    iput p2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 159
    const-string p2, "1.0"

    iput-object p2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8f} :catch_90

    return-object v1

    :catch_90
    move-exception p2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get application info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$launchAppAsync$1(Ljava/lang/Exception;)V
    .registers 4

    .line 195
    const-string v0, "SplashScreen"

    .line 0
    const-string v1, "Failed to launch app: "

    .line 195
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 197
    const-string v1, "Error showing error message"

    invoke-static {v0, v1, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$launchAppAsync$2(Landroid/content/Intent;I)V
    .registers 6

    .line 179
    const-string v0, "SplashScreen"

    :try_start_2
    const-string v1, "Starting app launch in background thread"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 185
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/vanta/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)V

    .line 187
    const-string p1, "App launch initiated successfully"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 189
    const-string p2, "Error launching app"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    new-instance p2, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lio/vanta/app/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/widget/ImageView;)V
    .registers 3

    .line 115
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static launch(Landroid/content/Intent;I)V
    .registers 7

    .line 31
    const-string v0, "SplashScreen"

    .line 0
    const-string v1, "LauncherActivity.launch() called for package: "

    .line 31
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/vanta/app/LauncherActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    const-string v3, "launch_intent"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string v3, "launch_pkg"

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v3, "launch_user_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    .line 41
    const-string p1, "Error in LauncherActivity.launch()"

    invoke-static {v0, p1, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private launchAppAsync(Landroid/content/Intent;I)V
    .registers 5

    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;-><init>(Lio/vanta/app/LauncherActivity;Landroid/content/Intent;I)V

    const-string p1, "AppLaunchThread"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 48
    const-string v0, "SplashScreen"

    .line 0
    const-string v1, "Failed to load app icon or name for "

    const-string v2, "Package info not available for "

    const-string v3, "Successfully retrieved package info for "

    const-string v4, "LauncherActivity.onCreate() for package: "

    .line 48
    :try_start_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 52
    const-string p1, "Intent is null, finishing activity"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->finish()V

    return-void

    .line 57
    :cond_1c
    const-string v5, "launch_intent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 58
    const-string v6, "launch_pkg"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string v7, "launch_user_id"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v5, :cond_137

    if-nez v6, :cond_37

    goto/16 :goto_137

    .line 67
    :cond_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", userId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, v6, p1}, Lio/vanta/app/LauncherActivity;->getPackageInfoWithFallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_6e

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but proceeding with launch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 76
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7e} :catch_140

    :goto_7e
    const/4 v2, 0x0

    if-eqz v4, :cond_bb

    .line 83
    :try_start_81
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_bb

    .line 84
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_bb

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9b} :catch_9c

    goto :goto_bb

    :catch_9c
    move-exception v3

    .line 90
    :try_start_9d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_bb
    :goto_bb
    sget v1, Lio/vanta/R$layout;->activity_launcher:I

    invoke-virtual {p0, v1}, Lio/vanta/app/LauncherActivity;->setContentView(I)V

    .line 93
    sget v1, Lio/vanta/R$id;->iv_icon:I

    invoke-virtual {p0, v1}, Lio/vanta/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    sget v3, Lio/vanta/R$id;->tv_app_name:I

    invoke-virtual {p0, v3}, Lio/vanta/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_f2

    .line 96
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v8, 0x1f4

    .line 100
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v8, 0xc8

    .line 101
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_f2
    if-eqz v1, :cond_133

    if-eqz v2, :cond_133

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x3f333333    # 0.7f

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 108
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3f8ccccd    # 1.1f

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 125
    :cond_133
    invoke-direct {p0, v5, p1}, Lio/vanta/app/LauncherActivity;->launchAppAsync(Landroid/content/Intent;I)V

    goto :goto_149

    .line 62
    :cond_137
    :goto_137
    const-string p1, "Missing launch intent or package name, finishing activity"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->finish()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_13f} :catch_140

    return-void

    :catch_140
    move-exception p1

    .line 128
    const-string v1, "Critical error in LauncherActivity.onCreate()"

    invoke-static {v0, v1, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->finish()V

    :goto_149
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lio/vanta/app/LauncherActivity;->isRunning:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    iget-boolean v0, p0, Lio/vanta/app/LauncherActivity;->isRunning:Z

    if-eqz v0, :cond_a

    .line 214
    invoke-virtual {p0}, Lio/vanta/app/LauncherActivity;->finish()V

    :cond_a
    return-void
.end method
