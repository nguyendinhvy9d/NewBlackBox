.class public Lvanta/nomadengine/BlackReflection;
.super Ljava/lang/Object;
.source "BlackReflection.java"


# static fields
.field public static CACHE:Z = false

.field public static DEBUG:Z = false

.field private static final sCallerProxyCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sProxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProxyWithExceptionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgenerateNullValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lvanta/nomadengine/BlackReflection;->generateNullValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetParamClass(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lvanta/nomadengine/BlackReflection;->getParamClass(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvanta/nomadengine/BlackReflection;->sProxyCache:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvanta/nomadengine/BlackReflection;->sProxyWithExceptionCache:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lvanta/nomadengine/BlackReflection;->sCallerProxyCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {p0, p1, p2}, Lvanta/nomadengine/BlackReflection;->getProxy(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-static {p0}, Lvanta/nomadengine/BlackReflection;->getClassNameByBlackClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    new-instance v5, Lvanta/nomadengine/BlackReflection$1;

    invoke-direct {v5, v1, v2, p2}, Lvanta/nomadengine/BlackReflection$1;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Class;Z)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    .line 162
    sget-object p1, Lvanta/nomadengine/BlackReflection;->sProxyWithExceptionCache:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 164
    :cond_2
    sget-object p1, Lvanta/nomadengine/BlackReflection;->sProxyCache:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method private static generateNullValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_1
    new-instance p0, Lvanta/nomadengine/BlackNullPointerException;

    const-string v0, "value is null!"

    invoke-direct {p0, v0}, Lvanta/nomadengine/BlackNullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getClassNameByBlackClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 220
    const-class v0, Lvanta/nomadengine/annotation/BClass;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lvanta/nomadengine/annotation/BClass;

    .line 221
    const-class v1, Lvanta/nomadengine/annotation/BClassName;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lvanta/nomadengine/annotation/BClassName;

    .line 222
    const-class v2, Lvanta/nomadengine/annotation/BClassNameNotProcess;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lvanta/nomadengine/annotation/BClassNameNotProcess;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not found @BlackClass or @BlackStrClass"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 228
    invoke-interface {v0}, Lvanta/nomadengine/annotation/BClass;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    .line 230
    invoke-interface {v1}, Lvanta/nomadengine/annotation/BClassName;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 232
    :cond_3
    invoke-interface {p0}, Lvanta/nomadengine/annotation/BClassNameNotProcess;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static getParamClass(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 195
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    .line 197
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 198
    aget-object v4, v0, v3

    .line 200
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 201
    instance-of v8, v7, Lvanta/nomadengine/annotation/BParamClassName;

    if-eqz v8, :cond_0

    .line 203
    check-cast v7, Lvanta/nomadengine/annotation/BParamClassName;

    invoke-interface {v7}, Lvanta/nomadengine/annotation/BParamClassName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2

    .line 205
    :cond_0
    instance-of v8, v7, Lvanta/nomadengine/annotation/BParamClass;

    if-eqz v8, :cond_1

    .line 207
    check-cast v7, Lvanta/nomadengine/annotation/BParamClass;

    invoke-interface {v7}, Lvanta/nomadengine/annotation/BParamClass;->value()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 213
    :cond_2
    aget-object v4, p0, v3

    aput-object v4, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static getProxy(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 179
    :try_start_0
    sget-object p1, Lvanta/nomadengine/BlackReflection;->sProxyWithExceptionCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 181
    :cond_0
    sget-object p1, Lvanta/nomadengine/BlackReflection;->sProxyCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
