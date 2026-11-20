.class Lio/vanta/utils/CrashMonitor$MemoryCrashRecovery;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Lio/vanta/utils/CrashMonitor$RecoveryStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/CrashMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCrashRecovery"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/CrashMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/CrashMonitor$MemoryCrashRecovery;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptRecovery(Lio/vanta/utils/CrashMonitor$CrashInfo;)Z
    .locals 2

    .line 631
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Memory crash recovery failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashMonitor"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 621
    const-string p1, "OutOfMemoryError"

    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Memory"

    .line 623
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SIGSEGV"

    .line 624
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 616
    const-string v0, "Memory Crash Recovery"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method
