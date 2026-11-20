.class public final enum Lio/vanta/core/system/user/BUserStatus;
.super Ljava/lang/Enum;
.source "BUserStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/vanta/core/system/user/BUserStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/vanta/core/system/user/BUserStatus;

.field public static final enum DISABLE:Lio/vanta/core/system/user/BUserStatus;

.field public static final enum ENABLE:Lio/vanta/core/system/user/BUserStatus;


# direct methods
.method private static synthetic $values()[Lio/vanta/core/system/user/BUserStatus;
    .locals 2

    .line 4
    sget-object v0, Lio/vanta/core/system/user/BUserStatus;->ENABLE:Lio/vanta/core/system/user/BUserStatus;

    sget-object v1, Lio/vanta/core/system/user/BUserStatus;->DISABLE:Lio/vanta/core/system/user/BUserStatus;

    filled-new-array {v0, v1}, [Lio/vanta/core/system/user/BUserStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lio/vanta/core/system/user/BUserStatus;

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/vanta/core/system/user/BUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/core/system/user/BUserStatus;->ENABLE:Lio/vanta/core/system/user/BUserStatus;

    new-instance v0, Lio/vanta/core/system/user/BUserStatus;

    const-string v1, "DISABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/vanta/core/system/user/BUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/core/system/user/BUserStatus;->DISABLE:Lio/vanta/core/system/user/BUserStatus;

    .line 4
    invoke-static {}, Lio/vanta/core/system/user/BUserStatus;->$values()[Lio/vanta/core/system/user/BUserStatus;

    move-result-object v0

    sput-object v0, Lio/vanta/core/system/user/BUserStatus;->$VALUES:[Lio/vanta/core/system/user/BUserStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/vanta/core/system/user/BUserStatus;
    .locals 1

    .line 4
    const-class v0, Lio/vanta/core/system/user/BUserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/vanta/core/system/user/BUserStatus;

    return-object p0
.end method

.method public static values()[Lio/vanta/core/system/user/BUserStatus;
    .locals 1

    .line 4
    sget-object v0, Lio/vanta/core/system/user/BUserStatus;->$VALUES:[Lio/vanta/core/system/user/BUserStatus;

    invoke-virtual {v0}, [Lio/vanta/core/system/user/BUserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/user/BUserStatus;

    return-object v0
.end method
