.class public Lio/vanta/utils/SimpleCrashFix;
.super Ljava/lang/Object;
.source "SimpleCrashFix.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCrashFix"

.field private static sIsInstalled:Z = false


# direct methods
.method static bridge synthetic -$$Nest$smisAttributionSourceCrash(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/utils/SimpleCrashFix;->isAttributionSourceCrash(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisGooglePlayServicesCrash(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/utils/SimpleCrashFix;->isGooglePlayServicesCrash(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNullContextCrash(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/utils/SimpleCrashFix;->isNullContextCrash(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisSocialMediaAppCrash(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/utils/SimpleCrashFix;->isSocialMediaAppCrash(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisWebViewCrash(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/utils/SimpleCrashFix;->isWebViewCrash(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static installContextWrapperHook()V
    .registers 4

    .line 116
    const-string v0, "SimpleCrashFix"

    :try_start_2
    invoke-static {}, Lio/vanta/utils/ContextWrapperHook;->installHook()V

    .line 117
    const-string v1, "Context wrapper hook installed"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install context wrapper hook: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static installGlobalExceptionHandler()V
    .registers 4

    .line 42
    const-string v0, "SimpleCrashFix"

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 44
    new-instance v2, Lio/vanta/utils/SimpleCrashFix$1;

    invoke-direct {v2, v1}, Lio/vanta/utils/SimpleCrashFix$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 106
    const-string v1, "Global exception handler installed successfully"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install global exception handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static installSimpleFix()V
    .registers 4

    .line 17
    sget-boolean v0, Lio/vanta/utils/SimpleCrashFix;->sIsInstalled:Z

    const-string v1, "SimpleCrashFix"

    if-eqz v0, :cond_c

    .line 18
    const-string v0, "Simple crash fix already installed"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_c
    :try_start_c
    const-string v0, "Installing essential crash fix..."

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lio/vanta/utils/SimpleCrashFix;->installGlobalExceptionHandler()V

    .line 29
    invoke-static {}, Lio/vanta/utils/SimpleCrashFix;->installContextWrapperHook()V

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lio/vanta/utils/SimpleCrashFix;->sIsInstalled:Z

    .line 32
    const-string v0, "Essential crash fix installed successfully"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install essential crash fix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static isAttributionSourceCrash(Ljava/lang/Throwable;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 228
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "AttributionSource"

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "attribution"

    .line 231
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "Calling uid"

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "source uid"

    .line 233
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "UID mismatch"

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v0

    :cond_35
    :goto_35
    return v3

    .line 238
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 240
    array-length v1, p0

    move v4, v0

    :goto_3e
    if-ge v4, v1, :cond_6d

    aget-object v5, p0, v4

    .line 241
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    const-string v7, "ContentProvider"

    .line 244
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6c

    const-string v6, "enforceCallingUid"

    .line 245
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6c

    const-string v6, "enforceCallingUidAndPid"

    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_69

    goto :goto_6c

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_6c
    :goto_6c
    return v3

    :cond_6d
    return v0
.end method

.method private static isGooglePlayServicesCrash(Ljava/lang/Throwable;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 164
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, "com.google.android.gms"

    const-string v3, "GoogleApiAvailability"

    const-string v4, "GooglePlayServicesUtil"

    const/4 v5, 0x1

    if-eqz v1, :cond_2e

    .line 166
    const-string p0, "Google Play Services"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 167
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v5

    .line 173
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 175
    array-length v1, p0

    move v6, v0

    :goto_36
    if-ge v6, v1, :cond_55

    aget-object v7, p0, v6

    .line 176
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 178
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 179
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_51

    goto :goto_54

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_54
    :goto_54
    return v5

    :cond_55
    return v0
.end method

.method private static isNullContextCrash(Ljava/lang/Throwable;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 129
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "getClassLoader"

    const-string v3, "getPackageManager"

    const-string v4, "getResources"

    const-string v5, "Context"

    const/4 v6, 0x1

    if-eqz v1, :cond_36

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "context"

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v0

    :cond_35
    :goto_35
    return v6

    .line 139
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 141
    array-length v1, p0

    move v7, v0

    :goto_3e
    if-ge v7, v1, :cond_6f

    aget-object v8, p0, v7

    .line 142
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6e

    const-string v10, "ContextWrapper"

    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 147
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 148
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 149
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6b

    goto :goto_6e

    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_6e
    :goto_6e
    return v6

    :cond_6f
    return v0
.end method

.method private static isSocialMediaAppCrash(Ljava/lang/Throwable;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 261
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    .line 263
    const-string p0, "Facebook"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "Instagram"

    .line 264
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "WhatsApp"

    .line 265
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "Telegram"

    .line 266
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "Twitter"

    .line 267
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "TikTok"

    .line 268
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "Snapchat"

    .line 269
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "YouTube"

    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "LinkedIn"

    .line 271
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_54

    goto :goto_55

    :cond_54
    return v0

    :cond_55
    :goto_55
    return v2

    .line 275
    :cond_56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_b3

    .line 277
    array-length v1, p0

    move v3, v0

    :goto_5e
    if-ge v3, v1, :cond_b3

    aget-object v4, p0, v3

    .line 278
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 279
    const-string v5, "com.facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.instagram"

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.whatsapp"

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "org.telegram"

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.twitter"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.zhiliaoapp.musically"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.snapchat"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.google.android.youtube"

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "com.linkedin"

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_af

    goto :goto_b2

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_b2
    :goto_b2
    return v2

    :cond_b3
    return v0
.end method

.method private static isWebViewCrash(Ljava/lang/Throwable;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 194
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "WebSettings"

    const-string v3, "WebViewDatabase"

    const/4 v4, 0x1

    const-string v5, "WebView"

    if-eqz v1, :cond_36

    .line 196
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "webview"

    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "data directory"

    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v0

    :cond_35
    :goto_35
    return v4

    .line 204
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 206
    array-length v1, p0

    move v6, v0

    :goto_3e
    if-ge v6, v1, :cond_6f

    aget-object v7, p0, v6

    .line 207
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 210
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 211
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6e

    const-string v8, "webView"

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 213
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    goto :goto_6e

    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_6e
    :goto_6e
    return v4

    :cond_6f
    return v0
.end method
