.class Lcom/moandjiezana/toml/Results;
.super Ljava/lang/Object;
.source "Results.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/Results$Errors;
    }
.end annotation


# instance fields
.field final errors:Lcom/moandjiezana/toml/Results$Errors;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/moandjiezana/toml/Container;",
            ">;"
        }
    .end annotation
.end field

.field private final tables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v0}, Lcom/moandjiezana/toml/Results$Errors;-><init>()V

    iput-object v0, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/moandjiezana/toml/Results;->tables:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    .line 135
    new-instance v1, Lcom/moandjiezana/toml/Container$Table;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/moandjiezana/toml/Container$Table;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private getInlineTablePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2e

    if-eqz v2, :cond_35

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moandjiezana/toml/Container;

    .line 268
    instance-of v4, v2, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz v4, :cond_1f

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_1f
    check-cast v2, Lcom/moandjiezana/toml/Container$Table;

    .line 274
    iget-object v4, v2, Lcom/moandjiezana/toml/Container$Table;->name:Ljava/lang/String;

    if-nez v4, :cond_26

    goto :goto_35

    .line 278
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_2f
    iget-object v2, v2, Lcom/moandjiezana/toml/Container$Table;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 285
    :cond_35
    :goto_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 286
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    :cond_3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v2, 0x5b

    .line 290
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5d

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startTable(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/moandjiezana/toml/Container;
    .registers 4

    .line 247
    new-instance v0, Lcom/moandjiezana/toml/Container$Table;

    invoke-direct {v0, p1}, Lcom/moandjiezana/toml/Container$Table;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1, v0, p2}, Lcom/moandjiezana/toml/Results;->addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 249
    iget-object p1, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object v0
.end method

.method private startTable(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;)Lcom/moandjiezana/toml/Container;
    .registers 5

    .line 255
    new-instance v0, Lcom/moandjiezana/toml/Container$Table;

    invoke-direct {v0, p1, p2}, Lcom/moandjiezana/toml/Container$Table;-><init>(Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p0, p1, v0, p3}, Lcom/moandjiezana/toml/Results;->addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 257
    iget-object p1, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 7

    .line 139
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moandjiezana/toml/Container;

    .line 141
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_56

    .line 142
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Results;->getInlineTablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 144
    invoke-direct {p0, p1, p3}, Lcom/moandjiezana/toml/Results;->startTable(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/moandjiezana/toml/Container;

    goto :goto_2c

    .line 145
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 146
    invoke-static {p1, v2}, Lcom/moandjiezana/toml/Identifier;->from(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/moandjiezana/toml/Results;->startTables(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_2c

    .line 148
    :cond_25
    invoke-static {v0, v2}, Lcom/moandjiezana/toml/Identifier;->from(Ljava/lang/String;Lcom/moandjiezana/toml/Context;)Lcom/moandjiezana/toml/Identifier;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/moandjiezana/toml/Results;->startTables(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 151
    :goto_2c
    check-cast p2, Ljava/util/Map;

    .line 152
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p3}, Lcom/moandjiezana/toml/Results;->addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_36

    .line 155
    :cond_50
    iget-object p1, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-void

    .line 156
    :cond_56
    invoke-virtual {v0, p1}, Lcom/moandjiezana/toml/Container;->accepts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 157
    invoke-virtual {v0, p1, p2}, Lcom/moandjiezana/toml/Container;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_60
    invoke-virtual {v0, p1}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/moandjiezana/toml/Container;

    if-eqz p2, :cond_6e

    .line 160
    iget-object p2, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {p2, p1, p3}, Lcom/moandjiezana/toml/Results$Errors;->keyDuplicatesTable(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void

    .line 162
    :cond_6e
    iget-object p2, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    if-eqz p3, :cond_77

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    goto :goto_78

    :cond_77
    const/4 p3, -0x1

    :goto_78
    invoke-virtual {p2, p1, p3}, Lcom/moandjiezana/toml/Results$Errors;->duplicateKey(Ljava/lang/String;I)V

    return-void
.end method

.method consume()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moandjiezana/toml/Container;

    .line 241
    iget-object v1, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 243
    check-cast v0, Lcom/moandjiezana/toml/Container$Table;

    invoke-virtual {v0}, Lcom/moandjiezana/toml/Container$Table;->consume()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method startTableArray(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 9

    .line 168
    invoke-virtual {p1}, Lcom/moandjiezana/toml/Identifier;->getBareName()Ljava/lang/String;

    move-result-object p1

    .line 169
    :goto_4
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 170
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 173
    :cond_13
    invoke-static {p1}, Lcom/moandjiezana/toml/Keys;->split(Ljava/lang/String;)[Lcom/moandjiezana/toml/Keys$Key;

    move-result-object v0

    const/4 v2, 0x0

    .line 174
    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_a9

    .line 175
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/moandjiezana/toml/Keys$Key;->name:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moandjiezana/toml/Container;

    .line 178
    invoke-virtual {v4, v3}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz v5, :cond_58

    .line 179
    invoke-virtual {v4, v3}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moandjiezana/toml/Container$TableArray;

    .line 180
    iget-object v5, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 182
    array-length v5, v0

    sub-int/2addr v5, v1

    if-ne v2, v5, :cond_46

    .line 183
    new-instance v5, Lcom/moandjiezana/toml/Container$Table;

    invoke-direct {v5}, Lcom/moandjiezana/toml/Container$Table;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/moandjiezana/toml/Container$TableArray;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_46
    iget-object v3, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-virtual {v4}, Lcom/moandjiezana/toml/Container$TableArray;->getCurrent()Lcom/moandjiezana/toml/Container$Table;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 187
    iget-object v3, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/moandjiezana/toml/Container;

    goto :goto_9c

    .line 188
    :cond_58
    invoke-virtual {v4, v3}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/moandjiezana/toml/Container$Table;

    if-eqz v5, :cond_70

    array-length v5, v0

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_70

    .line 189
    invoke-virtual {v4, v3}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/moandjiezana/toml/Container;

    .line 190
    iget-object v4, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_9c

    .line 191
    :cond_70
    invoke-virtual {v4, v3}, Lcom/moandjiezana/toml/Container;->accepts(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 192
    array-length v4, v0

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_80

    new-instance v4, Lcom/moandjiezana/toml/Container$TableArray;

    invoke-direct {v4}, Lcom/moandjiezana/toml/Container$TableArray;-><init>()V

    goto :goto_85

    :cond_80
    new-instance v4, Lcom/moandjiezana/toml/Container$Table;

    invoke-direct {v4}, Lcom/moandjiezana/toml/Container$Table;-><init>()V

    .line 193
    :goto_85
    invoke-virtual {p0, v3, v4, p2}, Lcom/moandjiezana/toml/Results;->addValue(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 194
    iget-object v3, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 196
    instance-of v3, v4, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz v3, :cond_9c

    .line 197
    iget-object v3, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    check-cast v4, Lcom/moandjiezana/toml/Container$TableArray;

    invoke-virtual {v4}, Lcom/moandjiezana/toml/Container$TableArray;->getCurrent()Lcom/moandjiezana/toml/Container$Table;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_9c
    :goto_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 200
    :cond_a0
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/moandjiezana/toml/Results$Errors;->duplicateTable(Ljava/lang/String;I)V

    :cond_a9
    return-void
.end method

.method startTables(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 10

    .line 207
    invoke-virtual {p1}, Lcom/moandjiezana/toml/Identifier;->getBareName()Ljava/lang/String;

    move-result-object p1

    .line 209
    :goto_4
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 210
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 213
    :cond_13
    invoke-static {p1}, Lcom/moandjiezana/toml/Keys;->split(Ljava/lang/String;)[Lcom/moandjiezana/toml/Keys$Key;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 214
    :goto_19
    array-length v4, v0

    if-ge v3, v4, :cond_81

    .line 215
    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/moandjiezana/toml/Keys$Key;->name:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/moandjiezana/toml/Container;

    .line 217
    invoke-virtual {v5, v4}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/moandjiezana/toml/Container;

    if-eqz v6, :cond_69

    .line 218
    invoke-virtual {v5, v4}, Lcom/moandjiezana/toml/Container;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moandjiezana/toml/Container;

    .line 219
    array-length v5, v0

    sub-int/2addr v5, v1

    if-ne v3, v5, :cond_4a

    invoke-virtual {v4}, Lcom/moandjiezana/toml/Container;->isImplicit()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 220
    iget-object v0, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/moandjiezana/toml/Results$Errors;->duplicateTable(Ljava/lang/String;I)V

    return-void

    .line 223
    :cond_4a
    iget-object v5, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 224
    iget-object v4, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz v4, :cond_79

    .line 225
    iget-object v4, p0, Lcom/moandjiezana/toml/Results;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/moandjiezana/toml/Container$TableArray;

    invoke-virtual {v5}, Lcom/moandjiezana/toml/Container$TableArray;->getCurrent()Lcom/moandjiezana/toml/Container$Table;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_79

    .line 227
    :cond_69
    invoke-virtual {v5, v4}, Lcom/moandjiezana/toml/Container;->accepts(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 228
    array-length v5, v0

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_75

    move v5, v1

    goto :goto_76

    :cond_75
    move v5, v2

    :goto_76
    invoke-direct {p0, v4, v5, p2}, Lcom/moandjiezana/toml/Results;->startTable(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;)Lcom/moandjiezana/toml/Container;

    :cond_79
    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 230
    :cond_7c
    iget-object p1, p0, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {p1, v4, p2}, Lcom/moandjiezana/toml/Results$Errors;->tableDuplicatesKey(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    :cond_81
    return-void
.end method
