.class Lcom/moandjiezana/toml/ValueWriters;
.super Ljava/lang/Object;
.source "ValueWriters.java"


# static fields
.field private static final VALUE_WRITERS:[Lcom/moandjiezana/toml/ValueWriter;

.field static final WRITERS:Lcom/moandjiezana/toml/ValueWriters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/moandjiezana/toml/ValueWriters;

    invoke-direct {v0}, Lcom/moandjiezana/toml/ValueWriters;-><init>()V

    sput-object v0, Lcom/moandjiezana/toml/ValueWriters;->WRITERS:Lcom/moandjiezana/toml/ValueWriters;

    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [Lcom/moandjiezana/toml/ValueWriter;

    const/4 v1, 0x0

    sget-object v2, Lcom/moandjiezana/toml/StringValueReaderWriter;->STRING_VALUE_READER_WRITER:Lcom/moandjiezana/toml/StringValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/moandjiezana/toml/NumberValueReaderWriter;->NUMBER_VALUE_READER_WRITER:Lcom/moandjiezana/toml/NumberValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/moandjiezana/toml/BooleanValueReaderWriter;->BOOLEAN_VALUE_READER_WRITER:Lcom/moandjiezana/toml/BooleanValueReaderWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 35
    invoke-static {}, Lcom/moandjiezana/toml/ValueWriters;->getPlatformSpecificDateConverter()Lcom/moandjiezana/toml/DateValueReaderWriter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/moandjiezana/toml/MapValueWriter;->MAP_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/moandjiezana/toml/PrimitiveArrayValueWriter;->PRIMITIVE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/moandjiezana/toml/TableArrayValueWriter;->TABLE_ARRAY_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moandjiezana/toml/ValueWriters;->VALUE_WRITERS:[Lcom/moandjiezana/toml/ValueWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPlatformSpecificDateConverter()Lcom/moandjiezana/toml/DateValueReaderWriter;
    .locals 2

    .line 30
    const-class v0, Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_PARSER_JDK_6:Lcom/moandjiezana/toml/DateValueReaderWriter;

    return-object v0

    :cond_0
    sget-object v0, Lcom/moandjiezana/toml/DateValueReaderWriter;->DATE_VALUE_READER_WRITER:Lcom/moandjiezana/toml/DateValueReaderWriter;

    return-object v0
.end method


# virtual methods
.method findWriterFor(Ljava/lang/Object;)Lcom/moandjiezana/toml/ValueWriter;
    .locals 5

    .line 18
    sget-object v0, Lcom/moandjiezana/toml/ValueWriters;->VALUE_WRITERS:[Lcom/moandjiezana/toml/ValueWriter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    invoke-interface {v3, p1}, Lcom/moandjiezana/toml/ValueWriter;->canWrite(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/moandjiezana/toml/ObjectValueWriter;->OBJECT_VALUE_WRITER:Lcom/moandjiezana/toml/ValueWriter;

    return-object p1
.end method
