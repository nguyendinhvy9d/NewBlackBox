.class public interface abstract Lio/vanta/utils/DexFileRecovery$RecoveryStrategy;
.super Ljava/lang/Object;
.source "DexFileRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/DexFileRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecoveryStrategy"
.end annotation


# virtual methods
.method public abstract attemptRecovery(Ljava/lang/String;)Lio/vanta/utils/DexFileRecovery$RecoveryResult;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method
