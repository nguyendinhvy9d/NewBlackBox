.class public Lio/vanta/utils/compat/StartActivityCompat;
.super Ljava/lang/Object;
.source "StartActivityCompat.java"


# static fields
.field private static appThreadIndex:I

.field private static callingFeatureIdIndex:I

.field private static callingPageIndex:I

.field private static flagsIndex:I

.field private static index:I

.field private static intentIndex:I

.field private static optionsIndex:I

.field private static profilerInfoIndex:I

.field private static requestCodeIndex:I

.field private static resolvedTypeIndex:I

.field private static resultToIndex:I

.field private static resultWhoIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 24
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v0, Lio/vanta/utils/compat/StartActivityCompat;->appThreadIndex:I

    add-int/lit8 v2, v0, 0x2

    .line 25
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->callingPageIndex:I

    add-int/lit8 v1, v0, 0x3

    .line 26
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->callingFeatureIdIndex:I

    add-int/lit8 v2, v0, 0x4

    .line 27
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->intentIndex:I

    add-int/lit8 v1, v0, 0x5

    .line 28
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    add-int/lit8 v2, v0, 0x6

    .line 29
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->resultToIndex:I

    add-int/lit8 v1, v0, 0x7

    .line 30
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->resultWhoIndex:I

    add-int/lit8 v2, v0, 0x8

    .line 31
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->requestCodeIndex:I

    add-int/lit8 v1, v0, 0x9

    .line 32
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->flagsIndex:I

    add-int/lit8 v2, v0, 0xa

    .line 33
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    add-int/lit8 v0, v0, 0xb

    .line 34
    sput v0, Lio/vanta/utils/compat/StartActivityCompat;->index:I

    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void

    .line 36
    :cond_37
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v0, Lio/vanta/utils/compat/StartActivityCompat;->appThreadIndex:I

    add-int/lit8 v2, v0, 0x2

    .line 37
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->callingPageIndex:I

    add-int/lit8 v1, v0, 0x3

    .line 38
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->intentIndex:I

    add-int/lit8 v2, v0, 0x4

    .line 39
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    add-int/lit8 v1, v0, 0x5

    .line 40
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->resultToIndex:I

    add-int/lit8 v2, v0, 0x6

    .line 41
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->resultWhoIndex:I

    add-int/lit8 v1, v0, 0x7

    .line 42
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->requestCodeIndex:I

    add-int/lit8 v2, v0, 0x8

    .line 43
    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->flagsIndex:I

    add-int/lit8 v1, v0, 0x9

    .line 44
    sput v2, Lio/vanta/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    add-int/lit8 v0, v0, 0xa

    .line 45
    sput v0, Lio/vanta/utils/compat/StartActivityCompat;->index:I

    sput v1, Lio/vanta/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppThreadIndex()I
    .registers 1

    .line 121
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->appThreadIndex:I

    return v0
.end method

.method public static getCallingPackage([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 57
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->callingPageIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 60
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallingPageIndex()I
    .registers 1

    .line 129
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->callingPageIndex:I

    return v0
.end method

.method public static getFlags([Ljava/lang/Object;)I
    .registers 3

    if-eqz p0, :cond_11

    .line 99
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->flagsIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_11

    .line 102
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getFlagsIndex()I
    .registers 1

    .line 177
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->flagsIndex:I

    return v0
.end method

.method public static getIApplicationThread([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_b

    .line 50
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->appThreadIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_b

    .line 53
    :cond_8
    aget-object p0, p0, v1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntent([Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    if-eqz p0, :cond_d

    .line 64
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->intentIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 67
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/content/Intent;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntentIndex()I
    .registers 1

    .line 137
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->intentIndex:I

    return v0
.end method

.method public static getOptions([Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 3

    if-eqz p0, :cond_d

    .line 113
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->optionsIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 116
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOptionsIndex()I
    .registers 1

    .line 193
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->optionsIndex:I

    return v0
.end method

.method public static getProfilerInfo([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_b

    .line 106
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_b

    .line 109
    :cond_8
    aget-object p0, p0, v1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProfilerInfoIndex()I
    .registers 1

    .line 185
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    return v0
.end method

.method public static getRequestCode([Ljava/lang/Object;)I
    .registers 3

    if-eqz p0, :cond_11

    .line 92
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->requestCodeIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_11

    .line 95
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getRequestCodeIndex()I
    .registers 1

    .line 169
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->requestCodeIndex:I

    return v0
.end method

.method public static getResolvedType([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 71
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 74
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResolvedTypeIndex()I
    .registers 1

    .line 145
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    return v0
.end method

.method public static getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;
    .registers 3

    if-eqz p0, :cond_d

    .line 78
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->resultToIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 81
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/os/IBinder;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResultToIndex()I
    .registers 1

    .line 153
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->resultToIndex:I

    return v0
.end method

.method public static getResultWho([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 85
    array-length v0, p0

    sget v1, Lio/vanta/utils/compat/StartActivityCompat;->resultWhoIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 88
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResultWhoIndex()I
    .registers 1

    .line 161
    sget v0, Lio/vanta/utils/compat/StartActivityCompat;->resultWhoIndex:I

    return v0
.end method

.method public static setAppThreadIndex(I)V
    .registers 1

    .line 125
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->appThreadIndex:I

    return-void
.end method

.method public static setCallingPageIndex(I)V
    .registers 1

    .line 133
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->callingPageIndex:I

    return-void
.end method

.method public static setFlagsIndex(I)V
    .registers 1

    .line 181
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->flagsIndex:I

    return-void
.end method

.method public static setIntentIndex(I)V
    .registers 1

    .line 141
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->intentIndex:I

    return-void
.end method

.method public static setOptionsIndex(I)V
    .registers 1

    .line 197
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void
.end method

.method public static setProfilerInfoIndex(I)V
    .registers 1

    .line 189
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    return-void
.end method

.method public static setRequestCodeIndex(I)V
    .registers 1

    .line 173
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->requestCodeIndex:I

    return-void
.end method

.method public static setResolvedTypeIndex(I)V
    .registers 1

    .line 149
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    return-void
.end method

.method public static setResultToIndex(I)V
    .registers 1

    .line 157
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->resultToIndex:I

    return-void
.end method

.method public static setResultWhoIndex(I)V
    .registers 1

    .line 165
    sput p0, Lio/vanta/utils/compat/StartActivityCompat;->resultWhoIndex:I

    return-void
.end method
