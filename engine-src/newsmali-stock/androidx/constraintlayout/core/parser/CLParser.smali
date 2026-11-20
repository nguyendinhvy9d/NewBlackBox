.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source "CLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static sDebug:Z = false


# instance fields
.field private mContent:Ljava/lang/String;

.field private mHasComment:Z

.field private mLineNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 9

    .line 247
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->sDebug:Z

    if-eqz v0, :cond_24

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v2, p5, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_24
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_66

    move-object p3, v0

    goto :goto_4d

    .line 274
    :pswitch_2e
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4d

    .line 270
    :pswitch_33
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4d

    .line 262
    :pswitch_38
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4d

    .line 266
    :pswitch_3d
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4d

    .line 257
    :pswitch_42
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4b

    .line 252
    :pswitch_47
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p3

    :goto_4b
    add-int/lit8 p2, p2, 0x1

    :goto_4d
    if-nez p3, :cond_50

    return-object v0

    .line 283
    :cond_50
    iget p5, p0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    if-eqz p4, :cond_5b

    int-to-long p4, p2

    .line 285
    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 287
    :cond_5b
    instance-of p2, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz p2, :cond_64

    .line 288
    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 289
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    :cond_64
    return-object p3

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p2, v0, :cond_8c

    const/16 v0, 0xa

    if-eq p2, v0, :cond_8c

    const/16 v0, 0xd

    if-eq p2, v0, :cond_8c

    const/16 v0, 0x20

    if-eq p2, v0, :cond_8c

    const/16 v0, 0x22

    if-eq p2, v0, :cond_c4

    const/16 v0, 0x27

    if-eq p2, v0, :cond_c4

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_b8

    const/16 v0, 0x5d

    if-eq p2, v0, :cond_9a

    const/16 v0, 0x7b

    if-eq p2, v0, :cond_9d

    const/16 v0, 0x7d

    if-eq p2, v0, :cond_9a

    packed-switch p2, :pswitch_data_de

    .line 226
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_6c

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v0, :cond_6c

    .line 228
    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    move-object v2, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    move-object v0, v1

    move v2, v3

    .line 230
    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v1, v2

    .line 231
    invoke-virtual {p3, p2, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result p4

    if-eqz p4, :cond_4b

    return-object p1

    .line 232
    :cond_4b
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "incorrect token <"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "> at line "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw p1

    :cond_6c
    move-object v0, p0

    move v2, p1

    move-object v1, p3

    move-object v5, p4

    .line 236
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    :pswitch_78
    move-object v0, p0

    move v2, p1

    move-object v1, p3

    move-object v5, p4

    const/4 p1, 0x1

    add-int/lit8 p2, v2, 0x1

    .line 203
    array-length p3, v5

    if-ge p2, p3, :cond_dd

    aget-char p2, v5, p2

    const/16 p3, 0x2f

    if-ne p2, p3, :cond_dd

    .line 204
    iput-boolean p1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    return-object v1

    :pswitch_8b
    move-object v0, p0

    :cond_8c
    move-object v1, p3

    goto :goto_dd

    :pswitch_8e
    move-object v0, p0

    move v2, p1

    move-object v1, p3

    move-object v5, p4

    .line 221
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    :cond_9a
    move v2, p1

    move-object v1, p3

    goto :goto_a9

    :cond_9d
    move v2, p1

    move-object v1, p3

    move-object v5, p4

    .line 175
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    :goto_a9
    add-int/lit8 p1, v2, -0x1

    int-to-long p1, p1

    .line 186
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 187
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    int-to-long p2, v2

    .line 188
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    return-object p1

    :cond_b8
    move v2, p1

    move-object v1, p3

    move-object v5, p4

    .line 180
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    :cond_c4
    move v2, p1

    move-object v1, p3

    move-object v5, p4

    .line 193
    instance-of p1, v1, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz p1, :cond_d4

    .line 194
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    .line 197
    :cond_d4
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p1

    return-object p1

    :cond_dd
    :goto_dd
    return-object v1

    :pswitch_data_de
    .packed-switch 0x2b
        :pswitch_8e
        :pswitch_8b
        :pswitch_8e
        :pswitch_8e
        :pswitch_78
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8b
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 30
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 41
    iget-object v1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 44
    array-length v2, v1

    const/4 v3, 0x1

    .line 47
    iput v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-ge v5, v2, :cond_24

    .line 51
    aget-char v8, v1, v5

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_1a

    goto :goto_25

    :cond_1a
    if-ne v8, v6, :cond_21

    .line 57
    iget v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_24
    move v5, v7

    :goto_25
    if-eq v5, v7, :cond_196

    .line 65
    invoke-static {v1}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v7

    .line 66
    iget v8, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLObject;->setLine(I)V

    int-to-long v8, v5

    .line 67
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/parser/CLObject;->setStart(J)V

    add-int/2addr v5, v3

    move-object v8, v7

    :goto_36
    if-ge v5, v2, :cond_157

    .line 71
    aget-char v9, v1, v5

    if-ne v9, v6, :cond_41

    .line 73
    iget v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    add-int/2addr v10, v3

    iput v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 75
    :cond_41
    iget-boolean v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    if-eqz v10, :cond_4e

    if-ne v9, v6, :cond_4a

    .line 77
    iput-boolean v4, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    goto :goto_4e

    :cond_4a
    move/from16 v16, v3

    goto/16 :goto_150

    :cond_4e
    :goto_4e
    if-nez v8, :cond_52

    goto/16 :goto_157

    .line 88
    :cond_52
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v10

    if-eqz v10, :cond_60

    .line 89
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    :cond_5c
    :goto_5c
    move/from16 v16, v3

    goto/16 :goto_137

    .line 90
    :cond_60
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLObject;

    const/16 v11, 0x7d

    if-eqz v10, :cond_74

    if-ne v9, v11, :cond_6f

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 92
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_5c

    .line 94
    :cond_6f
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_5c

    .line 96
    :cond_74
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLArray;

    const/16 v12, 0x5d

    if-eqz v10, :cond_88

    if-ne v9, v12, :cond_83

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 98
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_5c

    .line 100
    :cond_83
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_5c

    .line 102
    :cond_88
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLString;

    const-wide/16 v13, 0x1

    if-eqz v10, :cond_a2

    .line 103
    iget-wide v10, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    long-to-int v10, v10

    aget-char v10, v1, v10

    if-ne v10, v9, :cond_5c

    .line 105
    iget-wide v9, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    add-long/2addr v9, v13

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 106
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_5c

    .line 109
    :cond_a2
    instance-of v15, v8, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v15, :cond_d8

    .line 110
    move-object v15, v8

    check-cast v15, Landroidx/constraintlayout/core/parser/CLToken;

    move/from16 v16, v3

    int-to-long v3, v5

    .line 111
    invoke-virtual {v15, v9, v3, v4}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v3

    if-eqz v3, :cond_b3

    goto :goto_da

    .line 112
    :cond_b3
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsing incorrect token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_d8
    move/from16 v16, v3

    .line 116
    :goto_da
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-nez v3, :cond_e0

    if-eqz v10, :cond_fb

    .line 117
    :cond_e0
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    long-to-int v3, v3

    aget-char v3, v1, v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_ed

    const/16 v4, 0x22

    if-ne v3, v4, :cond_fb

    :cond_ed
    if-ne v3, v9, :cond_fb

    .line 119
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    add-long/2addr v3, v13

    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 120
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 123
    :cond_fb
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-nez v3, :cond_137

    if-eq v9, v11, :cond_11b

    if-eq v9, v12, :cond_11b

    const/16 v3, 0x2c

    if-eq v9, v3, :cond_11b

    const/16 v3, 0x20

    if-eq v9, v3, :cond_11b

    const/16 v3, 0x9

    if-eq v9, v3, :cond_11b

    const/16 v3, 0xd

    if-eq v9, v3, :cond_11b

    if-eq v9, v6, :cond_11b

    const/16 v3, 0x3a

    if-ne v9, v3, :cond_137

    :cond_11b
    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 126
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    if-eq v9, v11, :cond_125

    if-ne v9, v12, :cond_137

    .line 128
    :cond_125
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 129
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 130
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v9, :cond_137

    .line 131
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 132
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 139
    :cond_137
    :goto_137
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-eqz v3, :cond_150

    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v3, :cond_14c

    move-object v3, v8

    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v3, v3, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_150

    .line 141
    :cond_14c
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    :cond_150
    :goto_150
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_36

    :cond_157
    :goto_157
    move/from16 v16, v3

    :goto_159
    if-eqz v8, :cond_179

    .line 147
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v1

    if-nez v1, :cond_179

    .line 148
    instance-of v1, v8, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_16e

    .line 149
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    long-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_16e
    add-int/lit8 v1, v2, -0x1

    int-to-long v3, v1

    .line 151
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 152
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_159

    .line 155
    :cond_179
    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->sDebug:Z

    if-eqz v1, :cond_195

    .line 156
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_195
    return-object v7

    .line 61
    :cond_196
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v2, "invalid json content"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1
.end method
