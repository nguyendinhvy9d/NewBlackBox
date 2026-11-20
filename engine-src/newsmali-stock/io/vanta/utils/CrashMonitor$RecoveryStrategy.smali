.class public interface abstract Lio/vanta/utils/CrashMonitor$RecoveryStrategy;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/CrashMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecoveryStrategy"
.end annotation


# virtual methods
.method public abstract attemptRecovery(Lio/vanta/utils/CrashMonitor$CrashInfo;)Z
.end method

.method public abstract canHandle(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method
