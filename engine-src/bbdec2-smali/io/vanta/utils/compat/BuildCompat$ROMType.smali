.class public final enum Lio/vanta/utils/compat/BuildCompat$ROMType;
.super Ljava/lang/Enum;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/compat/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROMType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/vanta/utils/compat/BuildCompat$ROMType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum COLOR_OS:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum EMUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum FLYME:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum LETV:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum MIUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum OTHER:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum SAMSUNG:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum VIVO:Lio/vanta/utils/compat/BuildCompat$ROMType;

.field public static final enum _360:Lio/vanta/utils/compat/BuildCompat$ROMType;


# direct methods
.method private static synthetic $values()[Lio/vanta/utils/compat/BuildCompat$ROMType;
    .locals 9

    .line 146
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->EMUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v1, Lio/vanta/utils/compat/BuildCompat$ROMType;->MIUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v2, Lio/vanta/utils/compat/BuildCompat$ROMType;->FLYME:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v3, Lio/vanta/utils/compat/BuildCompat$ROMType;->COLOR_OS:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v4, Lio/vanta/utils/compat/BuildCompat$ROMType;->LETV:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v5, Lio/vanta/utils/compat/BuildCompat$ROMType;->VIVO:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v6, Lio/vanta/utils/compat/BuildCompat$ROMType;->_360:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v7, Lio/vanta/utils/compat/BuildCompat$ROMType;->SAMSUNG:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sget-object v8, Lio/vanta/utils/compat/BuildCompat$ROMType;->OTHER:Lio/vanta/utils/compat/BuildCompat$ROMType;

    filled-new-array/range {v0 .. v8}, [Lio/vanta/utils/compat/BuildCompat$ROMType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 147
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "EMUI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->EMUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 148
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "MIUI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->MIUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 149
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "FLYME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->FLYME:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 150
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "COLOR_OS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->COLOR_OS:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 151
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "LETV"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->LETV:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 152
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "VIVO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->VIVO:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 153
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "_360"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->_360:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 154
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "SAMSUNG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->SAMSUNG:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 155
    new-instance v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/vanta/utils/compat/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->OTHER:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 146
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat$ROMType;->$values()[Lio/vanta/utils/compat/BuildCompat$ROMType;

    move-result-object v0

    sput-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->$VALUES:[Lio/vanta/utils/compat/BuildCompat$ROMType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/vanta/utils/compat/BuildCompat$ROMType;
    .locals 1

    .line 146
    const-class v0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/vanta/utils/compat/BuildCompat$ROMType;

    return-object p0
.end method

.method public static values()[Lio/vanta/utils/compat/BuildCompat$ROMType;
    .locals 1

    .line 146
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->$VALUES:[Lio/vanta/utils/compat/BuildCompat$ROMType;

    invoke-virtual {v0}, [Lio/vanta/utils/compat/BuildCompat$ROMType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/utils/compat/BuildCompat$ROMType;

    return-object v0
.end method
