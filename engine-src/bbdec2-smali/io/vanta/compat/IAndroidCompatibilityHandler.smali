.class public interface abstract Lio/vanta/compat/IAndroidCompatibilityHandler;
.super Ljava/lang/Object;
.source "IAndroidCompatibilityHandler.java"


# virtual methods
.method public abstract fixAttributionSource(Ljava/lang/Object;ILjava/lang/String;)V
.end method

.method public abstract getMaxApi()I
.end method

.method public abstract getMinApi()I
.end method

.method public abstract hasActivityClient()Z
.end method

.method public abstract hasActivityTaskManager()Z
.end method

.method public abstract hasAttributionSource()Z
.end method

.method public abstract hasPermissionManagerService()Z
.end method

.method public abstract isBackgroundServiceRestricted()Z
.end method

.method public abstract prepareDexFile(Ljava/io/File;)V
.end method

.method public abstract sanitizePendingIntentFlags(IZ)I
.end method

.method public abstract sanitizeReceiverFlags(IZ)I
.end method
