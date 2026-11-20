.class Lcom/moandjiezana/toml/NumberValueReaderWriter;
.super Ljava/lang/Object;
.source "NumberValueReaderWriter.java"

# interfaces
.implements Lcom/moandjiezana/toml/ValueReader;
.implements Lcom/moandjiezana/toml/ValueWriter;


# static fields
.field static final NUMBER_VALUE_READER_WRITER:Lcom/moandjiezana/toml/NumberValueReaderWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/moandjiezana/toml/NumberValueReaderWriter;

    invoke-direct {v0}, Lcom/moandjiezana/toml/NumberValueReaderWriter;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/NumberValueReaderWriter;->NUMBER_VALUE_READER_WRITER:Lcom/moandjiezana/toml/NumberValueReaderWriter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    .line 12
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public canWrite(Ljava/lang/Object;)Z
    .locals 1

    .line 88
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPrimitiveType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Context;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v6, ""

    move-object v7, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "float"

    const-string v15, "integer"

    const/16 v16, 0x1

    const-string v4, "exponent"

    if-ge v3, v13, :cond_b

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v17, 0x0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    if-le v5, v3, :cond_0

    move/from16 v5, v16

    goto :goto_1

    :cond_0
    move/from16 v5, v17

    .line 29
    :goto_1
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 30
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v7, v15

    move/from16 v9, v16

    .line 38
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v10, v3, 0x1

    move v11, v5

    move-object/from16 v19, v6

    move/from16 v12, v16

    move/from16 v8, v17

    goto :goto_3

    :cond_2
    move/from16 v18, v5

    const/16 v5, 0x2b

    move-object/from16 v19, v6

    const/16 v6, 0x2d

    if-eq v13, v5, :cond_3

    if-ne v13, v6, :cond_5

    :cond_3
    if-eqz v8, :cond_5

    if-eqz v18, :cond_5

    if-ne v13, v6, :cond_4

    .line 43
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move/from16 v8, v17

    move v12, v8

    goto :goto_3

    :cond_5
    const/16 v5, 0x2e

    if-ne v13, v5, :cond_6

    if-eqz v9, :cond_6

    if-eqz v18, :cond_6

    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v14

    :goto_2
    move/from16 v9, v17

    move v10, v9

    move v11, v10

    move v12, v11

    goto :goto_3

    :cond_6
    const/16 v5, 0x45

    if-eq v13, v5, :cond_7

    const/16 v6, 0x65

    if-ne v13, v6, :cond_8

    :cond_7
    if-eqz v10, :cond_8

    if-eqz v18, :cond_8

    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v4

    move/from16 v8, v16

    goto :goto_2

    :cond_8
    const/16 v5, 0x5f

    if-ne v13, v5, :cond_9

    if-eqz v11, :cond_9

    if-eqz v18, :cond_9

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v11, v17

    .line 25
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object/from16 v6, v19

    goto/16 :goto_0

    :cond_9
    if-nez v12, :cond_a

    move-object/from16 v6, v19

    goto :goto_4

    :cond_a
    move-object v6, v7

    .line 66
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-object v7, v6

    goto :goto_5

    :cond_b
    const/16 v17, 0x0

    .line 71
    :goto_5
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 73
    :cond_c
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 75
    :cond_d
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    aget-object v1, v0, v17

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    aget-object v0, v0, v16

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 80
    :cond_e
    new-instance v0, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v0}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    .line 81
    iget-object v3, v1, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    invoke-virtual {v3}, Lcom/moandjiezana/toml/Identifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/moandjiezana/toml/Results$Errors;->invalidValue(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "number"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
