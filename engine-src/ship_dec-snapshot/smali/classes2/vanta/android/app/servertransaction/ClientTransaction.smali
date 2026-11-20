.class public interface abstract Lvanta/android/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.servertransaction.ClientTransaction"
.end annotation


# virtual methods
.method public abstract mActivityCallbacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mActivityToken()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mLifecycleStateRequest()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
