.class public Lio/vanta/utils/CrashMonitor$CrashInfo;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/CrashMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashInfo"
.end annotation


# instance fields
.field public final crashType:Ljava/lang/String;

.field public final errorMessage:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final stackTrace:Ljava/lang/String;

.field public final timestamp:J

.field public final wasRecovered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->crashType:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->packageName:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->errorMessage:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->timestamp:J

    .line 63
    iput-boolean p5, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->wasRecovered:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crash["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->crashType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    iget-boolean v1, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->wasRecovered:Z

    if-eqz v1, :cond_0

    const-string v1, "RECOVERED"

    goto :goto_0

    :cond_0
    const-string v1, "FAILED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lio/vanta/utils/CrashMonitor$CrashInfo;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 70
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
