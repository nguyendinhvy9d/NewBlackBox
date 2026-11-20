.class Lcom/moandjiezana/toml/InlineTableValueReader;
.super Ljava/lang/Object;
.source "InlineTableValueReader.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;


# static fields
.field static final INLINE_TABLE_VALUE_READER:Lcom/moandjiezana/toml/InlineTableValueReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/moandjiezana/toml/InlineTableValueReader;

    invoke-direct {v0}, Lcom/moandjiezana/toml/InlineTableValueReader;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/InlineTableValueReader;->INLINE_TABLE_VALUE_READER:Lcom/moandjiezana/toml/InlineTableValueReader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .registers 3

    .line 14
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .registers 16

    .line 19
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 21
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v4, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v4}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 29
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v9, v6

    move v8, v7

    :goto_21
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_93

    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v8, :cond_71

    .line 32
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_71

    .line 33
    sget-object v5, Lcom/moandjiezana/toml/ValueReaders;->VALUE_READERS:Lcom/moandjiezana/toml/ValueReaders;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p3}, Lcom/moandjiezana/toml/Identifier;->from(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;

    move-result-object v8

    invoke-virtual {p3, v8}, Lcom/moandjiezana/toml/Context;->with(Lcom/moandjiezana/toml/Identifier;)Lcom/moandjiezana/toml/Context;

    move-result-object v8

    invoke-virtual {v5, p1, p2, v8}, Lcom/moandjiezana/toml/ValueReaders;->convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    instance-of v8, v5, Lcom/moandjiezana/toml/Results$Errors;

    if-eqz v8, :cond_53

    .line 36
    check-cast v5, Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v4, v5}, Lcom/moandjiezana/toml/Results$Errors;->add(Lcom/moandjiezana/toml/Results$Errors;)V

    return-object v4

    .line 40
    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 44
    iget-object p1, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v4, v2, p1}, Lcom/moandjiezana/toml/Results$Errors;->duplicateKey(Ljava/lang/String;I)V

    return-object v4

    .line 48
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7b

    :cond_71
    const/16 v10, 0x2c

    if-ne v5, v10, :cond_7d

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v6

    :goto_7b
    move v8, v7

    goto :goto_8e

    :cond_7d
    const/16 v10, 0x3d

    if-ne v5, v10, :cond_84

    move v8, v6

    move v9, v7

    goto :goto_8e

    :cond_84
    const/16 v10, 0x7d

    if-ne v5, v10, :cond_89

    goto :goto_a0

    :cond_89
    if-eqz v9, :cond_8e

    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_8e
    :goto_8e
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    goto :goto_21

    .line 66
    :cond_93
    iget-object p2, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {p2}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p2, p1, v0}, Lcom/moandjiezana/toml/Results$Errors;->unterminated(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    :goto_a0
    invoke-virtual {v4}, Lcom/moandjiezana/toml/Results$Errors;->hasErrors()Z

    move-result p1

    if-eqz p1, :cond_a7

    return-object v4

    :cond_a7
    return-object v3
.end method
