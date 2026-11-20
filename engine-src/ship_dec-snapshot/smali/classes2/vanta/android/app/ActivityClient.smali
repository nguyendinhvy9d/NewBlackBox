.class public interface abstract Lvanta/android/app/ActivityClient;
.super Ljava/lang/Object;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/app/ActivityClient$ActivityClientControllerSingleton;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.ActivityClient"
.end annotation


# virtual methods
.method public abstract INTERFACE_SINGLETON()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract getActivityClientController()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract getInstance()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract setActivityClientController(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method
