.class public interface abstract Lvanta/com/android/internal/net/VpnConfig;
.super Ljava/lang/Object;
.source "VpnConfig.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "com.android.internal.net.VpnConfig"
.end annotation


# virtual methods
.method public abstract allowedApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract disallowedApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract user()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
