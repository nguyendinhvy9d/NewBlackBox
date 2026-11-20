.class Lcom/moandjiezana/toml/LiteralStringValueReader;
.super Ljava/lang/Object;
.source "LiteralStringValueReader.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;


# static fields
.field static final LITERAL_STRING_VALUE_READER:Lcom/moandjiezana/toml/LiteralStringValueReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/moandjiezana/toml/LiteralStringValueReader;

    invoke-direct {v0}, Lcom/moandjiezana/toml/LiteralStringValueReader;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/LiteralStringValueReader;->LITERAL_STRING_VALUE_READER:Lcom/moandjiezana/toml/LiteralStringValueReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .locals 1

    .line 12
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .locals 4

    .line 17
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 21
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    goto :goto_0

    .line 31
    :cond_1
    new-instance p2, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p2}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 32
    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {p3}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v0}, Lcom/moandjiezana/toml/Results$Errors;->unterminated(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method
