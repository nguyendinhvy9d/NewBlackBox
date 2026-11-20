.class public interface abstract Lvanta/java/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "java.lang.ThreadGroup"
.end annotation


# virtual methods
.method public abstract groups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method

.method public abstract parent()Ljava/lang/ThreadGroup;
    .annotation runtime Lvanta/nomadengine/annotation/BField;
    .end annotation
.end method
