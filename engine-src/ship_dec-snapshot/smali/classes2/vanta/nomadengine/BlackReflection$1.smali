.class Lvanta/nomadengine/BlackReflection$1;
.super Ljava/lang/Object;
.source "BlackReflection.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$aClass:Ljava/lang/Class;

.field final synthetic val$weakCaller:Ljava/lang/ref/WeakReference;

.field final synthetic val$withException:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lvanta/nomadengine/BlackReflection$1;->val$weakCaller:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lvanta/nomadengine/BlackReflection$1;->val$withException:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lvanta/nomadengine/BlackReflection$1;->val$weakCaller:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v1, v4

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 61
    :goto_1
    const-class v5, Lvanta/nomadengine/annotation/BField;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lvanta/nomadengine/annotation/BField;

    .line 62
    const-class v6, Lvanta/nomadengine/annotation/BFieldNotProcess;

    invoke-virtual {p2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lvanta/nomadengine/annotation/BFieldNotProcess;

    if-nez v5, :cond_c

    if-eqz v6, :cond_2

    goto/16 :goto_4

    .line 78
    :cond_2
    const-class v5, Lvanta/nomadengine/annotation/BFieldSetNotProcess;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lvanta/nomadengine/annotation/BFieldSetNotProcess;

    if-eqz v5, :cond_5

    .line 81
    const-string p2, "_set_"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p2}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvanta/nomadengine/utils/Reflector;->field(Ljava/lang/String;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 84
    aget-object p2, p3, v2

    invoke-virtual {p1, p2}, Lvanta/nomadengine/utils/Reflector;->set(Ljava/lang/Object;)Lvanta/nomadengine/utils/Reflector;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 89
    :cond_4
    aget-object p2, p3, v2

    invoke-virtual {p1, v1, p2}, Lvanta/nomadengine/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lvanta/nomadengine/utils/Reflector;

    .line 91
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 95
    :cond_5
    const-class v2, Lvanta/nomadengine/annotation/BFieldCheckNotProcess;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lvanta/nomadengine/annotation/BFieldCheckNotProcess;

    .line 96
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "_check_"

    if-eqz v2, :cond_6

    .line 98
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p2}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvanta/nomadengine/utils/Reflector;->field(Ljava/lang/String;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lvanta/nomadengine/utils/Reflector;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    return-object v4

    .line 107
    :cond_6
    :try_start_3
    invoke-static {p2}, Lvanta/nomadengine/BlackReflection;->-$$Nest$smgetParamClass(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v2

    .line 110
    const-class v6, Lvanta/nomadengine/annotation/BMethodCheckNotProcess;

    invoke-virtual {p2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lvanta/nomadengine/annotation/BMethodCheckNotProcess;

    if-eqz v6, :cond_7

    .line 113
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p2}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lvanta/nomadengine/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    invoke-virtual {p1}, Lvanta/nomadengine/utils/Reflector;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_1
    return-object v4

    .line 122
    :cond_7
    :try_start_5
    const-class v4, Lvanta/nomadengine/annotation/BConstructor;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lvanta/nomadengine/annotation/BConstructor;

    .line 123
    const-class v5, Lvanta/nomadengine/annotation/BConstructorNotProcess;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lvanta/nomadengine/annotation/BConstructorNotProcess;

    if-nez v4, :cond_b

    if-eqz p2, :cond_8

    goto :goto_3

    .line 130
    :cond_8
    iget-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p2}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lvanta/nomadengine/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    if-eqz v3, :cond_9

    .line 132
    invoke-virtual {p1, p3}, Lvanta/nomadengine/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    if-nez v1, :cond_a

    .line 135
    invoke-static {v0}, Lvanta/nomadengine/BlackReflection;->-$$Nest$smgenerateNullValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 137
    :cond_a
    invoke-virtual {p1, v1, p3}, Lvanta/nomadengine/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 125
    :cond_b
    :goto_3
    iget-object p1, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p1}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    invoke-virtual {p1, v2}, Lvanta/nomadengine/utils/Reflector;->constructor([Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p3}, Lvanta/nomadengine/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_c
    :goto_4
    iget-object p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$aClass:Ljava/lang/Class;

    invoke-static {p2}, Lvanta/nomadengine/utils/Reflector;->on(Ljava/lang/Class;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvanta/nomadengine/utils/Reflector;->field(Ljava/lang/String;)Lvanta/nomadengine/utils/Reflector;

    move-result-object p1

    if-eqz v3, :cond_d

    .line 67
    invoke-virtual {p1}, Lvanta/nomadengine/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    if-nez v1, :cond_e

    .line 70
    invoke-static {v0}, Lvanta/nomadengine/BlackReflection;->-$$Nest$smgenerateNullValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 72
    :cond_e
    invoke-virtual {p1, v1}, Lvanta/nomadengine/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object p1

    :catchall_2
    move-exception p1

    .line 141
    sget-boolean p2, Lvanta/nomadengine/BlackReflection;->DEBUG:Z

    if-eqz p2, :cond_10

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 145
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    :cond_10
    :goto_5
    instance-of p2, p1, Lvanta/nomadengine/BlackNullPointerException;

    if-nez p2, :cond_12

    .line 151
    iget-boolean p2, p0, Lvanta/nomadengine/BlackReflection$1;->val$withException:Z

    if-nez p2, :cond_11

    .line 156
    invoke-static {v0}, Lvanta/nomadengine/BlackReflection;->-$$Nest$smgenerateNullValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :cond_11
    throw p1

    .line 149
    :cond_12
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
