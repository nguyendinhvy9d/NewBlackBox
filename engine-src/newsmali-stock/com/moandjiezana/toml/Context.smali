.class Lcom/moandjiezana/toml/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field final errors:Lcom/moandjiezana/toml/Results$Errors;

.field final identifier:Lcom/moandjiezana/toml/Identifier;

.field final line:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Results$Errors;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/moandjiezana/toml/Context;->identifier:Lcom/moandjiezana/toml/Identifier;

    .line 12
    iput-object p2, p0, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    iput-object p3, p0, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    return-void
.end method


# virtual methods
.method public with(Lcom/moandjiezana/toml/Identifier;)Lcom/moandjiezana/toml/Context;
    .registers 5

    .line 17
    new-instance v0, Lcom/moandjiezana/toml/Context;

    iget-object v1, p0, Lcom/moandjiezana/toml/Context;->line:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/moandjiezana/toml/Context;->errors:Lcom/moandjiezana/toml/Results$Errors;

    invoke-direct {v0, p1, v1, v2}, Lcom/moandjiezana/toml/Context;-><init>(Lcom/moandjiezana/toml/Identifier;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/moandjiezana/toml/Results$Errors;)V

    return-object v0
.end method
