.class Lcom/moandjiezana/toml/IdentifierConverter;
.super Ljava/lang/Object;
.source "IdentifierConverter.java"


# static fields
.field static final IDENTIFIER_CONVERTER:Lcom/moandjiezana/toml/IdentifierConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/moandjiezana/toml/IdentifierConverter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/IdentifierConverter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/IdentifierConverter;->IDENTIFIER_CONVERTER:Lcom/moandjiezana/toml/IdentifierConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;
    .locals 11

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    add-int/2addr v6, v2

    if-le v5, v6, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 17
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_d

    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 19
    invoke-static {v9}, Lcom/moandjiezana/toml/Keys;->isQuote(C)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v5, :cond_2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x5c

    if-eq v5, v10, :cond_3

    :cond_2
    xor-int/lit8 v6, v6, 0x1

    .line 21
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    if-ne v9, v5, :cond_4

    .line 23
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v5, 0x3d

    if-ne v9, v5, :cond_6

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    const/16 v5, 0x5d

    if-ne v9, v5, :cond_9

    if-nez v1, :cond_9

    if-eqz v4, :cond_7

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    add-int/2addr v10, v2

    if-le v9, v10, :cond_c

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_c

    .line 33
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    move v7, v2

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_a

    const/16 v5, 0x23

    if-ne v9, v5, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    if-eqz v7, :cond_b

    .line 40
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v8, :cond_b

    move v2, v3

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    .line 44
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_c
    :goto_3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    goto :goto_2

    :cond_d
    :goto_4
    move v2, v7

    :goto_5
    if-nez v2, :cond_f

    if-eqz v1, :cond_e

    .line 50
    iget-object p1, p3, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/moandjiezana/toml/Results$Errors;->unterminatedKey(Ljava/lang/String;I)V

    goto :goto_6

    .line 52
    :cond_e
    iget-object p1, p3, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/moandjiezana/toml/Results$Errors;->invalidKey(Ljava/lang/String;I)V

    .line 55
    :goto_6
    sget-object p1, Lcom/moandjiezana/toml/Identifier;->INVALID:Lcom/moandjiezana/toml/Identifier;

    return-object p1

    .line 58
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/moandjiezana/toml/Identifier;->from(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;

    move-result-object p1

    return-object p1
.end method
