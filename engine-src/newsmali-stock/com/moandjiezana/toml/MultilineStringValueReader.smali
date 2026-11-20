.class Lcom/moandjiezana/toml/MultilineStringValueReader;
.super Ljava/lang/Object;
.source "MultilineStringValueReader.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;


# static fields
.field static final MULTILINE_STRING_VALUE_READER:Lcom/moandjiezana/toml/MultilineStringValueReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/moandjiezana/toml/MultilineStringValueReader;

    invoke-direct {v0}, Lcom/moandjiezana/toml/MultilineStringValueReader;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/MultilineStringValueReader;->MULTILINE_STRING_VALUE_READER:Lcom/moandjiezana/toml/MultilineStringValueReader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .registers 3

    .line 11
    const-string v0, "\"\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .registers 14

    .line 16
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 18
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    .line 19
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1e

    .line 23
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1e
    move v4, v3

    .line 27
    :goto_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    if-ge v4, v6, :cond_54

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_30

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_4f

    :cond_30
    const/16 v8, 0x22

    if-ne v6, v8, :cond_4f

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v9, v4, 0x2

    if-le v6, v9, :cond_4f

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4f

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4f

    const/4 v0, 0x2

    .line 34
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_55

    .line 27
    :cond_4f
    :goto_4f
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    goto :goto_1f

    :cond_54
    move v4, v7

    :goto_55
    if-ne v4, v7, :cond_6a

    .line 40
    new-instance p2, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p2}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 41
    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {p3}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v1}, Lcom/moandjiezana/toml/Results$Errors;->unterminated(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    .line 45
    :cond_6a
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 46
    const-string p2, "\\\\\\s+"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    sget-object p2, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/StringValueReaderWriter;->replaceUnicodeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    sget-object p2, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/StringValueReaderWriter;->replaceSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
