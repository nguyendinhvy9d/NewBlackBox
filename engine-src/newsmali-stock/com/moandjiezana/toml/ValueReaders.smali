.class Lcom/moandjiezana/toml/ValueReaders;
.super Ljava/lang/Object;
.source "ValueReaders.java"


# static fields
.field private static final READERS:[Lcom/moandjiezana/toml/ValueReader;

.field static final VALUE_READERS:Lcom/moandjiezana/toml/ValueReaders;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/moandjiezana/toml/ValueReaders;

    invoke-direct {v0}, Lcom/moandjiezana/toml/ValueReaders;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/ValueReaders;->VALUE_READERS:Lcom/moandjiezana/toml/ValueReaders;

    const/16 v0, 0x9

    .line 34
    new-array v0, v0, [Lcom/moandjiezana/toml/ValueReader;

    const/4 v1, 0x0

    sget-object v2, Lcom/moandjiezana/toml/MultilineStringValueReader;->MULTILINE_STRING_VALUE_READER:Lcom/moandjiezana/toml/MultilineStringValueReader;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/moandjiezana/toml/MultilineLiteralStringValueReader;->MULTILINE_LITERAL_STRING_VALUE_READER:Lcom/moandjiezana/toml/MultilineLiteralStringValueReader;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/moandjiezana/toml/LiteralStringValueReader;->LITERAL_STRING_VALUE_READER:Lcom/moandjiezana/toml/LiteralStringValueReader;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_VALUE_READER_WRITER:Lcom/moandjiezana/toml/DateValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/moandjiezana/toml/NumberValueReaderWriter;->NUMBER_VALUE_READER_WRITER:Lcom/moandjiezana/toml/NumberValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/moandjiezana/toml/BooleanValueReaderWriter;->BOOLEAN_VALUE_READER_WRITER:Lcom/moandjiezana/toml/BooleanValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/moandjiezana/toml/ArrayValueReader;->ARRAY_VALUE_READER:Lcom/moandjiezana/toml/ArrayValueReader;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/moandjiezana/toml/InlineTableValueReader;->INLINE_TABLE_VALUE_READER:Lcom/moandjiezana/toml/InlineTableValueReader;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moandjiezana/toml/ValueReaders;->READERS:[Lcom/moandjiezana/toml/ValueReader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method convert(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .registers 10

    .line 20
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/moandjiezana/toml/ValueReaders;->READERS:[Lcom/moandjiezana/toml/ValueReader;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 22
    invoke-interface {v4, v0}, Lcom/moandjiezana/toml/ValueReader;->canRead(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 23
    invoke-interface {v4, p1, p2, p3}, Lcom/moandjiezana/toml/ValueReader;->read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 27
    :cond_1e
    new-instance p1, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p1}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 28
    iget-object p2, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {p2}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3}, Lcom/moandjiezana/toml/Results$Errors;->invalidValue(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method
