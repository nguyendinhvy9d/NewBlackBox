.class Lcom/moandjiezana/toml/TableArrayValueWriter;
.super Lcom/moandjiezana/toml/ArrayValueWriter;
.source "TableArrayValueWriter.java"


# static fields
.field static final TABLE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/moandjiezana/toml/TableArrayValueWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/TableArrayValueWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/TableArrayValueWriter;->TABLE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/moandjiezana/toml/ArrayValueWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public canWrite(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    invoke-static {p1}, Lcom/moandjiezana/toml/TableArrayValueWriter;->isArrayish(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/moandjiezana/toml/TableArrayValueWriter;->isArrayOfPrimitive(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "table-array"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/TableArrayValueWriter;->normalize(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->pushTableFromArray()Lcom/moandjiezana/toml/WriterContext;

    move-result-object p2

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v1, v0}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method
