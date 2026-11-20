.class public Lio/vanta/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    or-int v0, p1, p2

    if-ltz v0, :cond_a

    if-gt p1, p0, :cond_a

    sub-int/2addr p0, p1

    if-lt p0, p2, :cond_a

    return-void

    .line 140
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public static contains([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 31
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lio/vanta/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Lio/vanta/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 132
    aget-object p0, p0, p1

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Class;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lio/vanta/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_20

    .line 100
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v1

    :goto_a
    if-ge v2, v0, :cond_20

    aget-object v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_1d

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_1d

    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    return v1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 42
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 43
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return v0
.end method

.method public static indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lio/vanta/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    .line 59
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v1

    :goto_a
    if-ge v2, v0, :cond_1c

    aget-object v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_19

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne p1, v4, :cond_19

    return v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return v1
.end method

.method public static indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lio/vanta/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 114
    array-length v0, p0

    :goto_7
    if-lez v0, :cond_19

    add-int/lit8 v1, v0, -0x1

    .line 115
    aget-object v2, p0, v1

    if-eqz v2, :cond_16

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    :goto_4
    array-length v1, p0

    if-ge p2, v1, :cond_13

    .line 88
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return p2

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_13
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 125
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 50
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 51
    aget-object v2, p0, v1

    if-ne v2, p1, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return v0
.end method

.method public static protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 73
    :cond_4
    :goto_4
    array-length v1, p0

    if-ge p2, v1, :cond_f

    .line 74
    aget-object v1, p0, p2

    if-ne p1, v1, :cond_c

    return p2

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_f
    return v0
.end method

.method public static push([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 20
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 21
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length p0, p0

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 11
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    return-object p0

    .line 14
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method
