.class public Lio/vanta/utils/MethodParameterUtils;
.super Ljava/lang/Object;
.source "MethodParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    invoke-static {p0, v0}, Lio/vanta/utils/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    .line 132
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 139
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lio/vanta/utils/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    :cond_1
    return-void
.end method

.method public static getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lio/vanta/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 17
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getIndex([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, p1, v0}, Lio/vanta/utils/MethodParameterUtils;->getIndex([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public static getIndex([Ljava/lang/Object;Ljava/lang/Class;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 116
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_2

    .line 117
    aget-object v0, p0, p2

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getParamsIndex([Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 103
    aget-object v1, p0, v0

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static replaceAllAppPkg([Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 43
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 27
    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static replaceFirstUid([Ljava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 58
    aget-object v1, p0, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 59
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    invoke-static {}, Lio/vanta/VantaCore;->getBUid()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 61
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 78
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lio/vanta/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 80
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static replaceLastUid([Ljava/lang/Object;)V
    .locals 3

    .line 68
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lio/vanta/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    invoke-static {}, Lio/vanta/VantaCore;->getBUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 72
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_0
    return-void
.end method

.method public static replaceSequenceAppPkg([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3

    .line 90
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lio/vanta/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 92
    aget-object v0, p0, p1

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 1

    .line 148
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    .line 151
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
