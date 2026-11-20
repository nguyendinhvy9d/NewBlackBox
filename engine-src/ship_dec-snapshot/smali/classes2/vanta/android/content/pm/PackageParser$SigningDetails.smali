.class public interface abstract Lvanta/android/content/pm/PackageParser$SigningDetails;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvanta/android/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningDetails"
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "android.content.pm.PackageParser$SigningDetails"
.end annotation


# virtual methods
.method public abstract hasPastSigningCertificates()Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract hasSignatures()Ljava/lang/Boolean;
    .annotation runtime Lvanta/nomadengine/annotation/BMethod;
    .end annotation
.end method

.method public abstract pastSigningCertificates()[Landroid/content/pm/Signature;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract signatures()[Landroid/content/pm/Signature;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
