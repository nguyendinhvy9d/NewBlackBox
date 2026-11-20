.class Lcom/moandjiezana/toml/DateValueReaderWriter$DateConverterJdk6;
.super Lcom/moandjiezana/toml/DateValueReaderWriter;
.source "DateValueReaderWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/DateValueReaderWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateConverterJdk6"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lcom/moandjiezana/toml/DateValueReaderWriter;-><init>(Lcom/moandjiezana/toml/DateValueReaderWriter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moandjiezana/toml/DateValueReaderWriter$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/moandjiezana/toml/DateValueReaderWriter$DateConverterJdk6;-><init>()V

    return-void
.end method


# virtual methods
.method getTimeZoneAndFractionalSecondsFormat()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    return-object v0
.end method

.method getTimeZoneFormat()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lcom/moandjiezana/toml/WriterContext;)V
    .locals 2

    .line 134
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->getDatePolicy()Lcom/moandjiezana/toml/DatePolicy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/moandjiezana/toml/DateValueReaderWriter;->access$200(Lcom/moandjiezana/toml/DateValueReaderWriter;Lcom/moandjiezana/toml/DatePolicy;)Ljava/text/DateFormat;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Lcom/moandjiezana/toml/WriterContext;->getDatePolicy()Lcom/moandjiezana/toml/DatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moandjiezana/toml/DatePolicy;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    move-result-object p2

    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Lcom/moandjiezana/toml/WriterContext;->write(C)Lcom/moandjiezana/toml/WriterContext;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/moandjiezana/toml/WriterContext;->write(Ljava/lang/String;)Lcom/moandjiezana/toml/WriterContext;

    return-void
.end method
