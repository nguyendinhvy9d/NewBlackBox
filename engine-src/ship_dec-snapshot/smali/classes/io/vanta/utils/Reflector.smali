.class public Lio/vanta/utils/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/Reflector$QuietReflector;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Reflector"


# instance fields
.field protected mCaller:Ljava/lang/Object;

.field protected mConstructor:Ljava/lang/reflect/Constructor;

.field protected mField:Ljava/lang/reflect/Field;

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMethodByFirstName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 450
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static on(Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector;"
        }
    .end annotation

    .line 39
    new-instance v0, Lio/vanta/utils/Reflector;

    invoke-direct {v0}, Lio/vanta/utils/Reflector;-><init>()V

    .line 40
    iput-object p0, v0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lio/vanta/utils/Reflector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const-class v0, Lio/vanta/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lio/vanta/utils/Reflector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const-class v0, Lio/vanta/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/Class;)Lio/vanta/utils/Reflector;

    move-result-object p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Oops!"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/Class;)Lio/vanta/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/utils/Reflector;->bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lio/vanta/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    const-string v0, "Oops!"

    iget-object v1, p0, Lio/vanta/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const-string v2, "Method"

    invoke-virtual {p0, p1, v1, v2}, Lio/vanta/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v1, p0, Lio/vanta/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 210
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_1

    .line 212
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_0

    .line 213
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 215
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 211
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 203
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_3

    .line 205
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_2

    .line 206
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 208
    :cond_2
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 204
    :cond_3
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method protected check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 89
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Need a caller!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " was null!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caller ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] is not a instance of type ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    .line 57
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public field(Ljava/lang/String;)Lio/vanta/utils/Reflector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 110
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 121
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_0
    throw v0
.end method

.method protected varargs findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 175
    :try_start_0
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 177
    iget-object v1, p0, Lio/vanta/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_0

    .line 179
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 177
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_0
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/vanta/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lio/vanta/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 143
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/vanta/utils/Reflector;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const/4 p2, 0x1

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 166
    iput-object p1, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 169
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    const-string v0, "Oops!"

    iget-object v1, p0, Lio/vanta/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 74
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception p1

    .line 72
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Constructor was null!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lio/vanta/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v0, p0, Lio/vanta/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 157
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unbind()Lio/vanta/utils/Reflector;
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lio/vanta/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method
