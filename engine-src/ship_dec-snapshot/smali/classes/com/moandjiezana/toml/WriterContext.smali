.class Lcom/moandjiezana/toml/WriterContext;
.super Ljava/lang/Object;
.source "WriterContext.java"


# instance fields
.field private arrayKey:Ljava/lang/String;

.field private final currentFieldIndent:Ljava/lang/String;

.field private final currentTableIndent:Ljava/lang/String;

.field private final datePolicy:Lcom/moandjiezana/toml/DatePolicy;

.field private empty:Z

.field private final indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

.field private isArrayOfTable:Z

.field private final key:Ljava/lang/String;

.field private final output:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;Ljava/io/Writer;)V
    .locals 6

    .line 19
    const-string v1, ""

    const-string v2, ""

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/moandjiezana/toml/WriterContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->arrayKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/moandjiezana/toml/WriterContext;->isArrayOfTable:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    .line 138
    iput-object p1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/moandjiezana/toml/WriterContext;->output:Ljava/io/Writer;

    .line 140
    iput-object p4, p0, Lcom/moandjiezana/toml/WriterContext;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    .line 141
    iput-object p2, p0, Lcom/moandjiezana/toml/WriterContext;->currentTableIndent:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/moandjiezana/toml/WriterContext;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p4}, Lcom/moandjiezana/toml/IndentationPolicy;->getKeyValueIndent()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/moandjiezana/toml/WriterContext;->fillStringWithSpaces(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moandjiezana/toml/WriterContext;->currentFieldIndent:Ljava/lang/String;

    return-void
.end method

.method private fillStringWithSpaces(I)Ljava/lang/String;
    .locals 1

    .line 131
    new-array p1, p1, [C

    const/16 v0, 0x20    # ' '

    .line 132
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 134
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private growIndent(Lcom/moandjiezana/toml/IndentationPolicy;)Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->currentTableIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/moandjiezana/toml/IndentationPolicy;->getTableIndent()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/WriterContext;->fillStringWithSpaces(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getContextPath()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->arrayKey:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->arrayKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDatePolicy()Lcom/moandjiezana/toml/DatePolicy;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    return-object v0
.end method

.method indent()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->currentFieldIndent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    :cond_0
    return-void
.end method

.method pushTable(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;
    .locals 7

    .line 24
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->growIndent(Lcom/moandjiezana/toml/IndentationPolicy;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 28
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    .line 30
    new-instance v1, Lcom/moandjiezana/toml/WriterContext;

    iget-object v4, p0, Lcom/moandjiezana/toml/WriterContext;->output:Ljava/io/Writer;

    iget-object v5, p0, Lcom/moandjiezana/toml/WriterContext;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    iget-object v6, p0, Lcom/moandjiezana/toml/WriterContext;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    invoke-direct/range {v1 .. v6}, Lcom/moandjiezana/toml/WriterContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;)V

    .line 31
    iget-boolean p1, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, v1, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    :cond_2
    return-object v1
.end method

.method pushTableFromArray()Lcom/moandjiezana/toml/WriterContext;
    .locals 6

    .line 39
    new-instance v0, Lcom/moandjiezana/toml/WriterContext;

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/moandjiezana/toml/WriterContext;->currentTableIndent:Ljava/lang/String;

    iget-object v3, p0, Lcom/moandjiezana/toml/WriterContext;->output:Ljava/io/Writer;

    iget-object v4, p0, Lcom/moandjiezana/toml/WriterContext;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    iget-object v5, p0, Lcom/moandjiezana/toml/WriterContext;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    invoke-direct/range {v0 .. v5}, Lcom/moandjiezana/toml/WriterContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;)V

    .line 40
    iget-boolean v1, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    :cond_0
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/moandjiezana/toml/WriterContext;->setIsArrayOfTable(Z)Lcom/moandjiezana/toml/WriterContext;

    return-object v0
.end method

.method setArrayKey(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/moandjiezana/toml/WriterContext;->arrayKey:Ljava/lang/String;

    return-object p0
.end method

.method setIsArrayOfTable(Z)Lcom/moandjiezana/toml/WriterContext;
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/moandjiezana/toml/WriterContext;->isArrayOfTable:Z

    return-object p0
.end method

.method write(C)Lcom/moandjiezana/toml/WriterContext;
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;
    .locals 1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method write([C)V
    .locals 3

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 63
    invoke-virtual {p0, v2}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeArrayDelimiterPadding()V
    .locals 2

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    invoke-virtual {v1}, Lcom/moandjiezana/toml/IndentationPolicy;->getArrayDelimiterPadding()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    .line 98
    invoke-virtual {p0, v1}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeKey()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/moandjiezana/toml/WriterContext;->empty:Z

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 84
    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/moandjiezana/toml/WriterContext;->currentTableIndent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    .line 89
    iget-boolean v0, p0, Lcom/moandjiezana/toml/WriterContext;->isArrayOfTable:Z

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "[["

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v0

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v0

    const-string v1, "]]\n"

    invoke-virtual {v0, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void

    :cond_2
    const/16 v0, 0x5b

    .line 92
    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v0

    iget-object v1, p0, Lcom/moandjiezana/toml/WriterContext;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
