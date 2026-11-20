.class Lcom/moandjiezana/toml/Container$TableArray;
.super Lcom/moandjiezana/toml/Container;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TableArray"
.end annotation


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moandjiezana/toml/Container$Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/Container;-><init>(Lcom/moandjiezana/toml/Container$1;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moandjiezana/toml/Container$TableArray;->values:Ljava/util/List;

    .line 81
    new-instance v1, Lcom/moandjiezana/toml/Container$Table;

    invoke-direct {v1}, Lcom/moandjiezana/toml/Container$Table;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method accepts(Ljava/lang/String;)Z
    .registers 3

    .line 86
    invoke-virtual {p0}, Lcom/moandjiezana/toml/Container$TableArray;->getCurrent()Lcom/moandjiezana/toml/Container$Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moandjiezana/toml/Container$Table;->accepts(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method getCurrent()Lcom/moandjiezana/toml/Container$Table;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$TableArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moandjiezana/toml/Container$Table;

    return-object v0
.end method

.method getValues()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/moandjiezana/toml/Container$TableArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moandjiezana/toml/Container$Table;

    .line 106
    invoke-virtual {v2}, Lcom/moandjiezana/toml/Container$Table;->consume()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method isImplicit()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 91
    iget-object p1, p0, Lcom/moandjiezana/toml/Container$TableArray;->values:Ljava/util/List;

    check-cast p2, Lcom/moandjiezana/toml/Container$Table;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$TableArray;->values:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
