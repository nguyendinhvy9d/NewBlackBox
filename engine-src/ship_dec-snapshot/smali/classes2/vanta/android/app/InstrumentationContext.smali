.class public interface abstract Lvanta/android/app/InstrumentationContext;
.super Ljava/lang/Object;
.source "InstrumentationContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.app.Instrumentation"
.end annotation


# virtual methods
.method public abstract _check_execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Lvanta/android/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Lvanta/android/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
.end method
