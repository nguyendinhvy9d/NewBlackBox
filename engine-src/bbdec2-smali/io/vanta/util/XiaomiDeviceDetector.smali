.class public Lio/vanta/util/XiaomiDeviceDetector;
.super Ljava/lang/Object;
.source "XiaomiDeviceDetector.java"


# static fields
.field private static final MIUI_VERSION_PATTERNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "XiaomiDeviceDetector"

.field private static final XIAOMI_MANUFACTURERS:[Ljava/lang/String;

.field private static final XIAOMI_MODELS:[Ljava/lang/String;

.field private static sAndroidVersion:I

.field private static sDeviceModel:Ljava/lang/String;

.field private static sIsXiaomiDevice:Z

.field private static sMiuiVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Xiaomi"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Redmi"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "POCO"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Black Shark"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Mi"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lio/vanta/util/XiaomiDeviceDetector;->XIAOMI_MANUFACTURERS:[Ljava/lang/String;

    .line 18
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "MIUI"

    aput-object v2, v1, v3

    const-string v2, "HyperOS"

    aput-object v2, v1, v4

    const-string v2, "MIUI Global"

    aput-object v2, v1, v5

    const-string v2, "MIUI China"

    aput-object v2, v1, v6

    sput-object v1, Lio/vanta/util/XiaomiDeviceDetector;->MIUI_VERSION_PATTERNS:[Ljava/lang/String;

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mi "

    aput-object v1, v0, v3

    const-string v1, "Redmi "

    aput-object v1, v0, v4

    const-string v1, "POCO "

    aput-object v1, v0, v5

    const-string v1, "Black Shark "

    aput-object v1, v0, v6

    const-string v1, "Xiaomi "

    aput-object v1, v0, v7

    sput-object v0, Lio/vanta/util/XiaomiDeviceDetector;->XIAOMI_MODELS:[Ljava/lang/String;

    .line 27
    sput-boolean v3, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    .line 29
    sput-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sDeviceModel:Ljava/lang/String;

    .line 30
    sput v3, Lio/vanta/util/XiaomiDeviceDetector;->sAndroidVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkXiaomiSystemProperties()Z
    .locals 3

    .line 292
    :try_start_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lio/vanta/util/XiaomiDeviceDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    const-string v0, "ro.miui.version.code"

    invoke-static {v0}, Lio/vanta/util/XiaomiDeviceDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 302
    :cond_1
    const-string v0, "ro.miui.build.version"

    invoke-static {v0}, Lio/vanta/util/XiaomiDeviceDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return v1

    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking Xiaomi system properties: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XiaomiDeviceDetector"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static containsMiuiVersion(Ljava/lang/String;)Z
    .locals 5

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 319
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 320
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->MIUI_VERSION_PATTERNS:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 321
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static extractMiuiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 336
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 337
    aget-object v3, v1, v2

    const-string v4, "MIUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v2

    const-string v4, "HyperOS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static extractVersionNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 351
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 352
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 353
    aget-object p0, p0, v2

    .line 354
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 355
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 356
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getAndroidVersion()I
    .locals 1

    .line 155
    sget v0, Lio/vanta/util/XiaomiDeviceDetector;->sAndroidVersion:I

    if-lez v0, :cond_0

    return v0

    .line 159
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/vanta/util/XiaomiDeviceDetector;->sAndroidVersion:I

    return v0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAndroid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\nXiaomi Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "MIUI Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nMIUI 12+: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isMiui12OrHigher()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nMIUI 13+: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isMiui13OrHigher()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nHyperOS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isHyperOS()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sDeviceModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 149
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getMiuiVersion()Ljava/lang/String;
    .locals 5

    .line 104
    const-string v0, "XiaomiDeviceDetector"

    const-string v1, "Detected MIUI version from build: "

    const-string v2, "Detected MIUI version code: "

    const-string v3, "Detected MIUI version: "

    sget-object v4, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    return-object v4

    .line 108
    :cond_0
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_1
    :try_start_0
    const-string v4, "ro.miui.ui.version.name"

    invoke-static {v4}, Lio/vanta/util/XiaomiDeviceDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_2
    const-string v3, "ro.miui.version.code"

    invoke-static {v3}, Lio/vanta/util/XiaomiDeviceDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_3
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lio/vanta/util/XiaomiDeviceDetector;->containsMiuiVersion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    invoke-static {v2}, Lio/vanta/util/XiaomiDeviceDetector;->extractMiuiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting MIUI version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    const-string v0, "Unknown"

    sput-object v0, Lio/vanta/util/XiaomiDeviceDetector;->sMiuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 366
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 367
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 368
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting system property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "XiaomiDeviceDetector"

    invoke-static {v1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static isHyperOS()Z
    .locals 3

    .line 215
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 219
    :cond_0
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    const-string v2, "HyperOS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OS1."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static isMiui12OrHigher()Z
    .locals 4

    .line 165
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    invoke-static {v0}, Lio/vanta/util/XiaomiDeviceDetector;->extractVersionNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking MIUI version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XiaomiDeviceDetector"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public static isMiui13OrHigher()Z
    .locals 4

    .line 190
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    :try_start_0
    invoke-static {v0}, Lio/vanta/util/XiaomiDeviceDetector;->extractVersionNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking MIUI version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XiaomiDeviceDetector"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public static isXiaomiDevice()Z
    .locals 10

    .line 34
    const-string v0, "XiaomiDeviceDetector"

    const-string v1, "Detected Xiaomi device by fingerprint: "

    const-string v2, "Detected Xiaomi device by device: "

    const-string v3, "Detected Xiaomi device by product: "

    const-string v4, "Detected Xiaomi device by model: "

    const-string v5, "Detected Xiaomi device by brand: "

    const-string v6, "Detected Xiaomi device by manufacturer: "

    sget-boolean v7, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    return v8

    .line 40
    :cond_0
    :try_start_0
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 41
    invoke-static {v7}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiManufacturer(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 42
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 48
    :cond_1
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 49
    invoke-static {v6}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiManufacturer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 56
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 57
    invoke-static {v5}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiModel(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 64
    :cond_3
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 65
    invoke-static {v4}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 66
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 72
    :cond_4
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 73
    invoke-static {v3}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiModel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 80
    :cond_5
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 81
    invoke-static {v2}, Lio/vanta/util/XiaomiDeviceDetector;->isXiaomiFingerprint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 82
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 88
    :cond_6
    invoke-static {}, Lio/vanta/util/XiaomiDeviceDetector;->checkXiaomiSystemProperties()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    sput-boolean v8, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    .line 90
    const-string v1, "Detected Xiaomi device by system properties"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error detecting Xiaomi device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lio/vanta/util/XiaomiDeviceDetector;->sIsXiaomiDevice:Z

    return v0
.end method

.method private static isXiaomiFingerprint(Ljava/lang/String;)Z
    .locals 2

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 282
    const-string v0, "xiaomi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "redmi"

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "poco"

    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "blackshark"

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mi "

    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isXiaomiManufacturer(Ljava/lang/String;)Z
    .locals 5

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 252
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->XIAOMI_MANUFACTURERS:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 253
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static isXiaomiModel(Ljava/lang/String;)Z
    .locals 5

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 267
    sget-object v0, Lio/vanta/util/XiaomiDeviceDetector;->XIAOMI_MODELS:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 268
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
