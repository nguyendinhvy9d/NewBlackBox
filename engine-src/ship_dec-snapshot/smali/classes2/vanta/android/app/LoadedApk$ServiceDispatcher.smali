.class public interface abstract Lvanta/android/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/app/LoadedApk$ServiceDispatcher$InnerConnection;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.app.LoadedApk$ServiceDispatcher"
.end annotation


# virtual methods
.method public abstract mConnection()Landroid/content/ServiceConnection;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract mContext()Landroid/content/Context;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
