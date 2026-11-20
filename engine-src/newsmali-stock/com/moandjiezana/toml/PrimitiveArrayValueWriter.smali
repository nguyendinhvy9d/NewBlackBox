.class Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;
.super Lcom/moandjiezana/toml/ArrayValueWriter;
.source "PrimitiveArrayValueWriter.java"


# static fields
.field static final PRIMITIVE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->PRIMITIVE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/moandjiezana/toml/ArrayValueWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public canWrite(Ljava/lang/Object;)Z
    .registers 3

    .line 12
    invoke-static {p1}, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->isArrayish(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->isArrayOfPrimitive(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "primitive-array"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .registers 8

    .line 17
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->normalize(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    const/16 v0, 0x5b

    .line 19
    invoke-virtual {p2, v0}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    .line 20
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->writeArrayDelimiterPadding()V

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_29

    .line 27
    sget-object v0, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v0, v2}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_36

    .line 30
    :cond_29
    sget-object v3, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v3, v2}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v3

    if-ne v3, v1, :cond_40

    .line 38
    const-string v3, ", "

    invoke-virtual {p2, v3}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    .line 41
    :goto_36
    sget-object v3, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v3, v2}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    goto :goto_12

    .line 32
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->getContextPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": cannot write a heterogeneous array; first element was of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " but found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_6b
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->writeArrayDelimiterPadding()V

    const/16 p1, 0x5d

    .line 45
    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
