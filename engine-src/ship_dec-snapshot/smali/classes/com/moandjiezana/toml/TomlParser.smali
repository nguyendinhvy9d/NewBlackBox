.class Lcom/moandjiezana/toml/TomlParser;
.super Ljava/lang/Object;
.source "TomlParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static run(Ljava/lang/String;)Lcom/moandjiezana/toml/Results;
    .locals 12

    .line 10
    new-instance v0, Lcom/moandjiezana/toml/Results;

    invoke-direct {v0}, Lcom/moandjiezana/toml/Results;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 16
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move-object v8, v6

    move-object v9, v8

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_a

    .line 23
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 25
    iget-object v10, v0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v10}, Lcom/moandjiezana/toml/Results$Errors;->hasErrors()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v10, 0x23

    if-ne v4, v10, :cond_2

    if-nez v7, :cond_2

    move v7, v3

    goto/16 :goto_1

    .line 31
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_5

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 32
    sget-object v4, Lcom/moandjiezana/toml/IdentifierConverter;->IDENTIFIER_CONVERTER:Lcom/moandjiezana/toml/IdentifierConverter;

    new-instance v10, Lcom/moandjiezana/toml/Context;

    iget-object v11, v0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v10, v6, v2, v11}, Lcom/moandjiezana/toml/Context;-><init>(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Results$Errors;)V

    invoke-virtual {v4, p0, v1, v10}, Lcom/moandjiezana/toml/IdentifierConverter;->convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;

    move-result-object v4

    .line 34
    sget-object v10, Lcom/moandjiezana/toml/Identifier;->INVALID:Lcom/moandjiezana/toml/Identifier;

    if-eq v4, v10, :cond_9

    .line 35
    invoke-virtual {v4}, Lcom/moandjiezana/toml/Identifier;->isKey()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v8, v4

    goto/16 :goto_1

    .line 37
    :cond_3
    invoke-virtual {v4}, Lcom/moandjiezana/toml/Identifier;->isTable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 38
    invoke-virtual {v0, v4, v2}, Lcom/moandjiezana/toml/Results;->startTables(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v4}, Lcom/moandjiezana/toml/Identifier;->isTableArray()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 40
    invoke-virtual {v0, v4, v2}, Lcom/moandjiezana/toml/Results;->startTableArray(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    :cond_5
    const/16 v10, 0xa

    if-ne v4, v10, :cond_6

    .line 47
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move v7, v5

    move-object v8, v6

    move-object v9, v8

    goto :goto_1

    :cond_6
    if-nez v7, :cond_8

    if-eqz v8, :cond_8

    .line 48
    invoke-virtual {v8}, Lcom/moandjiezana/toml/Identifier;->isKey()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v9, :cond_8

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_8

    .line 49
    sget-object v4, Lcom/moandjiezana/toml/ValueReaders;->VALUE_READERS:Lcom/moandjiezana/toml/ValueReaders;

    new-instance v9, Lcom/moandjiezana/toml/Context;

    iget-object v10, v0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v9, v8, v2, v10}, Lcom/moandjiezana/toml/Context;-><init>(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Results$Errors;)V

    invoke-virtual {v4, p0, v1, v9}, Lcom/moandjiezana/toml/ValueReaders;->convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;

    move-result-object v9

    .line 51
    instance-of v4, v9, Lcom/moandjiezana/toml/Results$Errors;

    if-eqz v4, :cond_7

    .line 52
    iget-object v4, v0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    move-object v10, v9

    check-cast v10, Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v4, v10}, Lcom/moandjiezana/toml/Results$Errors;->add(Lcom/moandjiezana/toml/Results$Errors;)V

    goto :goto_1

    .line 54
    :cond_7
    invoke-virtual {v8}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9, v2}, Lcom/moandjiezana/toml/Results;->addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 56
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_9

    .line 57
    iget-object v10, v0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v8, v4, v11}, Lcom/moandjiezana/toml/Results$Errors;->invalidTextAfterIdentifier(Lcom/moandjiezana/toml/Identifier;CI)V

    .line 22
    :cond_9
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    goto/16 :goto_0

    :cond_a
    :goto_2
    return-object v0
.end method
