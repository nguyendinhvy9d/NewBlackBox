.class Lcom/moandjiezana/toml/ArrayValueReader;
.super Ljava/lang/Object;
.source "ArrayValueReader.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;


# static fields
.field static final ARRAY_VALUE_READER:Lcom/moandjiezana/toml/ArrayValueReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/moandjiezana/toml/ArrayValueReader;

    invoke-direct {v0}, Lcom/moandjiezana/toml/ArrayValueReader;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/ArrayValueReader;->ARRAY_VALUE_READER:Lcom/moandjiezana/toml/ArrayValueReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isHomogenousArray(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .locals 1

    .line 15
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .locals 9

    .line 20
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 22
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v4, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v4}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x23

    if-ne v5, v8, :cond_0

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_0
    const/16 v8, 0xa

    if-ne v5, v8, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move v7, v6

    goto :goto_1

    :cond_1
    if-nez v7, :cond_9

    .line 37
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_9

    const/16 v8, 0x2c

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0x5b

    if-ne v5, v8, :cond_5

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/moandjiezana/toml/ArrayValueReader;->read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    instance-of v8, v5, Lcom/moandjiezana/toml/Results$Errors;

    if-eqz v8, :cond_3

    .line 42
    check-cast v5, Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v4, v5}, Lcom/moandjiezana/toml/Results$Errors;->add(Lcom/moandjiezana/toml/Results$Errors;)V

    goto :goto_1

    .line 43
    :cond_3
    invoke-direct {p0, v5, v3}, Lcom/moandjiezana/toml/ArrayValueReader;->isHomogenousArray(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 44
    iget-object v5, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v5}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/moandjiezana/toml/Results$Errors;->heterogenous(Ljava/lang/String;I)V

    goto :goto_1

    .line 46
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v8, 0x5d

    if-ne v5, v8, :cond_6

    goto :goto_2

    .line 53
    :cond_6
    sget-object v5, Lcom/moandjiezana/toml/ValueReaders;->VALUE_READERS:Lcom/moandjiezana/toml/ValueReaders;

    invoke-virtual {v5, p1, p2, p3}, Lcom/moandjiezana/toml/ValueReaders;->convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 54
    instance-of v8, v5, Lcom/moandjiezana/toml/Results$Errors;

    if-eqz v8, :cond_7

    .line 55
    check-cast v5, Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v4, v5}, Lcom/moandjiezana/toml/Results$Errors;->add(Lcom/moandjiezana/toml/Results$Errors;)V

    goto :goto_1

    .line 56
    :cond_7
    invoke-direct {p0, v5, v3}, Lcom/moandjiezana/toml/ArrayValueReader;->isHomogenousArray(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 57
    iget-object v5, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v5}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/moandjiezana/toml/Results$Errors;->heterogenous(Ljava/lang/String;I)V

    goto :goto_1

    .line 59
    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    goto/16 :goto_0

    .line 65
    :cond_a
    iget-object p2, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {p2}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p2, p1, v1}, Lcom/moandjiezana/toml/Results$Errors;->unterminated(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    :goto_2
    invoke-virtual {v4}, Lcom/moandjiezana/toml/Results$Errors;->hasErrors()Z

    move-result p1

    if-eqz p1, :cond_b

    return-object v4

    :cond_b
    return-object v3
.end method
