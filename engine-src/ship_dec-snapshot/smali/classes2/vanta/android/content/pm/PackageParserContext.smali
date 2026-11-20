.class public interface abstract Lvanta/android/content/pm/PackageParserContext;
.super Ljava/lang/Object;
.source "PackageParserContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.content.pm.PackageParser"
.end annotation


# virtual methods
.method public abstract _check_collectCertificates(Landroid/content/pm/PackageParser$Package;I)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract collectCertificates(Landroid/content/pm/PackageParser$Package;I)Ljava/lang/Void;
.end method

.method public abstract parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
.end method
