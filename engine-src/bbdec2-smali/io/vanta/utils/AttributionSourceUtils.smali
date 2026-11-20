.class public Lio/vanta/utils/AttributionSourceUtils;
.super Ljava/lang/Object;
.source "AttributionSourceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttributionSourceUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSafeAttributionSource()Ljava/lang/Object;
    .registers 9

    .line 131
    const-string v0, "AttributionSourceUtils"

    const-string v1, "Could not create safe AttributionSource: "

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "android.content.AttributionSource"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_5d

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 138
    :try_start_e
    new-array v4, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 140
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Lio/vanta/utils/AttributionSourceUtils;->xjAttrPkg()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_34

    return-object v0

    .line 144
    :catch_34
    :try_start_34
    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 146
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    invoke-static {v3}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_46} :catch_47

    return-object v3

    :catch_47
    move-exception v3

    .line 151
    :try_start_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_5d

    return-object v2

    :catch_5d
    move-exception v1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating safe AttributionSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static fixArgsToVuid([Ljava/lang/Object;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_3d

    aget-object v1, p0, v0

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttributionSource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mAttributionSourceState"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lio/vanta/VantaCore;->getBUid()I

    move-result v3

    const-string v4, "com.google.android.gms"

    invoke-static {v2, v3, v4}, Lio/vanta/utils/AttributionSourceUtils;->fixStateRecursive(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_39

    :cond_38
    goto :goto_3a

    :catchall_39
    move-exception v2

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3d
    return-void
.end method

.method public static fixAttributionSourceInArgs([Ljava/lang/Object;)V
    .registers 7

    if-nez p0, :cond_4

    goto/16 :goto_77

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 15
    :goto_6
    array-length v2, p0

    const-string v3, "AttributionSourceUtils"

    if-ge v1, v2, :cond_42

    .line 16
    aget-object v2, p0, v1

    if-eqz v2, :cond_3f

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AttributionSource"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 19
    :try_start_1f
    invoke-static {v2}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V

    .line 20
    const-string v2, "Fixed AttributionSource UID in method arguments"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception v2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to fix AttributionSource in args: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 28
    :cond_42
    :goto_42
    array-length v1, p0

    if-ge v0, v1, :cond_77

    .line 29
    aget-object v1, p0, v0

    if-eqz v1, :cond_74

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bundle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 32
    :try_start_59
    invoke-static {v1}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInBundle(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_74

    :catch_5d
    move-exception v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fix AttributionSource in Bundle: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_77
    :goto_77
    return-void
.end method

.method public static fixAttributionSourceInBundle(Ljava/lang/Object;)V
    .registers 9

    .line 103
    const-string v0, "AttributionSourceUtils"

    if-nez p0, :cond_6

    goto/16 :goto_87

    .line 106
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "keySet"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 109
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_70

    .line 111
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 112
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AttributionSource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 115
    invoke-static {v4}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fixed AttributionSource UID in Bundle key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6f} :catch_1f

    goto :goto_1f

    :catch_70
    move-exception p0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error fixing AttributionSource in Bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    return-void
.end method

.method public static fixAttributionSourceUid(Ljava/lang/Object;)V
    .registers 14

    .line 42
    const-string v0, "AttributionSourceUtils"

    if-nez p0, :cond_6

    goto/16 :goto_116

    .line 43
    :cond_6
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/utils/compat/HiddenApiCompat;->bypassHiddenApi(Landroid/content/Context;)Z

    .line 45
    :try_start_d
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v1

    invoke-static {p0, v1}, Lio/vanta/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_2c

    :catchall_15
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContextCompat.fixAttributionSourceState failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    const/4 v1, 0x1

    .line 51
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mAttributionSourceState"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 55
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v3

    invoke-static {}, Lio/vanta/utils/AttributionSourceUtils;->xjAttrPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/vanta/utils/AttributionSourceUtils;->fixStateRecursive(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_4b

    :catchall_4b
    :cond_4b
    const/4 v2, 0x0

    .line 60
    :try_start_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getNext"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_65

    if-eq v3, p0, :cond_65

    .line 63
    invoke-static {v3}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_65

    .line 68
    :catchall_65
    :cond_65
    :try_start_65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x6

    .line 69
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "mUid"

    aput-object v6, v5, v2

    const-string v6, "uid"

    aput-object v6, v5, v1

    const-string v6, "mCallingUid"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "callingUid"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "mSourceUid"

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const-string v6, "sourceUid"

    const/4 v10, 0x5

    aput-object v6, v5, v10

    move v6, v2

    :goto_89
    if-ge v6, v4, :cond_b9

    .line 70
    aget-object v10, v5, v6
    :try_end_8d
    .catchall {:try_start_65 .. :try_end_8d} :catchall_ff

    .line 72
    :try_start_8d
    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 73
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fixed AttributionSource UID via field: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_8d .. :try_end_b5} :catchall_b6

    goto :goto_b9

    :catchall_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 81
    :cond_b9
    :goto_b9
    :try_start_b9
    const-string v4, "setUid"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d7
    .catchall {:try_start_b9 .. :try_end_d7} :catchall_d7

    .line 86
    :catchall_d7
    :try_start_d7
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "mPackageName"

    aput-object v5, v4, v2

    const-string v5, "packageName"

    aput-object v5, v4, v1

    const-string v5, "mSourcePackage"

    aput-object v5, v4, v7

    const-string v5, "sourcePackage"

    aput-object v5, v4, v8

    :goto_e9
    if-ge v2, v9, :cond_116

    .line 87
    aget-object v5, v4, v2
    :try_end_ed
    .catchall {:try_start_d7 .. :try_end_ed} :catchall_ff

    .line 89
    :try_start_ed
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-static {}, Lio/vanta/utils/AttributionSourceUtils;->xjAttrPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_fb
    .catchall {:try_start_ed .. :try_end_fb} :catchall_fc

    goto :goto_116

    :catchall_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :catchall_ff
    move-exception p0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error fixing AttributionSource UID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    :goto_116
    return-void
.end method

.method private static fixStateRecursive(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 6

    if-nez p0, :cond_3

    goto :goto_5b

    :cond_3
    const/4 v0, 0x1

    .line 203
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_14

    .line 208
    :catchall_14
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 210
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_24

    .line 213
    :catchall_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_38

    .line 218
    :catchall_38
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 221
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_5b

    .line 222
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v0, :cond_5b

    aget-object v2, p0, v1

    .line 223
    invoke-static {v2, p1, p2}, Lio/vanta/utils/AttributionSourceUtils;->fixStateRecursive(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_5b

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :catchall_5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method public static validateAttributionSource(Ljava/lang/Object;)Z
    .registers 11

    .line 166
    const-string v0, "AttributionSourceUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    .line 169
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x6

    .line 170
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "mUid"

    aput-object v5, v4, v1

    const-string v5, "uid"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "mCallingUid"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "callingUid"

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "mSourceUid"

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const-string v5, "sourceUid"

    const/4 v7, 0x5

    aput-object v5, v4, v7

    move v5, v1

    :goto_2b
    if-ge v5, v3, :cond_60

    .line 172
    aget-object v7, v4, v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_69

    .line 174
    :try_start_2f
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 175
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 177
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_5d

    .line 178
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_5d

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AttributionSource UID validation passed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5c} :catch_5d

    return v6

    :catch_5d
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 190
    :cond_60
    :try_start_60
    const-string v2, "AttributionSource validation failed, attempting to fix"

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p0}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_69

    return v6

    :catch_69
    move-exception p0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error validating AttributionSource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static xjAttrPkg()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
