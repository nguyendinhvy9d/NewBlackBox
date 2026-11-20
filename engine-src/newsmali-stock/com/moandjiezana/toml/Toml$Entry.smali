.class Lcom/moandjiezana/toml/Toml$Entry;
.super Ljava/lang/Object;
.source "Toml.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/Toml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/moandjiezana/toml/Toml;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 386
    iput-object p1, p0, Lcom/moandjiezana/toml/Toml$Entry;->this$0:Lcom/moandjiezana/toml/Toml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/moandjiezana/toml/Toml$Entry;->key:Ljava/lang/String;

    .line 388
    iput-object p3, p0, Lcom/moandjiezana/toml/Toml$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;Lcom/moandjiezana/toml/Toml$1;)V
    .registers 5

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/moandjiezana/toml/Toml$Entry;-><init>(Lcom/moandjiezana/toml/Toml;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 366
    invoke-virtual {p0}, Lcom/moandjiezana/toml/Toml$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/moandjiezana/toml/Toml$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 383
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TOML entry values cannot be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
