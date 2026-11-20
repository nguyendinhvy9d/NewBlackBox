.class public Lio/vanta/utils/compat/HiddenApiCompat;
.super Ljava/lang/Object;
.source "HiddenApiCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenApiCompat"

.field private static volatile sExempted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bypassHiddenApi(Landroid/content/Context;)Z
    .registers 8

    .line 22
    const-string v0, "HiddenApiCompat"

    sget-boolean v1, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    return v2

    .line 26
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_11

    .line 27
    sput-boolean v2, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    return v2

    :cond_11
    const/4 v1, 0x0

    .line 35
    :try_start_12
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "L"

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 37
    const-string v3, "HiddenApiBypass successfully added exemptions (\'L\')"

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_24

    goto :goto_3b

    :catchall_24
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
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-static {}, Lio/vanta/core/NativeCore;->disableHiddenApi()Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_4b

    if-eqz v3, :cond_66

    .line 47
    :try_start_41
    const-string v1, "NativeCore.disableHiddenApi succeeded"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_48

    move v1, v2

    goto :goto_66

    :catchall_48
    move-exception v1

    move v3, v2

    goto :goto_4f

    :catchall_4b
    move-exception v3

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    .line 50
    :goto_4f
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

    :cond_66
    :goto_66
    if-nez v1, :cond_8e

    if-eqz p0, :cond_8e

    .line 56
    :try_start_6a
    invoke-static {p0}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_77

    .line 58
    :try_start_6d
    const-string p0, "FreeReflection unseal succeeded"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_74

    move v1, v2

    goto :goto_8e

    :catchall_74
    move-exception p0

    move v1, v2

    goto :goto_78

    :catchall_77
    move-exception p0

    .line 60
    :goto_78
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

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_92

    .line 65
    sput-boolean v2, Lio/vanta/utils/compat/HiddenApiCompat;->sExempted:Z

    :cond_92
    return v1
.end method
