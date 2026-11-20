.class public Lio/vanta/utils/NativeCrashPrevention;
.super Ljava/lang/Object;
.source "NativeCrashPrevention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/NativeCrashPrevention$PreventionResult;
    }
.end annotation


# static fields
.field private static final PROBLEMATIC_LIBS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NativeCrashPrevention"

.field private static sIsInitialized:Z

.field private static final sPreventionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/utils/NativeCrashPrevention$PreventionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smhandleNativeCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lio/vanta/utils/NativeCrashPrevention;->handleNativeCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/utils/NativeCrashPrevention;->sPreventionCache:Ljava/util/Map;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libart.so"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "libdvm.so"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "libc.so"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "libm.so"

    aput-object v2, v0, v1

    sput-object v0, Lio/vanta/utils/NativeCrashPrevention;->PROBLEMATIC_LIBS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptNativeCrashRecovery(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3

    .line 192
    const-string p1, "NativeCrashPrevention"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Attempting native crash recovery..."

    invoke-static {p1, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p0}, Lio/vanta/utils/NativeCrashPrevention;->restartCrashedThread(Ljava/lang/Thread;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 196
    const-string p0, "Successfully restarted crashed thread"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_0
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->clearNativeCaches()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 202
    const-string p0, "Successfully cleared native caches"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 207
    :cond_1
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->reinitializeNativeLibraries()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 208
    const-string p0, "Successfully reinitialized native libraries"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 213
    :cond_2
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->performMemoryCleanup()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 214
    const-string p0, "Successfully performed memory cleanup"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 218
    :cond_3
    const-string p0, "All native crash recovery strategies failed"

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error during native crash recovery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static clearCache()V
    .locals 2

    .line 455
    sget-object v0, Lio/vanta/utils/NativeCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 456
    const-string v0, "NativeCrashPrevention"

    const-string v1, "Native crash prevention cache cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static clearClassCaches()V
    .locals 4

    .line 279
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-class v1, Lio/vanta/fake/service/ClassLoaderProxy;

    .line 280
    invoke-static {}, Lio/vanta/fake/service/ClassLoaderProxy;->clearClassCache()V

    .line 283
    const-class v1, Lio/vanta/utils/DexFileRecovery;

    .line 284
    invoke-static {}, Lio/vanta/utils/DexFileRecovery;->clearCache()V

    .line 287
    const-class v1, Lio/vanta/utils/DexCrashPrevention;

    .line 288
    invoke-static {}, Lio/vanta/utils/DexCrashPrevention;->clearCache()V

    .line 291
    const-string v1, "Class caches cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not clear class caches: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static clearCorruptedSystemProperties()V
    .locals 7

    .line 335
    const-string v0, "NativeCrashPrevention"

    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "webview.data.dir"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "webview.cache.dir"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "dex.oat.cache.dir"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_1

    .line 341
    aget-object v3, v2, v4

    .line 343
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 344
    const-string v6, "corrupted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    invoke-static {v3}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleared corrupted property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear system properties: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static clearNativeCaches()Z
    .locals 4

    .line 244
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 247
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->clearReflectionCaches()V

    .line 250
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->clearClassCaches()V

    .line 252
    const-string v1, "Native caches cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear native caches: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static clearReflectionCaches()V
    .locals 4

    .line 265
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "java.lang.reflect.ReflectionFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "Reflection caches cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not clear reflection caches: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getOriginalExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 4

    const/4 v0, 0x0

    .line 444
    :try_start_0
    const-class v1, Ljava/lang/Thread;

    const-string v2, "defaultUncaughtExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get original exception handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeCrashPrevention"

    invoke-static {v2, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPreventionStats()Ljava/lang/String;
    .locals 4

    .line 464
    sget-object v0, Lio/vanta/utils/NativeCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;

    .line 465
    iget-boolean v3, v3, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->success:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Native Prevention Stats - Successful: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Total Attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/vanta/utils/NativeCrashPrevention;->sPreventionCache:Ljava/util/Map;

    .line 473
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()Ljava/lang/String;
    .locals 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Crash Prevention Status:\nInitialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    sget-boolean v1, Lio/vanta/utils/NativeCrashPrevention;->sIsInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCache Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    sget-object v1, Lio/vanta/utils/NativeCrashPrevention;->sPreventionCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPrevention Stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->getPreventionStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAndroid Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleNativeCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 111
    const-string v0, "NativeCrashPrevention"

    .line 0
    const-string v1, "Native crash detected in thread: "

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1}, Lio/vanta/utils/NativeCrashPrevention;->isNativeCrash(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "Native crash confirmed, attempting recovery"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p0, p1}, Lio/vanta/utils/NativeCrashPrevention;->attemptNativeCrashRecovery(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string p0, "Successfully recovered from native crash"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    const-string v1, "Failed to recover from native crash"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->getOriginalExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    invoke-interface {v1, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error handling native crash: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize()V
    .locals 4

    .line 61
    const-string v0, "NativeCrashPrevention"

    sget-boolean v1, Lio/vanta/utils/NativeCrashPrevention;->sIsInitialized:Z

    if-eqz v1, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    const-string v1, "Initializing native crash prevention..."

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->installSignalHandlers()V

    .line 72
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->installNativeLibraryMonitoring()V

    .line 75
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->installMemoryProtection()V

    .line 78
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->installThreadProtection()V

    const/4 v1, 0x1

    .line 80
    sput-boolean v1, Lio/vanta/utils/NativeCrashPrevention;->sIsInitialized:Z

    .line 81
    const-string v1, "Native crash prevention initialized successfully"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize native crash prevention: "

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

.method private static installMemoryProtection()V
    .locals 4

    .line 383
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "Installing memory protection"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->setupMemoryMonitoring()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install memory protection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installNativeLibraryMonitoring()V
    .locals 4

    .line 360
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "Installing native library monitoring"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->monitorNativeLibraryLoading()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install native library monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installSignalHandlers()V
    .locals 4

    .line 93
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "Signal handlers prepared (requires native implementation)"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Lio/vanta/utils/NativeCrashPrevention$1;

    invoke-direct {v1}, Lio/vanta/utils/NativeCrashPrevention$1;-><init>()V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install signal handlers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static installThreadProtection()V
    .locals 4

    .line 413
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "Installing thread protection"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->setupThreadMonitoring()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install thread protection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isNativeCrash(Ljava/lang/Throwable;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xa

    .line 150
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SIGSEGV"

    aput-object v4, v3, v0

    const-string v4, "SIGABRT"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string v6, "SIGBUS"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "SIGFPE"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "SIGILL"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "native crash"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "art::"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v7, "libart.so"

    aput-object v7, v3, v4

    const/16 v4, 0x8

    const-string v7, "libc.so"

    aput-object v7, v3, v4

    const/16 v4, 0x9

    const-string v7, "libm.so"

    aput-object v7, v3, v4

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 163
    aget-object v7, v3, v4

    .line 164
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 172
    array-length v1, p0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v3, p0, v2

    .line 173
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v7, "native"

    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    return v5

    :cond_5
    if-eqz v3, :cond_6

    .line 180
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method private static monitorNativeLibraryLoading()V
    .locals 4

    .line 374
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    const-string v1, "Native library monitoring prepared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup native library monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static performMemoryCleanup()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    .line 314
    const-string v3, "NativeCrashPrevention"

    if-ge v1, v2, :cond_0

    .line 315
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v4, 0x64

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lio/vanta/utils/NativeCrashPrevention;->clearCorruptedSystemProperties()V

    .line 322
    const-string v1, "Memory cleanup completed"

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to perform memory cleanup: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static reinitializeNativeLibraries()Z
    .locals 5

    .line 302
    const-string v0, "NativeCrashPrevention"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Native library reinitialization prepared"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to reinitialize native libraries: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static restartCrashedThread(Ljava/lang/Thread;)Z
    .locals 4

    .line 232
    const-string v0, "NativeCrashPrevention"

    .line 0
    const-string v1, "Thread restart strategy prepared for: "

    const/4 v2, 0x0

    .line 232
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to restart thread: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static setupMemoryMonitoring()V
    .locals 9

    .line 397
    const-string v0, "NativeCrashPrevention"

    const-string v1, "Memory monitoring setup - Max: "

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    .line 399
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    .line 400
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup memory monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setupThreadMonitoring()V
    .locals 4

    .line 427
    const-string v0, "NativeCrashPrevention"

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 428
    :goto_0
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread monitoring setup - Active threads: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to setup thread monitoring: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
