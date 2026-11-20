.class Lcom/moandjiezana/toml/StringValueReaderWriter;
.super Ljava/lang/Object;
.source "StringValueReaderWriter.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;
.implements Lcom/moandjiezana/toml/ValueWriter;


# static fields
.field static final STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

.field private static final UNICODE_REGEX:Ljava/util/regex/Pattern;

.field private static final specialCharacterEscapes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/moandjiezana/toml/StringValueReaderWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/StringValueReaderWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    .line 12
    const-string v0, "\\\\[uU](.{4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/moandjiezana/toml/StringValueReaderWriter;->UNICODE_REGEX:Ljava/util/regex/Pattern;

    const/16 v0, 0x5d

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/moandjiezana/toml/StringValueReaderWriter;->specialCharacterEscapes:[Ljava/lang/String;

    const/16 v1, 0x8

    .line 17
    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 18
    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 19
    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 20
    const-string v2, "\\f"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 21
    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 22
    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 23
    const-string v2, "\\\\"

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private escapeUnicode(Ljava/lang/String;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 4

    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 114
    sget-object v2, Lcom/moandjiezana/toml/StringValueReaderWriter;->specialCharacterEscapes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v1, v2, v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p2, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .locals 1

    .line 28
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public canWrite(Ljava/lang/Object;)Z
    .locals 1

    .line 96
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/URL;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/URI;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Enum;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPrimitiveType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .locals 5

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 36
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_2

    .line 45
    new-instance p2, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p2}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 46
    iget-object v1, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v1}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p2, v1, p1, p3}, Lcom/moandjiezana/toml/Results$Errors;->unterminated(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    .line 50
    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/StringValueReaderWriter;->replaceUnicodeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p2}, Lcom/moandjiezana/toml/StringValueReaderWriter;->replaceSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 55
    new-instance p2, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p2}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 56
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v0}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/moandjiezana/toml/Results$Errors;->invalidValue(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-object p2
.end method

.method replaceSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    if-ne v1, v4, :cond_1

    const/16 v1, 0x62

    if-eq v3, v1, :cond_1

    const/16 v1, 0x66

    if-eq v3, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_1

    const/16 v1, 0x74

    if-eq v3, v1, :cond_1

    const/16 v1, 0x72

    if-eq v3, v1, :cond_1

    const/16 v1, 0x22

    if-eq v3, v1, :cond_1

    if-eq v3, v4, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\""

    const-string v1, "\""

    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\t"

    const-string v1, "\t"

    .line 86
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\r"

    const-string v1, "\r"

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, "\\"

    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "/"

    .line 89
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\b"

    const-string v1, "\u0008"

    .line 90
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\f"

    const-string v1, "\u000c"

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method replaceUnicodeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 64
    sget-object v0, Lcom/moandjiezana/toml/StringValueReaderWriter;->UNICODE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "string"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 1

    const/16 v0, 0x22

    .line 101
    invoke-virtual {p2, v0}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/moandjiezana/toml/StringValueReaderWriter;->escapeUnicode(Ljava/lang/String;Lcom/moandjiezana/toml/WriterContext;)V

    .line 103
    invoke-virtual {p2, v0}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
