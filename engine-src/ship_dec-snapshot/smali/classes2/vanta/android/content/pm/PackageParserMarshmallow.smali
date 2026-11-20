.class public interface abstract Lvanta/android/content/pm/PackageParserMarshmallow;
.super Ljava/lang/Object;
.source "PackageParserMarshmallow.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.pm.PackageParser"
.end annotation


# virtual methods
.method public abstract _new()Landroid/content/pm/PackageParser;
    .annotation runtime Lvanta/nomadengine/annotation/BConstructor;
    .end annotation
.end method

.method public abstract collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method
