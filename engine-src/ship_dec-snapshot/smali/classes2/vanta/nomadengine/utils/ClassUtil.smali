.class public Lvanta/nomadengine/utils/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classReady(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    const-class v0, Lvanta/nomadengine/annotation/BClassNameNotProcess;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lvanta/nomadengine/annotation/BClassNameNotProcess;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lvanta/nomadengine/annotation/BClassNameNotProcess;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    const-class v0, Lvanta/nomadengine/annotation/BClass;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lvanta/nomadengine/annotation/BClass;

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Lvanta/nomadengine/annotation/BClass;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    const-class v0, Lvanta/nomadengine/annotation/BClassName;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lvanta/nomadengine/annotation/BClassName;

    if-eqz p0, :cond_2

    .line 20
    invoke-interface {p0}, Lvanta/nomadengine/annotation/BClassName;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static classReady(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
