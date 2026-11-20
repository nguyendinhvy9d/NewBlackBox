.class public interface abstract Lvanta/android/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/android/content/pm/PackageParser$Package;,
        Lvanta/android/content/pm/PackageParser$Activity;,
        Lvanta/android/content/pm/PackageParser$Provider;,
        Lvanta/android/content/pm/PackageParser$Service;,
        Lvanta/android/content/pm/PackageParser$Permission;,
        Lvanta/android/content/pm/PackageParser$PermissionGroup;,
        Lvanta/android/content/pm/PackageParser$Component;,
        Lvanta/android/content/pm/PackageParser$SigningDetails;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.pm.PackageParser"
.end annotation


# virtual methods
.method public abstract _new(Ljava/lang/String;)Landroid/content/pm/PackageParser;
    .annotation runtime Lvanta/nomadengine/annotation/BConstructor;
    .end annotation
.end method

.method public abstract collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
