.class public Lio/vanta/utils/ReflectionClass;
.super Ljava/lang/Object;
.source "ReflectionClass.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 5

    .line 14
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    .line 19
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 23
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " class "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 27
    :cond_2c
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    if-eqz v0, :cond_3f

    .line 29
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_3f

    .line 30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " extends "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    .line 34
    :cond_3f
    array-length v0, v1

    if-lez v0, :cond_5e

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    :goto_4a
    array-length v2, v1

    if-ge v0, v2, :cond_5e

    if-lez v0, :cond_56

    .line 39
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    :cond_56
    aget-object v2, v1, v0

    invoke-static {v2}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 45
    :cond_5e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printConstructors(Ljava/lang/Class;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 49
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printMethods(Ljava/lang/Class;)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 51
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printFields(Ljava/lang/Class;)V

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printExtendsChain(Ljava/lang/Class;)V
    :try_end_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_82} :catch_83

    return-void

    :catch_83
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void
.end method

.method private static printConstructors(Ljava/lang/Class;)V
    .registers 9

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 65
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_ac

    aget-object v3, p0, v2

    .line 66
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 67
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 71
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 75
    :cond_3c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move v5, v1

    .line 77
    :goto_65
    array-length v6, v4

    const-string v7, ", "

    if-ge v5, v6, :cond_79

    if-lez v5, :cond_71

    .line 79
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 81
    :cond_71
    aget-object v6, v4, v5

    invoke-static {v6}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 83
    :cond_79
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 87
    array-length v4, v3

    if-lez v4, :cond_a1

    .line 88
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " throws "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v4, v1

    .line 89
    :goto_8f
    array-length v5, v3

    if-ge v4, v5, :cond_a1

    if-lez v4, :cond_99

    .line 91
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    :cond_99
    aget-object v5, v3, v4

    invoke-static {v5}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 97
    :cond_a1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_ac
    return-void
.end method

.method public static printExtendsChain(Ljava/lang/Class;)V
    .registers 3

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\nExtends chain:\n    "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 199
    :goto_e
    const-class v0, Ljava/lang/Object;

    const-string v1, " --> "

    if-eq p0, v0, :cond_21

    .line 200
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 201
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_e

    .line 204
    :cond_21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    return-void
.end method

.method private static printFields(Ljava/lang/Class;)V
    .registers 9

    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 150
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_5d

    aget-object v2, p0, v1

    .line 151
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 152
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " "

    if-lez v5, :cond_3f

    .line 156
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    :cond_3f
    invoke-static {v3}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    .line 159
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5d
    return-void
.end method

.method private static printMethods(Ljava/lang/Class;)V
    .registers 11

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_a7

    aget-object v3, p0, v2

    .line 106
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 107
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 109
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, " "

    if-lez v7, :cond_40

    .line 113
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 115
    :cond_40
    invoke-static {v4}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    .line 116
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move v5, v1

    .line 120
    :goto_60
    array-length v6, v4

    const-string v7, ", "

    if-ge v5, v6, :cond_74

    if-lez v5, :cond_6c

    .line 122
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 124
    :cond_6c
    aget-object v6, v4, v5

    invoke-static {v6}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 127
    :cond_74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 131
    array-length v4, v3

    if-lez v4, :cond_9c

    .line 132
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " throws "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v4, v1

    .line 133
    :goto_8a
    array-length v5, v3

    if-ge v4, v5, :cond_9c

    if-lez v4, :cond_94

    .line 135
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    :cond_94
    aget-object v5, v3, v4

    invoke-static {v5}, Lio/vanta/utils/ReflectionClass;->printType(Ljava/lang/Class;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 141
    :cond_9c
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_a7
    return-void
.end method

.method private static printType(Ljava/lang/Class;)V
    .registers 5

    .line 166
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 167
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_bf

    .line 168
    const-string v0, "[C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 169
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "char[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1e
    const-string v0, "[B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 171
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "byte[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_2e
    const-string v0, "[S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 173
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "short[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_3e
    const-string v0, "[I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 175
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "int[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_4e
    const-string v0, "[J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 177
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "long[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_5e
    const-string v0, "[F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 179
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "float[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_6e
    const-string v0, "[D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 181
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "double[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_7e
    const-string v0, "[Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 183
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "boolean[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_8e
    const-string v0, "[L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_be
    return-void

    .line 189
    :cond_bf
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
