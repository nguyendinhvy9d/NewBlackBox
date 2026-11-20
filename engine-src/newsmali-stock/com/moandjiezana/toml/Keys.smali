.class Lcom/moandjiezana/toml/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/Keys$Key;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isQuote(C)Z
    .registers 2

    const/16 v0, 0x22

    if-eq p0, v0, :cond_b

    const/16 v0, 0x27

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static split(Ljava/lang/String;)[Lcom/moandjiezana/toml/Keys$Key;
    .registers 14

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v7, v3

    move v8, v4

    move v9, v8

    move v6, v5

    :goto_16
    const/4 v10, 0x0

    if-le v2, v5, :cond_7d

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5d

    if-ne v11, v12, :cond_25

    if-eqz v7, :cond_25

    move v8, v3

    goto :goto_7a

    :cond_25
    const/16 v7, 0x5b

    if-ne v11, v7, :cond_3b

    if-eqz v8, :cond_3b

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    move v8, v7

    goto :goto_7a

    .line 45
    :cond_3b
    invoke-static {v11}, Lcom/moandjiezana/toml/Keys;->isQuote(C)Z

    move-result v7

    if-eqz v7, :cond_4f

    if-eqz v2, :cond_4d

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v12, 0x5c

    if-eq v7, v12, :cond_4f

    :cond_4d
    xor-int/lit8 v9, v9, 0x1

    :cond_4f
    const/16 v7, 0x2e

    if-ne v11, v7, :cond_76

    if-eqz v9, :cond_56

    goto :goto_76

    .line 52
    :cond_56
    new-instance v7, Lcom/moandjiezana/toml/Keys$Key;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_68

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/moandjiezana/toml/Keys$Key;

    :cond_68
    invoke-direct {v7, v1, v6, v10}, Lcom/moandjiezana/toml/Keys$Key;-><init>(Ljava/lang/String;ILcom/moandjiezana/toml/Keys$Key;)V

    invoke-interface {v0, v4, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v3

    move v6, v5

    goto :goto_7a

    .line 50
    :cond_76
    :goto_76
    invoke-virtual {v1, v4, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v7, v4

    :goto_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 59
    :cond_7d
    new-instance p0, Lcom/moandjiezana/toml/Keys$Key;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_90

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/moandjiezana/toml/Keys$Key;

    :cond_90
    invoke-direct {p0, v1, v6, v10}, Lcom/moandjiezana/toml/Keys$Key;-><init>(Ljava/lang/String;ILcom/moandjiezana/toml/Keys$Key;)V

    invoke-interface {v0, v4, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    new-array p0, v4, [Lcom/moandjiezana/toml/Keys$Key;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/moandjiezana/toml/Keys$Key;

    return-object p0
.end method
