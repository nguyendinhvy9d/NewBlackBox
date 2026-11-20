.class public Lio/vanta/fake/service/NetworkPermissionCompat;
.super Ljava/lang/Object;
.source "NetworkPermissionCompat.java"

# interfaces
.implements Lio/vanta/fake/hook/IInjectHook;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkPermissionCompat"

.field private static volatile sInstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install()V
    .locals 6

    .line 24
    const-string v0, "install failed: "

    sget-boolean v1, Lio/vanta/fake/service/NetworkPermissionCompat;->sInstalled:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    const-class v1, Lio/vanta/fake/service/NetworkPermissionCompat;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-boolean v2, Lio/vanta/fake/service/NetworkPermissionCompat;->sInstalled:Z

    if-eqz v2, :cond_1

    .line 29
    monitor-exit v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 32
    :cond_1
    :try_start_1
    const-string v2, "android.permission.PermissionManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    const-string v3, "disablePermissionCache"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sput-boolean v3, Lio/vanta/fake/service/NetworkPermissionCompat;->sInstalled:Z

    .line 37
    const-string v2, "NetworkPermissionCompat"

    const-string v3, "disabled framework permission cache"

    invoke-static {v2, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 39
    :try_start_2
    const-string v3, "NetworkPermissionCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public injectHook()V
    .locals 0

    .line 15
    invoke-static {}, Lio/vanta/fake/service/NetworkPermissionCompat;->install()V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    .line 20
    sget-boolean v0, Lio/vanta/fake/service/NetworkPermissionCompat;->sInstalled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
