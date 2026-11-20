.class public interface abstract Lvanta/android/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/app/ActivityThread$ActivityClientRecord;,
        Lvanta/android/app/ActivityThread$ProviderClientRecord;,
        Lvanta/android/app/ActivityThread$ProviderClientRecordP;,
        Lvanta/android/app/ActivityThread$ProviderClientRecordJB;,
        Lvanta/android/app/ActivityThread$ProviderKeyJBMR1;,
        Lvanta/android/app/ActivityThread$AppBindData;,
        Lvanta/android/app/ActivityThread$H;,
        Lvanta/android/app/ActivityThread$CreateServiceData;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.ActivityThread"
.end annotation


# virtual methods
.method public abstract currentActivityThread()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract currentApplication()Landroid/app/Application;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract currentPackageName()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract getActivityClient(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getApplicationThread()Landroid/os/IBinder;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getHandler()Landroid/os/Handler;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getLaunchingActivity(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/Object;I)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "android.content.res.CompatibilityInfo"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getProcessName()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract getSystemContext()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract mActivities()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mAppThread()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mBoundApplication()Ljava/lang/Object;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mH()Landroid/os/Handler;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mInitialApplication()Landroid/app/Application;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mInstrumentation()Landroid/app/Instrumentation;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mLocalProvidersByName()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mPackages()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "*>;>;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mProviderMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract sPackageManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method

.method public abstract sPermissionManager()Landroid/os/IInterface;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticField;
    .end annotation
.end method

.method public abstract sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
