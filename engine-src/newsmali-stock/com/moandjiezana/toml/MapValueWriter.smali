.class Lcom/moandjiezana/toml/MapValueWriter;
.super Ljava/lang/Object;
.source "MapValueWriter.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueWriter;


# static fields
.field static final MAP_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

.field private static final REQUIRED_QUOTING_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/moandjiezana/toml/MapValueWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/MapValueWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/MapValueWriter;->MAP_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    .line 14
    const-string v0, "^.*[^A-Za-z\\d_-].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/moandjiezana/toml/MapValueWriter;->REQUIRED_QUOTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasPrimitiveValues(Ljava/util/Map;Lcom/moandjiezana/toml/WriterContext;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/moandjiezana/toml/WriterContext;",
            ")Z"
        }
    .end annotation

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 83
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_8

    .line 88
    :cond_19
    sget-object v1, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v1, v0}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lcom/moandjiezana/toml/ValueWriter;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->PRIMITIVE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-ne v0, v1, :cond_8

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static quoteKey(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    sget-object v0, Lcom/moandjiezana/toml/MapValueWriter;->REQUIRED_QUOTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    return-object p0
.end method


# virtual methods
.method public canWrite(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public isPrimitiveType()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .registers 10

    .line 23
    check-cast p1, Ljava/util/Map;

    .line 25
    invoke-static {p1, p2}, Lcom/moandjiezana/toml/MapValueWriter;->hasPrimitiveValues(Ljava/util/Map;Lcom/moandjiezana/toml/WriterContext;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->writeKey()V

    .line 31
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    goto :goto_13

    .line 38
    :cond_2a
    sget-object v3, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v3, v1}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v3

    .line 39
    invoke-interface {v3}, Lcom/moandjiezana/toml/ValueWriter;->isPrimitiveType()Z

    move-result v4

    const/16 v5, 0xa

    const-string v6, " = "

    if-eqz v4, :cond_4f

    .line 40
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->indent()V

    .line 41
    invoke-static {v2}, Lcom/moandjiezana/toml/MapValueWriter;->quoteKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    .line 42
    invoke-interface {v3, v1, p2}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    .line 43
    invoke-virtual {p2, v5}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    goto :goto_13

    .line 44
    :cond_4f
    sget-object v4, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->PRIMITIVE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-ne v3, v4, :cond_13

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/moandjiezana/toml/WriterContext;->setArrayKey(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    .line 46
    invoke-static {v2}, Lcom/moandjiezana/toml/MapValueWriter;->quoteKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    .line 47
    invoke-interface {v3, v1, p2}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    .line 48
    invoke-virtual {p2, v5}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    goto :goto_13

    .line 53
    :cond_6c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_74
    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 54
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_85

    goto :goto_74

    .line 59
    :cond_85
    sget-object v3, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v3, v2}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v3

    if-eq v3, p0, :cond_95

    .line 60
    sget-object v4, Lcom/moandjiezana/toml/ObjectValueWriter;->OBJECT_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-eq v3, v4, :cond_95

    sget-object v4, Lcom/moandjiezana/toml/TableArrayValueWriter;->TABLE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-ne v3, v4, :cond_74

    .line 61
    :cond_95
    invoke-static {v1}, Lcom/moandjiezana/toml/MapValueWriter;->quoteKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/moandjiezana/toml/WriterContext;->pushTable(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    goto :goto_74

    :cond_a1
    return-void
.end method
