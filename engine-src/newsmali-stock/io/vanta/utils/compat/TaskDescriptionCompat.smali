.class public Lio/vanta/utils/compat/TaskDescriptionCompat;
.super Ljava/lang/Object;
.source "TaskDescriptionCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/app/ActivityManager$TaskDescription;)Landroid/app/ActivityManager$TaskDescription;
    .registers 4

    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    return-object p0

    .line 23
    :cond_d
    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v0

    invoke-static {}, Lio/vanta/utils/compat/TaskDescriptionCompat;->getApplicationLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/compat/TaskDescriptionCompat;->getTaskDescriptionLabel(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-object v1
.end method

.method private static getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getApplicationLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 42
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    invoke-static {}, Lio/vanta/VantaCore;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTaskDescriptionLabel(ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method
