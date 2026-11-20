.class public Lio/vanta/fake/service/XjCrashGuard;
.super Ljava/lang/Object;
.source "XjCrashGuard.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static installed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lio/vanta/fake/service/XjCrashGuard;->installed:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    if-eqz p0, :cond_28

    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_12
    sget-boolean v0, Lio/vanta/fake/service/XjCrashGuard;->installed:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    sput-boolean v0, Lio/vanta/fake/service/XjCrashGuard;->installed:Z

    new-instance v0, Lio/vanta/fake/service/XjCrashGuard;

    invoke-direct {v0}, Lio/vanta/fake/service/XjCrashGuard;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "XjCrashGuard"

    const-string v1, "installed cockroach uncaught-handler for GMS proc"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swallowed uncaught in GMS proc, thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_12
    const-string v1, "?"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XjCrashGuard"

    invoke-static {v1, v0, p2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    return-void
.end method
