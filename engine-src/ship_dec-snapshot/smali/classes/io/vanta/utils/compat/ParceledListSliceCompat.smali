.class public Lio/vanta/utils/compat/ParceledListSliceCompat;
.super Ljava/lang/Object;
.source "ParceledListSliceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lvanta/android/content/pm/BRParceledListSlice;->get()Lvanta/android/content/pm/ParceledListSliceStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lvanta/android/content/pm/ParceledListSliceStatic;->_new(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-static {}, Lvanta/android/content/pm/BRParceledListSlice;->get()Lvanta/android/content/pm/ParceledListSliceStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/pm/ParceledListSliceStatic;->_new()Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 26
    invoke-static {v0}, Lvanta/android/content/pm/BRParceledListSlice;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ParceledListSliceContext;

    move-result-object v2

    invoke-interface {v2, v1}, Lvanta/android/content/pm/ParceledListSliceContext;->append(Ljava/lang/Object;)Ljava/lang/Boolean;

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v0}, Lvanta/android/content/pm/BRParceledListSlice;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ParceledListSliceContext;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lvanta/android/content/pm/ParceledListSliceContext;->setLastSlice(Z)Ljava/lang/Void;

    return-object v0
.end method

.method public static isParceledListSlice(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {}, Lvanta/android/content/pm/BRParceledListSlice;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {}, Lvanta/android/content/pm/BRParceledListSlice;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
