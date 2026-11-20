.class public interface abstract Lvanta/android/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Component"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.pm.PackageParser$Component"
.end annotation


# virtual methods
.method public abstract className()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract componentName()Landroid/content/ComponentName;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract intents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
