.class public Lio/vanta/core/NativeCore;
.super Ljava/lang/Object;
.source "NativeCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeCore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "vanta"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addIORule(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static createFallbackEmptyDex()[J
    .locals 7

    .line 147
    const-string v0, "NativeCore"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Creating fallback empty DEX"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lio/vanta/core/NativeCore;->createMinimalDexBytes()[B

    move-result-object v2

    .line 154
    const-string v3, "fallback_empty"

    const-string v4, ".dex"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 157
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 159
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 162
    new-instance v2, Ldalvik/system/DexFile;

    invoke-direct {v2, v3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 163
    invoke-static {v2}, Lio/vanta/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    move v4, v1

    .line 167
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 168
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully created fallback empty DEX with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cookies"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating fallback empty DEX: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    const-string v2, "Returning empty DEX array as last resort"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-array v0, v1, [J

    return-object v0
.end method

.method private static createMinimalDexBytes()[B
    .locals 1

    const/16 v0, 0x70

    .line 191
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
        0xat
        0x30t
        0x33t
        0x35t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static native disableHiddenApi()Z
.end method

.method public static native disableResourceLoading()Z
.end method

.method public static native enableIO()V
.end method

.method public static getCallingUid(I)I
    .locals 7

    .line 44
    const-string v0, "NativeCore"

    .line 0
    const-string v1, "Error getting calling BUid: "

    if-lez p0, :cond_0

    const/16 v2, 0x2710

    if-ge p0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x4e1f

    if-le p0, v2, :cond_1

    goto/16 :goto_2

    .line 50
    :cond_1
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v3

    if-ne p0, v3, :cond_a

    .line 52
    invoke-static {}, Lio/vanta/VantaCore;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 53
    const-string v3, "com.google.android.gms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lio/vanta/VantaCore;->getCallingBUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-lez v3, :cond_2

    const v5, 0x4e1f

    if-ge v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v5

    if-eq v3, v5, :cond_2

    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->callerPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lio/vanta/fake/service/GmsCallerFix;->logGcu2(Ljava/lang/String;II)V

    if-eqz v5, :cond_2

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.android.vending"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move p0, v3

    return p0

    :cond_2
    move p0, v4

    return p0

    :cond_3
    if-eqz p0, :cond_4

    .line 59
    const-string v3, "com.google.android.webview"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return p0

    .line 65
    :cond_4
    :try_start_1
    invoke-static {}, Lio/vanta/VantaCore;->getCallingBUid()I

    move-result p0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p0, :cond_5

    if-ge p0, v2, :cond_5

    return p0

    :catch_0
    move-exception p0

    .line 70
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 76
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, p0, v2

    .line 77
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v5, "Settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "FeatureFlag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string v4, "getString"

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "getInt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "getLong"

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "getFloat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_8
    :goto_1
    const-string p0, "System settings access detected, using system UID to prevent mismatch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 p0, 0x3e8

    return p0

    :catch_1
    move-exception p0

    .line 91
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error analyzing stack trace for UID resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_9
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result p0

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :goto_2
    return p0

    :catch_2
    move-exception p0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in getCallingUid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    return p0
.end method

.method public static native init(I)V
.end method

.method public static loadEmptyDex()[J
    .locals 7

    .line 118
    const-string v0, "NativeCore"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->getEmptyJar()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 120
    const-string v2, "Empty JAR not available, attempting sync initialization"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->initializeSync()V

    .line 122
    invoke-static {}, Lio/vanta/core/system/JarManager;->getInstance()Lio/vanta/core/system/JarManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/vanta/core/system/JarManager;->getEmptyJar()Ljava/io/File;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    new-instance v3, Ldalvik/system/DexFile;

    invoke-direct {v3, v2}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 131
    invoke-static {v3}, Lio/vanta/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    move v4, v1

    .line 133
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 134
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully loaded empty DEX with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cookies"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 126
    :cond_3
    :goto_1
    const-string v2, "Empty JAR file not found or invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-array v0, v1, [J

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 139
    const-string v3, "Failed to load empty DEX"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-array v0, v1, [J

    return-object v0
.end method

.method public static redirectPath(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 112
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/core/IOCore;->redirectPath(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
