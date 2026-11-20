.class Lcom/moandjiezana/toml/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/Identifier$Type;
    }
.end annotation


# static fields
.field private static final ALLOWED_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-"

.field static final INVALID:Lcom/moandjiezana/toml/Identifier;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lcom/moandjiezana/toml/Identifier$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/moandjiezana/toml/Identifier;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moandjiezana/toml/Identifier;-><init>(Ljava/lang/String;Lcom/moandjiezana/toml/Identifier$Type;)V

    sput-object v0, Lcom/moandjiezana/toml/Identifier;->INVALID:Lcom/moandjiezana/toml/Identifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/moandjiezana/toml/Identifier$Type;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/moandjiezana/toml/Identifier;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/moandjiezana/toml/Identifier;->type:Lcom/moandjiezana/toml/Identifier$Type;

    return-void
.end method

.method private static extractName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v5, v1, -0x1

    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    :cond_0
    xor-int/lit8 v2, v2, 0x1

    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 80
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_4
    sget-object p0, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/StringValueReaderWriter;->replaceUnicodeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static from(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;
    .locals 1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 16
    const-string v0, "[["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/moandjiezana/toml/Identifier$Type;->TABLE_ARRAY:Lcom/moandjiezana/toml/Identifier$Type;

    .line 18
    invoke-static {p0, p1}, Lcom/moandjiezana/toml/Identifier;->isValidTableArray(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z

    move-result p1

    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/moandjiezana/toml/Identifier$Type;->TABLE:Lcom/moandjiezana/toml/Identifier$Type;

    .line 21
    invoke-static {p0, p1}, Lcom/moandjiezana/toml/Identifier;->isValidTable(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z

    move-result p1

    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/moandjiezana/toml/Identifier$Type;->KEY:Lcom/moandjiezana/toml/Identifier$Type;

    .line 24
    invoke-static {p0, p1}, Lcom/moandjiezana/toml/Identifier;->isValidKey(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    .line 28
    sget-object p0, Lcom/moandjiezana/toml/Identifier;->INVALID:Lcom/moandjiezana/toml/Identifier;

    return-object p0

    .line 31
    :cond_2
    new-instance p1, Lcom/moandjiezana/toml/Identifier;

    invoke-static {p0}, Lcom/moandjiezana/toml/Identifier;->extractName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/moandjiezana/toml/Identifier;-><init>(Ljava/lang/String;Lcom/moandjiezana/toml/Identifier$Type;)V

    return-object p1
.end method

.method private static isValidKey(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z
    .locals 6

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidKey(Ljava/lang/String;I)V

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 95
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 98
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_3

    :cond_1
    if-nez v2, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    .line 100
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidKey(Ljava/lang/String;I)V

    return v1

    :cond_2
    xor-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 104
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 105
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidKey(Ljava/lang/String;I)V

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidTable(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z
    .locals 12

    .line 116
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v4, 0x2e

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    if-nez v0, :cond_2

    .line 126
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidTable(Ljava/lang/String;I)V

    return v5

    :cond_2
    move v7, v2

    move v9, v7

    move v3, v5

    move v6, v3

    move v8, v6

    .line 135
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_d

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 142
    :cond_3
    invoke-static {v10}, Lcom/moandjiezana/toml/Keys;->isQuote(C)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v7, :cond_5

    :cond_4
    move v0, v5

    goto/16 :goto_1

    :cond_5
    if-eqz v6, :cond_6

    add-int/lit8 v10, v3, -0x1

    .line 145
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_6

    move v8, v2

    move v7, v5

    move v9, v7

    goto :goto_1

    :cond_6
    if-nez v6, :cond_c

    move v6, v2

    move v7, v6

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    if-ne v10, v4, :cond_a

    if-eqz v8, :cond_9

    move v7, v2

    move v9, v7

    move v8, v5

    goto :goto_1

    .line 161
    :cond_9
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->emptyImplicitTable(Ljava/lang/String;I)V

    return v5

    .line 164
    :cond_a
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_b

    add-int/lit8 v10, v3, -0x1

    .line 165
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 166
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_c

    if-eq v10, v4, :cond_c

    move v7, v2

    move v8, v7

    move v9, v5

    goto :goto_1

    :cond_b
    if-eqz v9, :cond_4

    .line 172
    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_4

    move v8, v2

    move v9, v8

    move v7, v5

    :cond_c
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_d
    :goto_2
    if-nez v0, :cond_e

    .line 183
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidTable(Ljava/lang/String;I)V

    return v5

    :cond_e
    return v2
.end method

.method private static isValidTableArray(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Z
    .locals 13

    .line 193
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v3, 0x2e

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    if-nez v0, :cond_2

    .line 203
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidTableArray(Ljava/lang/String;I)V

    return v4

    :cond_2
    const/4 v2, 0x1

    move v7, v2

    move v9, v7

    move v5, v4

    move v6, v5

    move v8, v6

    .line 212
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_d

    .line 213
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v11, 0x22

    if-ne v10, v11, :cond_7

    if-nez v7, :cond_5

    :cond_4
    move v0, v4

    goto/16 :goto_1

    :cond_5
    if-eqz v6, :cond_6

    add-int/lit8 v10, v5, -0x1

    .line 222
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_6

    move v8, v2

    move v7, v4

    move v9, v7

    goto :goto_1

    :cond_6
    if-nez v6, :cond_c

    move v6, v2

    move v7, v6

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    if-ne v10, v3, :cond_a

    if-eqz v8, :cond_9

    move v7, v2

    move v9, v7

    move v8, v4

    goto :goto_1

    .line 238
    :cond_9
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->emptyImplicitTable(Ljava/lang/String;I)V

    return v4

    .line 241
    :cond_a
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_b

    add-int/lit8 v10, v5, -0x1

    .line 242
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 243
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_c

    if-eq v10, v3, :cond_c

    if-eq v10, v11, :cond_c

    move v7, v2

    move v8, v7

    move v9, v4

    goto :goto_1

    :cond_b
    if-eqz v9, :cond_4

    .line 249
    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_4

    move v8, v2

    move v9, v8

    move v7, v4

    :cond_c
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_d
    :goto_2
    if-nez v0, :cond_e

    .line 260
    iget-object v0, p1, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    iget-object p1, p1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/moandjiezana/toml/Results$Errors;->invalidTableArray(Ljava/lang/String;I)V

    return v4

    :cond_e
    return v2
.end method


# virtual methods
.method getBareName()Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/moandjiezana/toml/Identifier;->isKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->name:Ljava/lang/String;

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/moandjiezana/toml/Identifier;->isTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method isKey()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->type:Lcom/moandjiezana/toml/Identifier$Type;

    sget-object v1, Lcom/moandjiezana/toml/Identifier$Type;->KEY:Lcom/moandjiezana/toml/Identifier$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTable()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->type:Lcom/moandjiezana/toml/Identifier$Type;

    sget-object v1, Lcom/moandjiezana/toml/Identifier$Type;->TABLE:Lcom/moandjiezana/toml/Identifier$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTableArray()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/moandjiezana/toml/Identifier;->type:Lcom/moandjiezana/toml/Identifier$Type;

    sget-object v1, Lcom/moandjiezana/toml/Identifier$Type;->TABLE_ARRAY:Lcom/moandjiezana/toml/Identifier$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
