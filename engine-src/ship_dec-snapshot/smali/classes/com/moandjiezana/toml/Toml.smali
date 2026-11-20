.class public Lcom/moandjiezana/toml/Toml;
.super Ljava/lang/Object;
.source "Toml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/Toml$Entry;
    }
.end annotation


# static fields
.field private static final DEFAULT_GSON:Lcom/google/gson/Gson;


# instance fields
.field private final defaults:Lcom/moandjiezana/toml/Toml;

.field private values:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/Toml;->DEFAULT_GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/Toml;-><init>(Lcom/moandjiezana/toml/Toml;)V

    return-void
.end method

.method public constructor <init>(Lcom/moandjiezana/toml/Toml;)V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/moandjiezana/toml/Toml;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/moandjiezana/toml/Toml;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moandjiezana/toml/Toml;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    iput-object p2, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    .line 427
    iput-object p1, p0, Lcom/moandjiezana/toml/Toml;->defaults:Lcom/moandjiezana/toml/Toml;

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 394
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 400
    invoke-static {p1}, Lcom/moandjiezana/toml/Keys;->split(Ljava/lang/String;)[Lcom/moandjiezana/toml/Keys$Key;

    move-result-object v1

    .line 402
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 403
    iget v5, v4, Lcom/moandjiezana/toml/Keys$Key;->index:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    iget-object v7, v4, Lcom/moandjiezana/toml/Keys$Key;->path:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 404
    iget-object p1, v4, Lcom/moandjiezana/toml/Keys$Key;->path:Ljava/lang/String;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 407
    :cond_1
    check-cast v0, Ljava/util/Map;

    iget-object v5, v4, Lcom/moandjiezana/toml/Keys$Key;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    iget v5, v4, Lcom/moandjiezana/toml/Keys$Key;->index:I

    const/4 v7, 0x0

    if-le v5, v6, :cond_3

    if-eqz v0, :cond_3

    .line 410
    iget v5, v4, Lcom/moandjiezana/toml/Keys$Key;->index:I

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    return-object v7

    .line 414
    :cond_2
    iget v4, v4, Lcom/moandjiezana/toml/Keys$Key;->index:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 418
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml;->defaults:Lcom/moandjiezana/toml/Toml;

    if-eqz v0, :cond_4

    invoke-direct {v0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsPrimitive(Ljava/lang/String;)Z
    .locals 1

    .line 262
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of p1, p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsTable(Ljava/lang/String;)Z
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsTableArray(Ljava/lang/String;)Z
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    instance-of p1, p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 349
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 350
    new-instance v3, Lcom/moandjiezana/toml/Toml$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/moandjiezana/toml/Toml;->getTable(Ljava/lang/String;)Lcom/moandjiezana/toml/Toml;

    move-result-object v2

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/moandjiezana/toml/Toml$Entry;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;Lcom/moandjiezana/toml/Toml$1;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_0
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 353
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 354
    new-instance v3, Lcom/moandjiezana/toml/Toml$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/moandjiezana/toml/Toml;->getTables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/moandjiezana/toml/Toml$Entry;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;Lcom/moandjiezana/toml/Toml$1;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_1
    new-instance v4, Lcom/moandjiezana/toml/Toml$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, p0, v2, v3, v5}, Lcom/moandjiezana/toml/Toml$Entry;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;Lcom/moandjiezana/toml/Toml$1;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_2
    new-instance v3, Lcom/moandjiezana/toml/Toml$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/moandjiezana/toml/Toml$Entry;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;Lcom/moandjiezana/toml/Toml$1;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getTable(Ljava/lang/String;)Lcom/moandjiezana/toml/Toml;
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 225
    new-instance v1, Lcom/moandjiezana/toml/Toml;

    invoke-direct {v1, v0, p1}, Lcom/moandjiezana/toml/Toml;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/util/Map;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTables(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/moandjiezana/toml/Toml;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1}, Lcom/moandjiezana/toml/Toml;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 240
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 243
    new-instance v3, Lcom/moandjiezana/toml/Toml;

    invoke-direct {v3, v0, v2}, Lcom/moandjiezana/toml/Toml;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/moandjiezana/toml/Toml;)Lcom/moandjiezana/toml/Toml;
    .locals 0

    .line 125
    iget-object p1, p1, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    iput-object p1, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    return-object p0
.end method

.method public read(Ljava/io/File;)Lcom/moandjiezana/toml/Toml;
    .locals 2

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p1, "UTF8"

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/Toml;->read(Ljava/io/Reader;)Lcom/moandjiezana/toml/Toml;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(Ljava/io/InputStream;)Lcom/moandjiezana/toml/Toml;
    .locals 1

    .line 86
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/moandjiezana/toml/Toml;->read(Ljava/io/Reader;)Lcom/moandjiezana/toml/Toml;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;)Lcom/moandjiezana/toml/Toml;
    .locals 3

    const/4 v0, 0x0

    .line 99
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/moandjiezana/toml/Toml;->read(Ljava/lang/String;)Lcom/moandjiezana/toml/Toml;

    .line 112
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 109
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 113
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw p1
.end method

.method public read(Ljava/lang/String;)Lcom/moandjiezana/toml/Toml;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/moandjiezana/toml/TomlParser;->run(Ljava/lang/String;)Lcom/moandjiezana/toml/Results;

    move-result-object p1

    .line 139
    iget-object v0, p1, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {v0}, Lcom/moandjiezana/toml/Results$Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/moandjiezana/toml/Results;->consume()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    return-object p0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p1, p1, Lcom/moandjiezana/toml/Results;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-virtual {p1}, Lcom/moandjiezana/toml/Results$Errors;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public to(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/moandjiezana/toml/Toml;->DEFAULT_GSON:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/moandjiezana/toml/Toml;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 319
    const-class v2, Lcom/google/gson/JsonElement;

    if-ne p1, v2, :cond_0

    .line 320
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 329
    iget-object v1, p0, Lcom/moandjiezana/toml/Toml;->defaults:Lcom/moandjiezana/toml/Toml;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, v1, Lcom/moandjiezana/toml/Toml;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
