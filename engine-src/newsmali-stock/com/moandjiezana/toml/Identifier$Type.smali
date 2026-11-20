.class final enum Lcom/moandjiezana/toml/Identifier$Type;
.super Ljava/lang/Enum;
.source "Identifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/Identifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moandjiezana/toml/Identifier$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moandjiezana/toml/Identifier$Type;

.field public static final enum KEY:Lcom/moandjiezana/toml/Identifier$Type;

.field public static final enum TABLE:Lcom/moandjiezana/toml/Identifier$Type;

.field public static final enum TABLE_ARRAY:Lcom/moandjiezana/toml/Identifier$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 68
    new-instance v0, Lcom/moandjiezana/toml/Identifier$Type;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moandjiezana/toml/Identifier$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moandjiezana/toml/Identifier$Type;->KEY:Lcom/moandjiezana/toml/Identifier$Type;

    new-instance v1, Lcom/moandjiezana/toml/Identifier$Type;

    const-string v2, "TABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/moandjiezana/toml/Identifier$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moandjiezana/toml/Identifier$Type;->TABLE:Lcom/moandjiezana/toml/Identifier$Type;

    new-instance v2, Lcom/moandjiezana/toml/Identifier$Type;

    const-string v3, "TABLE_ARRAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/moandjiezana/toml/Identifier$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/moandjiezana/toml/Identifier$Type;->TABLE_ARRAY:Lcom/moandjiezana/toml/Identifier$Type;

    .line 67
    filled-new-array {v0, v1, v2}, [Lcom/moandjiezana/toml/Identifier$Type;

    move-result-object v0

    sput-object v0, Lcom/moandjiezana/toml/Identifier$Type;->$VALUES:[Lcom/moandjiezana/toml/Identifier$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moandjiezana/toml/Identifier$Type;
    .registers 2

    .line 67
    const-class v0, Lcom/moandjiezana/toml/Identifier$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moandjiezana/toml/Identifier$Type;

    return-object p0
.end method

.method public static values()[Lcom/moandjiezana/toml/Identifier$Type;
    .registers 1

    .line 67
    sget-object v0, Lcom/moandjiezana/toml/Identifier$Type;->$VALUES:[Lcom/moandjiezana/toml/Identifier$Type;

    invoke-virtual {v0}, [Lcom/moandjiezana/toml/Identifier$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moandjiezana/toml/Identifier$Type;

    return-object v0
.end method
