.class Lcom/moandjiezana/toml/DateValueReaderWriter;
.super Ljava/lang/Object;
.source "DateValueReaderWriter.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;
.implements Lcom/moandjiezana/toml/ValueWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/DateValueReaderWriter$DateConverterJdk6;
    }
.end annotation


# static fields
.field static final DATE_PARSER_JDK_6:Lcom/moandjiezana/toml/DateValueReaderWriter;

.field private static final DATE_REGEX:Ljava/util/regex/Pattern;

.field static final DATE_VALUE_READER_WRITER:Lcom/moandjiezana/toml/DateValueReaderWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/moandjiezana/toml/DateValueReaderWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/DateValueReaderWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_VALUE_READER_WRITER:Lcom/moandjiezana/toml/DateValueReaderWriter;

    .line 13
    new-instance v0, Lcom/moandjiezana/toml/DateValueReaderWriter$DateConverterJdk6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moandjiezana/toml/DateValueReaderWriter$DateConverterJdk6;-><init>(Lcom/moandjiezana/toml/DateValueReaderWriter$1;)V

    sput-object v0, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_PARSER_JDK_6:Lcom/moandjiezana/toml/DateValueReaderWriter;

    .line 14
    const-string v0, "(\\d{4}-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-5][0-9]:[0-5][0-9])(\\.\\d*)?(Z|(?:[+\\-]\\d{2}:\\d{2}))(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moandjiezana/toml/DateValueReaderWriter$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/moandjiezana/toml/DateValueReaderWriter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/moandjiezana/toml/DateValueReaderWriter;Lcom/moandjiezana/toml/DatePolicy;)Ljava/text/DateFormat;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/DateValueReaderWriter;->getFormatter(Lcom/moandjiezana/toml/DatePolicy;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private getFormatter(Lcom/moandjiezana/toml/DatePolicy;)Ljava/text/DateFormat;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/moandjiezana/toml/DatePolicy;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/moandjiezana/toml/DatePolicy;->isShowFractionalSeconds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 109
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/moandjiezana/toml/DatePolicy;->isShowFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/moandjiezana/toml/DateValueReaderWriter;->getTimeZoneAndFractionalSecondsFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/moandjiezana/toml/DateValueReaderWriter;->getTimeZoneFormat()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/moandjiezana/toml/DatePolicy;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .locals 5

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 26
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_1
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public canWrite(Ljava/lang/Object;)Z
    .locals 0

    .line 88
    instance-of p1, p1, Ljava/util/Date;

    return p1
.end method

.method getTimeZoneAndFractionalSecondsFormat()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    return-object v0
.end method

.method getTimeZoneFormat()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    return-object v0
.end method

.method public isPrimitiveType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .locals 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    goto :goto_0

    .line 51
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    sget-object p2, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

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

    return-object p2

    :cond_3
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 62
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_3

    .line 68
    :cond_4
    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "Z"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 71
    :cond_5
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_6
    :goto_4
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 77
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 78
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 80
    :catch_0
    new-instance p2, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {p2}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 81
    iget-object v0, p3, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v0}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/moandjiezana/toml/Results$Errors;->invalidValue(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "datetime"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 1

    .line 93
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->getDatePolicy()Lcom/moandjiezana/toml/DatePolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/DateValueReaderWriter;->getFormatter(Lcom/moandjiezana/toml/DatePolicy;)Ljava/text/DateFormat;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
