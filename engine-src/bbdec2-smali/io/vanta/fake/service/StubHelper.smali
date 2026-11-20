.class public Lio/vanta/fake/service/StubHelper;
.super Ljava/lang/Object;
.source "StubHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14

    .line 18
    const-string v0, "StubHelper"

    const-string v1, "asInterface"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 19
    const-string v6, "get"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 20
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_79

    .line 26
    :try_start_19
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v4

    invoke-virtual {v5, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_23} :catch_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_79

    goto :goto_4f

    .line 30
    :catch_24
    :try_start_24
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    invoke-virtual {v5, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_79

    goto :goto_4f

    .line 33
    :catch_2f
    :try_start_2f
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 34
    array-length v7, v5

    move v8, v4

    :goto_35
    if-ge v8, v7, :cond_4e

    aget-object v9, v5, v8

    .line 35
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-static {v9}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v10

    if-ne v10, v3, :cond_4b

    move-object v5, v9

    goto :goto_4f

    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_4e
    move-object v5, v2

    :goto_4f
    if-eqz v5, :cond_62

    .line 44
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v7

    invoke-interface {v7, p0}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 45
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 47
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find asInterface method in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_78} :catch_79

    goto :goto_8c

    :catch_79
    move-exception v5

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to use generated stub class: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_8c
    :try_start_8c
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object p1

    invoke-interface {p1, p0}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 56
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 57
    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 58
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_aa} :catch_ab

    return-object p0

    :catch_ab
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get service interface for: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static getServiceInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 15

    .line 69
    const-string v0, "StubHelper"

    const-string v1, "asInterface"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 70
    const-string v6, "get"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 71
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_7d

    .line 77
    :try_start_19
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v4

    invoke-virtual {v5, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_23} :catch_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_7d

    goto :goto_4f

    .line 81
    :catch_24
    :try_start_24
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    invoke-virtual {v5, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_7d

    goto :goto_4f

    .line 84
    :catch_2f
    :try_start_2f
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 85
    array-length v7, v5

    move v8, v4

    :goto_35
    if-ge v8, v7, :cond_4e

    aget-object v9, v5, v8

    .line 86
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-static {v9}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v10

    if-ne v10, v3, :cond_4b

    move-object v5, v9

    goto :goto_4f

    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_4e
    move-object v5, v2

    :goto_4f
    if-eqz v5, :cond_66

    if-eqz p3, :cond_55

    move-object v7, p3

    goto :goto_5d

    .line 95
    :cond_55
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v7

    invoke-interface {v7, p0}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 96
    :goto_5d
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 98
    :cond_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find asInterface method in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_7c} :catch_7d

    goto :goto_90

    :catch_7d
    move-exception v5

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to use generated stub class: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_90
    if-eqz p3, :cond_93

    goto :goto_9b

    .line 106
    :cond_93
    :try_start_93
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object p1

    invoke-interface {p1, p0}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 107
    :goto_9b
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 108
    new-array p2, v3, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, p2, v4

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 109
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b1} :catch_b2

    return-object p0

    :catch_b2
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to get service interface for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
