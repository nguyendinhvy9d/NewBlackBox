.class public interface abstract Lvanta/android/content/pm/PackageParserSigningDetailsContext;
.super Ljava/lang/Object;
.source "PackageParserSigningDetailsContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.content.pm.PackageParser$SigningDetails"
.end annotation


# virtual methods
.method public abstract _check_hasPastSigningCertificates()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_hasSignatures()Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_pastSigningCertificates()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_signatures()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_pastSigningCertificates(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_signatures(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract hasPastSigningCertificates()Ljava/lang/Boolean;
.end method

.method public abstract hasSignatures()Ljava/lang/Boolean;
.end method

.method public abstract pastSigningCertificates()[Landroid/content/pm/Signature;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract signatures()[Landroid/content/pm/Signature;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
