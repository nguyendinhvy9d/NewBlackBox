.class Lcom/moandjiezana/toml/Container$Table;
.super Lcom/moandjiezana/toml/Container;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field final implicit:Z

.field final name:Ljava/lang/String;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/moandjiezana/toml/Container$Table;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/moandjiezana/toml/Container$Table;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/Container;-><init>(Lcom/moandjiezana/toml/Container$1;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/moandjiezana/toml/Container$Table;->name:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/moandjiezana/toml/Container$Table;->implicit:Z

    return-void
.end method


# virtual methods
.method accepts(Ljava/lang/String;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method consume()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/moandjiezana/toml/Container$Table;

    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moandjiezana/toml/Container$Table;

    invoke-virtual {v2}, Lcom/moandjiezana/toml/Container$Table;->consume()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/moandjiezana/toml/Container$TableArray;

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moandjiezana/toml/Container$TableArray;

    invoke-virtual {v2}, Lcom/moandjiezana/toml/Container$TableArray;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    return-object v0
.end method

.method get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isImplicit()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/moandjiezana/toml/Container$Table;->implicit:Z

    return v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/moandjiezana/toml/Container$Table;->values:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
