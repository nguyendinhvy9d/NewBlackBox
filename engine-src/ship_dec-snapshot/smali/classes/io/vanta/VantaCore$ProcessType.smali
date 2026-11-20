.class final enum Lio/vanta/VantaCore$ProcessType;
.super Ljava/lang/Enum;
.source "VantaCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/VantaCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/vanta/VantaCore$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/vanta/VantaCore$ProcessType;

.field public static final enum BAppClient:Lio/vanta/VantaCore$ProcessType;

.field public static final enum Main:Lio/vanta/VantaCore$ProcessType;

.field public static final enum Server:Lio/vanta/VantaCore$ProcessType;


# direct methods
.method private static synthetic $values()[Lio/vanta/VantaCore$ProcessType;
    .locals 3

    .line 1268
    sget-object v0, Lio/vanta/VantaCore$ProcessType;->Server:Lio/vanta/VantaCore$ProcessType;

    sget-object v1, Lio/vanta/VantaCore$ProcessType;->BAppClient:Lio/vanta/VantaCore$ProcessType;

    sget-object v2, Lio/vanta/VantaCore$ProcessType;->Main:Lio/vanta/VantaCore$ProcessType;

    filled-new-array {v0, v1, v2}, [Lio/vanta/VantaCore$ProcessType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1270
    new-instance v0, Lio/vanta/VantaCore$ProcessType;

    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/vanta/VantaCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/VantaCore$ProcessType;->Server:Lio/vanta/VantaCore$ProcessType;

    .line 1272
    new-instance v0, Lio/vanta/VantaCore$ProcessType;

    const-string v1, "BAppClient"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/vanta/VantaCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/VantaCore$ProcessType;->BAppClient:Lio/vanta/VantaCore$ProcessType;

    .line 1274
    new-instance v0, Lio/vanta/VantaCore$ProcessType;

    const-string v1, "Main"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/vanta/VantaCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/VantaCore$ProcessType;->Main:Lio/vanta/VantaCore$ProcessType;

    .line 1268
    invoke-static {}, Lio/vanta/VantaCore$ProcessType;->$values()[Lio/vanta/VantaCore$ProcessType;

    move-result-object v0

    sput-object v0, Lio/vanta/VantaCore$ProcessType;->$VALUES:[Lio/vanta/VantaCore$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/vanta/VantaCore$ProcessType;
    .locals 1

    .line 1268
    const-class v0, Lio/vanta/VantaCore$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/vanta/VantaCore$ProcessType;

    return-object p0
.end method

.method public static values()[Lio/vanta/VantaCore$ProcessType;
    .locals 1

    .line 1268
    sget-object v0, Lio/vanta/VantaCore$ProcessType;->$VALUES:[Lio/vanta/VantaCore$ProcessType;

    invoke-virtual {v0}, [Lio/vanta/VantaCore$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/VantaCore$ProcessType;

    return-object v0
.end method
