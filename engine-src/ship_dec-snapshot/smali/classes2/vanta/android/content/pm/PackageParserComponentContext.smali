.class public interface abstract Lvanta/android/content/pm/PackageParserComponentContext;
.super Ljava/lang/Object;
.source "PackageParserComponentContext.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "android.content.pm.PackageParser$Component"
.end annotation


# virtual methods
.method public abstract _check_className()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_componentName()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_intents()Ljava/lang/reflect/Field;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldCheckNotProcess;
    .end annotation
.end method

.method public abstract _set_className(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_componentName(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract _set_intents(Ljava/lang/Object;)V
    .annotation runtime Lvanta/nomadengine/annotation/BFieldSetNotProcess;
    .end annotation
.end method

.method public abstract className()Ljava/lang/String;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method

.method public abstract componentName()Landroid/content/ComponentName;
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
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
    .annotation runtime Lvanta/nomadengine/annotation/BFieldNotProcess;
    .end annotation
.end method
