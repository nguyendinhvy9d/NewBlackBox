.class public Lio/vanta/utils/compat/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/compat/BuildCompat$ROMType;
    }
.end annotation


# static fields
.field private static sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewSDKInt()I
    .registers 1

    .line 10
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    :catchall_3
    const/4 v0, 0x0

    return v0
.end method

.method public static getROMType()Lio/vanta/utils/compat/BuildCompat$ROMType;
    .registers 1

    .line 122
    sget-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    if-nez v0, :cond_60

    .line 123
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isEMUI()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->EMUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 125
    :cond_f
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 126
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->MIUI:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 127
    :cond_1a
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isFlyme()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->FLYME:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 129
    :cond_25
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isColorOS()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 130
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->COLOR_OS:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 131
    :cond_30
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->is360UI()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 132
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->_360:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 133
    :cond_3b
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isLetv()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 134
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->LETV:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 135
    :cond_46
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 136
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->VIVO:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 137
    :cond_51
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 138
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->SAMSUNG:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    goto :goto_60

    .line 140
    :cond_5c
    sget-object v0, Lio/vanta/utils/compat/BuildCompat$ROMType;->OTHER:Lio/vanta/utils/compat/BuildCompat$ROMType;

    sput-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    .line 143
    :cond_60
    :goto_60
    sget-object v0, Lio/vanta/utils/compat/BuildCompat;->sRomType:Lio/vanta/utils/compat/BuildCompat$ROMType;

    return-object v0
.end method

.method public static is360UI()Z
    .registers 2

    .line 106
    const-string v0, "ro.build.uiversion"

    invoke-static {v0}, Lio/vanta/utils/compat/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "360UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static isBaklava()Z
    .registers 3

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isColorOS()Z
    .registers 1

    .line 101
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lio/vanta/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ro.rom.different.version"

    .line 102
    invoke-static {v0}, Lio/vanta/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public static isEMUI()Z
    .registers 3

    .line 85
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 88
    :cond_10
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lio/vanta/utils/compat/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 89
    const-string v2, "EmotionUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlyme()Z
    .registers 2

    .line 97
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isL()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLetv()Z
    .registers 2

    .line 111
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isM()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isMIUI()Z
    .registers 2

    .line 93
    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/vanta/utils/compat/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    return v1
.end method

.method public static isN()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isN_MR1()Z
    .registers 3

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x1

    if-ge v0, v1, :cond_e

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_e
    return v2
.end method

.method public static isOreo()Z
    .registers 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isPie()Z
    .registers 3

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isQ()Z
    .registers 3

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isR()Z
    .registers 3

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isS()Z
    .registers 3

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isSamsung()Z
    .registers 2

    .line 81
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static isTiramisu()Z
    .registers 3

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isU()Z
    .registers 3

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isVanillaIceCream()Z
    .registers 3

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    return v2
.end method

.method public static isVivo()Z
    .registers 1

    .line 115
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lio/vanta/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
