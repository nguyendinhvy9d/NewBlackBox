.class Lio/vanta/utils/CrashMonitor$3;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/utils/CrashMonitor;->startCrashPatternAnalysis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 219
    invoke-static {}, Lio/vanta/utils/CrashMonitor;->-$$Nest$smanalyzeCrashPatterns()V

    .line 221
    invoke-static {}, Lio/vanta/utils/CrashMonitor;->-$$Nest$sfgetsMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
