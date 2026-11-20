.class public abstract Lio/vanta/fake/hook/ClassInvocationStub;
.super Ljava/lang/Object;
.source "ClassInvocationStub.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lio/vanta/fake/hook/IInjectHook;


# static fields
.field public static final TAG:Ljava/lang/String; = "ClassInvocationStub"


# instance fields
.field private mBase:Ljava/lang/Object;

.field private final mMethodHookMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/fake/hook/MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyInvocation:Ljava/lang/Object;

.field private onlyProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addMethodHook(Lio/vanta/fake/hook/MethodHook;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/vanta/fake/hook/MethodHook;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getBase()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    return-object v0
.end method

.method protected getProxyInvocation()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getWho()Ljava/lang/Object;
.end method

.method protected initAnnotation(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 71
    const-class v0, Lio/vanta/fake/hook/ProxyMethod;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/vanta/fake/hook/ProxyMethod;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lio/vanta/fake/hook/ProxyMethod;->value()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/fake/hook/MethodHook;

    invoke-virtual {p0, v0, v1}, Lio/vanta/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :cond_0
    :goto_0
    const-class v0, Lio/vanta/fake/hook/ProxyMethods;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/vanta/fake/hook/ProxyMethods;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Lio/vanta/fake/hook/ProxyMethods;->value()[Ljava/lang/String;

    move-result-object v0

    .line 85
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/vanta/fake/hook/MethodHook;

    invoke-virtual {p0, v3, v4}, Lio/vanta/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected abstract inject(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public injectHook()V
    .locals 8

    .line 45
    invoke-virtual {p0}, Lio/vanta/fake/hook/ClassInvocationStub;->getWho()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_3

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/utils/MethodParameterUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    .line 51
    iget-boolean v1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->onlyProxy:Z

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/hook/ClassInvocationStub;->inject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lio/vanta/fake/hook/ClassInvocationStub;->onBindMethod()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 58
    invoke-virtual {p0, v4}, Lio/vanta/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/vanta/fake/hook/ScanClass;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/vanta/fake/hook/ScanClass;

    if-eqz v0, :cond_4

    .line 62
    invoke-interface {v0}, Lio/vanta/fake/hook/ScanClass;->value()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 64
    invoke-virtual {p0, v7}, Lio/vanta/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/fake/hook/MethodHook;

    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Lio/vanta/fake/hook/MethodHook;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lio/vanta/fake/hook/MethodHook;->beforeHook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 118
    :cond_1
    iget-object v0, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lio/vanta/fake/hook/MethodHook;->hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lio/vanta/fake/hook/MethodHook;->afterHook(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method

.method protected onlyProxy(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lio/vanta/fake/hook/ClassInvocationStub;->onlyProxy:Z

    return-void
.end method
