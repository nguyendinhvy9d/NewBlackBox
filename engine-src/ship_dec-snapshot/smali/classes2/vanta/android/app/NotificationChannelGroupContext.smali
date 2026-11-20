.class public interface abstract Lvanta/android/app/NotificationChannelGroupContext;
.super Ljava/lang/Object;
.source "NotificationChannelGroupContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.app.NotificationChannelGroup"
.end annotation


# virtual methods
.method public abstract _check_mChannels()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_mId()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_mChannels(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_mId(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract mChannels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract mId()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
