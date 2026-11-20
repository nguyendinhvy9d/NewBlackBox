.class public Lio/vanta/utils/NativeCrashPrevention$PreventionResult;
.super Ljava/lang/Object;
.source "NativeCrashPrevention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/NativeCrashPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreventionResult"
.end annotation


# instance fields
.field public final details:Ljava/lang/String;

.field public final preventionMethod:Ljava/lang/String;

.field public final success:Z

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->preventionMethod:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->success:Z

    .line 48
    iput-object p3, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->details:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->timestamp:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Prevention "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->success:Z

    if-eqz v1, :cond_0

    const-string v1, "successful"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " via "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->preventionMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/utils/NativeCrashPrevention$PreventionResult;->details:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
