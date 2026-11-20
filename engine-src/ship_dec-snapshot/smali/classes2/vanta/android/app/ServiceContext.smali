.class public interface abstract Lvanta/android/app/ServiceContext;
.super Ljava/lang/Object;
.source "ServiceContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.app.Service"
.end annotation


# virtual methods
.method public abstract _check_attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClass;
            value = Landroid/app/ActivityThread;
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Void;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClass;
            value = Landroid/app/ActivityThread;
        .end annotation
    .end param
.end method
