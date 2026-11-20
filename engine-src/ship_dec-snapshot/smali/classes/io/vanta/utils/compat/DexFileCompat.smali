.class public Lio/vanta/utils/compat/DexFileCompat;
.super Ljava/lang/Object;
.source "DexFileCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookies(Ldalvik/system/DexFile;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p0

    const-string v1, "mCookie"

    .line 27
    invoke-virtual {p0, v1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lio/vanta/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    .line 29
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isM()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    check-cast p0, [J

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    .line 34
    :cond_2
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getCookies(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {p0}, Lio/vanta/utils/compat/DexFileCompat;->getDexFiles(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexFile;

    .line 16
    invoke-static {v1}, Lio/vanta/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2

    .line 58
    invoke-static {p0}, Lio/vanta/utils/compat/DexFileCompat;->getDexPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 60
    new-array p0, v0, [Ljava/lang/Object;

    return-object p0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p0

    const-string v1, "dexElements"

    .line 64
    invoke-virtual {p0, v1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lio/vanta/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    new-array p0, v0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static getDexFiles(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {p0}, Lio/vanta/utils/compat/DexFileCompat;->getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p0

    .line 45
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 47
    :try_start_0
    invoke-static {v3}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object v3

    const-string v4, "dexFile"

    .line 48
    invoke-virtual {v3, v4}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lio/vanta/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldalvik/system/DexFile;

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDexPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 74
    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    const-string v1, "pathList"

    .line 75
    invoke-virtual {v0, v1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lio/vanta/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
