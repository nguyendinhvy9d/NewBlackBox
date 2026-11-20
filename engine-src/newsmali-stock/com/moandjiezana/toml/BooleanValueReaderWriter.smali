.class Lcom/moandjiezana/toml/BooleanValueReaderWriter;
.super Ljava/lang/Object;
.source "BooleanValueReaderWriter.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;
.implements Lcom/moandjiezana/toml/ValueWriter;


# static fields
.field static final BOOLEAN_VALUE_READER_WRITER:Lcom/moandjiezana/toml/BooleanValueReaderWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/moandjiezana/toml/BooleanValueReaderWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/BooleanValueReaderWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/BooleanValueReaderWriter;->BOOLEAN_VALUE_READER_WRITER:Lcom/moandjiezana/toml/BooleanValueReaderWriter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .registers 3

    .line 12
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public canWrite(Ljava/lang/Object;)Z
    .registers 3

    .line 29
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPrimitiveType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .registers 4

    .line 17
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string p3, "true"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_15

    :cond_13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    :goto_15
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p3, :cond_1b

    const/4 p3, 0x4

    goto :goto_1c

    :cond_1b
    const/4 p3, 0x5

    :goto_1c
    add-int/lit8 p3, p3, -0x1

    .line 22
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 46
    const-string v0, "boolean"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .registers 3

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
