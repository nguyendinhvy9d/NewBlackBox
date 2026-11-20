.class public Lcom/moandjiezana/toml/TomlWriter$Builder;
.super Ljava/lang/Object;
.source "TomlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/TomlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private arrayDelimiterPadding:I

.field private keyIndentation:I

.field private showFractionalSeconds:Z

.field private tableIndentation:I

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->arrayDelimiterPadding:I

    .line 42
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->timeZone:Ljava/util/TimeZone;

    .line 43
    iput-boolean v0, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->showFractionalSeconds:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/moandjiezana/toml/TomlWriter;
    .locals 7

    .line 74
    new-instance v0, Lcom/moandjiezana/toml/TomlWriter;

    iget v1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->keyIndentation:I

    iget v2, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->tableIndentation:I

    iget v3, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->arrayDelimiterPadding:I

    iget-object v4, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->timeZone:Ljava/util/TimeZone;

    iget-boolean v5, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->showFractionalSeconds:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/moandjiezana/toml/TomlWriter;-><init>(IIILjava/util/TimeZone;ZLcom/moandjiezana/toml/TomlWriter$1;)V

    return-object v0
.end method

.method public indentTablesBy(I)Lcom/moandjiezana/toml/TomlWriter$Builder;
    .locals 0

    .line 52
    iput p1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->tableIndentation:I

    return-object p0
.end method

.method public indentValuesBy(I)Lcom/moandjiezana/toml/TomlWriter$Builder;
    .locals 0

    .line 46
    iput p1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->keyIndentation:I

    return-object p0
.end method

.method public padArrayDelimitersBy(I)Lcom/moandjiezana/toml/TomlWriter$Builder;
    .locals 0

    .line 68
    iput p1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->arrayDelimiterPadding:I

    return-object p0
.end method

.method public showFractionalSeconds()Lcom/moandjiezana/toml/TomlWriter$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->showFractionalSeconds:Z

    return-object p0
.end method

.method public timeZone(Ljava/util/TimeZone;)Lcom/moandjiezana/toml/TomlWriter$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/moandjiezana/toml/TomlWriter$Builder;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method
