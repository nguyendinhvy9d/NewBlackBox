.class public Lio/vanta/utils/compat/HiddenApiCompat;
.super Ljava/lang/Object;
.source "HiddenApiCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenApiCompat"

.field private static volatile sExempted:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bypassHiddenApi(Landroid/content/Context;)Z
    .locals 7

    .line 22
    const-string v0, "HiddenApiCompat"

    sget-boolean v1, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_1

    .line 27
    sput-boolean v2, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 35
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "L"

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v3, "HiddenApiBypass successfully added exemptions (\'L\')"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HiddenApiBypass failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lio/vanta/core/NativeCore;->disableHiddenApi()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_3

    .line 47
    :try_start_2
    const-string v1, "NativeCore.disableHiddenApi succeeded"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v2

    goto :goto_2

    :catchall_1
    move-exception v1

    move v3, v2

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    .line 50
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NativeCore.disableHiddenApi failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    if-eqz p0, :cond_4

    .line 56
    :try_start_3
    invoke-static {p0}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 58
    :try_start_4
    const-string p0, "FreeReflection unseal succeeded"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v1, v2

    goto :goto_4

    :catchall_3
    move-exception p0

    move v1, v2

    goto :goto_3

    :catchall_4
    move-exception p0

    .line 60
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reflection.unseal failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 65
    sput-boolean v2, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    :cond_5
    return v1
.end method
