.class public Lio/vanta/jnihook/ReflectCore;
.super Ljava/lang/Object;
.source "ReflectCore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static set(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 13
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "accessFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :goto_23
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2a
    if-ge v3, v1, :cond_34

    aget-object v4, v0, v3

    .line 21
    invoke-static {p0, v4}, Lio/vanta/jnihook/jni/JniHook;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 23
    :cond_34
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_3a
    if-ge v3, v1, :cond_44

    aget-object v4, v0, v3

    .line 24
    invoke-static {p0, v4}, Lio/vanta/jnihook/jni/JniHook;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 26
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    :goto_49
    if-ge v2, v0, :cond_53

    aget-object v1, p0, v2

    .line 27
    invoke-static {v1}, Lio/vanta/jnihook/ReflectCore;->set(Ljava/lang/Class;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_53
    return-void
.end method
