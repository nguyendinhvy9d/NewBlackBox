.class public interface abstract Lvanta/android/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.os.ServiceManager"
.end annotation


# virtual methods
.method public abstract addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract checkService()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract getIServiceManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract listServices()[Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract sCache()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method

.method public abstract sServiceManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method
