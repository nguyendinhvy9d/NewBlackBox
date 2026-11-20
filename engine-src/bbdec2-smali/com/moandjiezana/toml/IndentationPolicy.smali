.class Lcom/moandjiezana/toml/IndentationPolicy;
.super Ljava/lang/Object;
.source "IndentationPolicy.java"


# instance fields
.field private final arrayDelimiterPadding:I

.field private final keyValueIndent:I

.field private final tableIndent:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/moandjiezana/toml/IndentationPolicy;->keyValueIndent:I

    .line 15
    iput p2, p0, Lcom/moandjiezana/toml/IndentationPolicy;->tableIndent:I

    .line 16
    iput p3, p0, Lcom/moandjiezana/toml/IndentationPolicy;->arrayDelimiterPadding:I

    return-void
.end method


# virtual methods
.method getArrayDelimiterPadding()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/moandjiezana/toml/IndentationPolicy;->arrayDelimiterPadding:I

    return v0
.end method

.method getKeyValueIndent()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/moandjiezana/toml/IndentationPolicy;->keyValueIndent:I

    return v0
.end method

.method getTableIndent()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/moandjiezana/toml/IndentationPolicy;->tableIndent:I

    return v0
.end method
