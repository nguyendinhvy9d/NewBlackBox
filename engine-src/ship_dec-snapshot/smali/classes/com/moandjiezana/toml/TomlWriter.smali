.class public Lcom/moandjiezana/toml/TomlWriter;
.super Ljava/lang/Object;
.source "TomlWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/TomlWriter$Builder;
    }
.end annotation


# instance fields
.field private final datePolicy:Lcom/moandjiezana/toml/DatePolicy;

.field private final indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 90
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/moandjiezana/toml/TomlWriter;-><init>(IIILjava/util/TimeZone;Z)V

    return-void
.end method

.method private constructor <init>(IIILjava/util/TimeZone;Z)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/moandjiezana/toml/IndentationPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/moandjiezana/toml/IndentationPolicy;-><init>(III)V

    iput-object v0, p0, Lcom/moandjiezana/toml/TomlWriter;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    .line 95
    new-instance p1, Lcom/moandjiezana/toml/DatePolicy;

    invoke-direct {p1, p4, p5}, Lcom/moandjiezana/toml/DatePolicy;-><init>(Ljava/util/TimeZone;Z)V

    iput-object p1, p0, Lcom/moandjiezana/toml/TomlWriter;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/util/TimeZone;ZLcom/moandjiezana/toml/TomlWriter$1;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/moandjiezana/toml/TomlWriter;-><init>(IIILjava/util/TimeZone;Z)V

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/moandjiezana/toml/TomlWriter;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/lang/Object;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/moandjiezana/toml/TomlWriter;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 127
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/moandjiezana/toml/TomlWriter;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    invoke-virtual {v0, p1}, Lcom/moandjiezana/toml/ValueWriters;->findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/moandjiezana/toml/MapValueWriter;->MAP_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/moandjiezana/toml/ObjectValueWriter;->OBJECT_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An object of class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot produce valid TOML. Please pass in a Map or a custom type."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 155
    :cond_1
    :goto_0
    new-instance v1, Lcom/moandjiezana/toml/WriterContext;

    iget-object v2, p0, Lcom/moandjiezana/toml/TomlWriter;->indentationPolicy:Lcom/moandjiezana/toml/IndentationPolicy;

    iget-object v3, p0, Lcom/moandjiezana/toml/TomlWriter;->datePolicy:Lcom/moandjiezana/toml/DatePolicy;

    invoke-direct {v1, v2, v3, p2}, Lcom/moandjiezana/toml/WriterContext;-><init>(Lcom/moandjiezana/toml/IndentationPolicy;Lcom/moandjiezana/toml/DatePolicy;Ljava/io/Writer;)V

    .line 156
    invoke-interface {v0, p1, v1}, Lcom/moandjiezana/toml/ValueWriter;->write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V

    return-void
.end method
