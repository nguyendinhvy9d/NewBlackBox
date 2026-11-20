.class public final Lio/vanta/fake/XJProfile;
.super Ljava/lang/Object;
.source "XJProfile.java"


# static fields
.field private static final CARRIERS:[[Ljava/lang/String;

.field private static final POOL_SM8150:[[Ljava/lang/String;

.field private static sCar:[Ljava/lang/String;

.field private static sDev:[Ljava/lang/String;

.field private static sHost:Ljava/lang/String;

.field private static sIccid:Ljava/lang/String;

.field private static sImei:Ljava/lang/String;

.field private static sImsi:Ljava/lang/String;

.field private static volatile sInit:Z

.field private static sIso:Ljava/lang/String;

.field private static sLine1:Ljava/lang/String;

.field private static sMccmnc:Ljava/lang/String;

.field private static sMeid:Ljava/lang/String;

.field private static volatile sNativeDone:Z

.field private static sNetName:Ljava/lang/String;

.field private static sSerial:Ljava/lang/String;

.field private static sSimName:Ljava/lang/String;

.field private static sSpoofModel:Z

.field private static sUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const-string v7, "qcom"

    const-string v8, "35316310"

    const-string v1, "samsung"

    const-string v2, "samsung"

    const-string v3, "SM-G973U"

    const-string v4, "beyond1q"

    const-string v5, "beyond1que"

    const-string v6, "msmnile"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v9, "qcom"

    const-string v10, "35316410"

    const-string v3, "samsung"

    const-string v4, "samsung"

    const-string v5, "SM-G975U"

    const-string v6, "beyond2q"

    const-string v7, "beyond2que"

    const-string v8, "msmnile"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v10, "qcom"

    const-string v11, "86891103"

    const-string v4, "Xiaomi"

    const-string v5, "Xiaomi"

    const-string v6, "MI 9"

    const-string v7, "cepheus"

    const-string v8, "cepheus"

    const-string v9, "msmnile"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v11, "qcom"

    const-string v12, "86044204"

    const-string v5, "OnePlus"

    const-string v6, "OnePlus"

    const-string v7, "GM1900"

    const-string v8, "OnePlus7"

    const-string v9, "OnePlus7"

    const-string v10, "msmnile"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v12, "qcom"

    const-string v13, "86234704"

    const-string v6, "OPPO"

    const-string v7, "OPPO"

    const-string v8, "CPH1919"

    const-string v9, "CPH1919"

    const-string v10, "CPH1919"

    const-string v11, "msmnile"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v13, "qcom"

    const-string v14, "35709111"

    const-string v7, "asus"

    const-string v8, "asus"

    const-string v9, "ASUS_I01WD"

    const-string v10, "I01WD"

    const-string v11, "WW_I01WD"

    const-string v12, "msmnile"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    .line 38
    new-array v0, v6, [[Ljava/lang/String;

    const-string v1, "44010"

    const-string v6, "NTT DOCOMO"

    const-string v7, "docomo"

    const-string v8, "jp"

    filled-new-array {v1, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "44020"

    const-string v2, "SoftBank"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "44051"

    const-string v2, "au"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "44011"

    const-string v2, "Rakuten"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBuild()V
    .registers 11

    .line 163
    const-string v0, "/"

    :try_start_2
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 164
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sSpoofModel:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_95

    const-string v2, "SERIAL"

    if-nez v1, :cond_11

    :try_start_b
    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_11
    const-string v1, "BRAND"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "MANUFACTURER"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "MODEL"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "DEVICE"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "PRODUCT"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "inc"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/32 v9, 0x7a1200

    rem-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    add-long/2addr v7, v9

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":12/SP1A.210812.016/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":user/release-keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "FINGERPRINT"

    invoke-static {v1, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_b .. :try_end_94} :catchall_95

    goto :goto_96

    .line 176
    :catchall_95
    move-exception v0

    :goto_96
    nop

    .line 177
    return-void
.end method

.method public static btMac()Ljava/lang/String;
    .registers 6

    .line 233
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const/4 v2, 0x0

    :goto_28
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4d

    .line 237
    if-lez v2, :cond_32

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_32
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 239
    shr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 242
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static btMacFor(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_bt_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const/4 v0, 0x0

    :goto_21
    const/4 v1, 0x6

    if-ge v0, v1, :cond_46

    .line 327
    if-lez v0, :cond_2b

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_2b
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 329
    shr-int/lit8 v2, v1, 0x4

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 332
    :cond_46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static countryIso()Ljava/lang/String;
    .registers 1

    .line 158
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sIso:Ljava/lang/String;

    return-object v0
.end method

.method public static describe(I)Ljava/lang/String;
    .registers 46

    .line 349
    move/from16 v0, p0

    const-string v1, "/"

    const-string v2, "0"

    const-string v3, "ro.board.platform"

    :try_start_8
    invoke-static {}, Lio/vanta/fake/XJProfile;->resolveHost()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v3}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-static {v5}, Lio/vanta/fake/XJProfile;->poolFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v5

    .line 352
    const/4 v7, 0x0

    if-eqz v5, :cond_19

    const/4 v8, 0x1

    goto :goto_1a

    :cond_19
    const/4 v8, 0x0

    .line 353
    :goto_1a
    if-eqz v5, :cond_1d

    goto :goto_1f

    :cond_1d
    sget-object v5, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    .line 354
    :goto_1f
    const-string v9, "dev"

    invoke-static {v9, v4, v0}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v9

    array-length v11, v5

    int-to-long v11, v11

    rem-long/2addr v9, v11

    long-to-int v10, v9

    aget-object v5, v5, v10

    .line 355
    sget-object v9, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    const-string v10, "car"

    invoke-static {v10, v4, v0}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v10

    sget-object v12, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    rem-long/2addr v10, v12

    long-to-int v11, v10

    aget-object v9, v9, v11

    .line 356
    aget-object v15, v9, v7

    .line 358
    const-string v10, "imei"

    const/4 v11, 0x6

    invoke-static {v10, v4, v0, v11}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v10

    .line 359
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x7

    aget-object v14, v5, v13

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    const/4 v14, 0x0

    :goto_4d
    if-ge v14, v11, :cond_58

    aget v11, v10, v14

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x6

    goto :goto_4d

    .line 361
    :cond_58
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 364
    const-string v10, "imsi"

    const/16 v11, 0xa

    invoke-static {v10, v4, v0, v11}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v10

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    const/4 v14, 0x0

    :goto_75
    if-ge v14, v11, :cond_81

    aget v11, v10, v14

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0xa

    goto :goto_75

    .line 367
    :cond_81
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 369
    const-string v10, "iccid"

    const/16 v11, 0xd

    invoke-static {v10, v4, v0, v11}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v10

    .line 370
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "8981"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const/4 v6, 0x0

    :goto_9d
    if-ge v6, v11, :cond_a9

    aget v11, v10, v6

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0xd

    goto :goto_9d

    .line 373
    :cond_a9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 376
    const-string v6, "line1"

    const/16 v10, 0x8

    invoke-static {v6, v4, v0, v10}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    .line 377
    const/16 v11, 0x9

    filled-new-array {v13, v10, v11}, [I

    move-result-object v11

    .line 378
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    const-string v13, "pre"

    invoke-static {v13, v4, v0}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v21

    const-wide/16 v23, 0x3

    move-object/from16 v17, v15

    rem-long v14, v21, v23

    long-to-int v15, v14

    aget v11, v11, v15

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const/4 v2, 0x0

    :goto_e2
    if-ge v2, v10, :cond_ec

    aget v11, v6, v2

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    .line 381
    :cond_ec
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_meid_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_sn_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_aid_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 386
    invoke-static {v4, v0}, Lio/vanta/fake/XJProfile;->btMacFor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 387
    const-string v2, "inc"

    invoke-static {v2, v4, v0}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v10

    const-wide/32 v14, 0x7a1200

    rem-long/2addr v10, v14

    const-wide/32 v14, 0xf4240

    add-long/2addr v10, v14

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v5, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v6, v5, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v6, v5, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":12/SP1A.210812.016/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":user/release-keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v26, "model"

    const-string v27, "brand"

    const-string v28, "manufacturer"

    const-string v29, "device"

    const-string v30, "product"

    const-string v31, "board"

    const-string v32, "soc"

    const-string v33, "fingerprint"

    const-string v34, "imei"

    const-string v35, "imsi"

    const-string v36, "iccid"

    const-string v37, "line1"

    const-string v38, "meid"

    const-string v39, "serial"

    const-string v40, "androidId"

    const-string v41, "btMac"

    const-string v42, "carrier"

    const-string v43, "mccmnc"

    const-string v44, "country"

    filled-new-array/range {v26 .. v44}, [Ljava/lang/String;

    move-result-object v2

    .line 398
    nop

    .line 399
    if-eqz v8, :cond_1df

    const/4 v6, 0x2

    aget-object v6, v5, v6

    goto :goto_1e5

    :cond_1df
    const-string v6, "ro.product.model"

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1e5
    move-object v10, v6

    .line 400
    if-eqz v8, :cond_1eb

    aget-object v6, v5, v7

    goto :goto_1f1

    :cond_1eb
    const-string v6, "ro.product.brand"

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1f1
    move-object v11, v6

    .line 401
    if-eqz v8, :cond_1f8

    const/4 v6, 0x1

    aget-object v12, v5, v6

    goto :goto_1ff

    :cond_1f8
    const-string v6, "ro.product.manufacturer"

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 402
    :goto_1ff
    if-eqz v8, :cond_206

    const/4 v6, 0x3

    aget-object v14, v5, v6

    move-object v6, v14

    goto :goto_20c

    :cond_206
    const-string v6, "ro.product.device"

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    :goto_20c
    if-eqz v8, :cond_211

    aget-object v4, v5, v4

    goto :goto_217

    :cond_211
    const-string v4, "ro.product.name"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_217
    move-object v14, v4

    .line 404
    invoke-static {v3}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "ro.hardware.chipname"

    .line 405
    invoke-static {v3}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    if-eqz v8, :cond_225

    :goto_224
    goto :goto_22c

    :cond_225
    const-string v1, "ro.build.fingerprint"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_224

    :goto_22c
    const/4 v4, 0x1

    aget-object v26, v9, v4

    const/4 v4, 0x3

    aget-object v28, v9, v4

    move-object v13, v6

    move-object/from16 v4, v17

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v27, v4

    filled-new-array/range {v10 .. v28}, [Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    nop

    :goto_247
    const/16 v4, 0x13

    if-ge v7, v4, :cond_274

    .line 413
    if-lez v7, :cond_252

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_252
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v7, v7, 0x1

    goto :goto_247

    .line 416
    :cond_274
    const-string v1, ",\"uid\":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, ",\"spoofModel\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 418
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28f
    .catchall {:try_start_8 .. :try_end_28f} :catchall_290

    return-object v0

    .line 420
    :catchall_290
    move-exception v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"error\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static digits(Ljava/lang/String;I)[I
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 87
    new-array v0, p1, [I

    .line 88
    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p1, :cond_39

    rem-int/lit8 v2, v1, 0x10

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v2, v2, 0xa

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 89
    :cond_39
    return-object v0
.end method

.method private static digitsP(Ljava/lang/String;Ljava/lang/String;II)[I
    .registers 5

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 319
    new-array p1, p3, [I

    .line 320
    const/4 p2, 0x0

    :goto_26
    if-ge p2, p3, :cond_35

    rem-int/lit8 v0, p2, 0x10

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    rem-int/lit8 v0, v0, 0xa

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    .line 321
    :cond_35
    return-object p1
.end method

.method private static declared-synchronized ensure()V
    .registers 11

    const-class v0, Lio/vanta/fake/XJProfile;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sInit:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_192

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 103
    :cond_9
    :try_start_9
    invoke-static {}, Lio/vanta/fake/XJProfile;->rawUid()I

    move-result v1

    sput v1, Lio/vanta/fake/XJProfile;->sUid:I

    .line 104
    invoke-static {}, Lio/vanta/fake/XJProfile;->rawHost()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    .line 105
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lio/vanta/fake/XJProfile;->poolFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 107
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 108
    const-string v4, "dev"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    array-length v6, v1

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v5, v4

    aget-object v1, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    .line 109
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    goto :goto_48

    .line 112
    :cond_34
    sget-object v1, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    const-string v4, "dev"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v6, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    array-length v6, v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v5, v4

    aget-object v1, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    .line 113
    sput-boolean v3, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    .line 115
    :goto_48
    sget-object v1, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    const-string v4, "car"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v6, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    array-length v6, v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v5, v4

    aget-object v1, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    .line 116
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    aget-object v1, v1, v3

    sput-object v1, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    .line 117
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    aget-object v1, v1, v2

    sput-object v1, Lio/vanta/fake/XJProfile;->sNetName:Ljava/lang/String;

    .line 118
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->sSimName:Ljava/lang/String;

    .line 119
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->sIso:Ljava/lang/String;

    .line 121
    const-string v1, "imei"

    const/4 v5, 0x6

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v7, 0x0

    :goto_86
    if-ge v7, v5, :cond_90

    aget v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    .line 124
    :cond_90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sImei:Ljava/lang/String;

    .line 127
    const-string v1, "imsi"

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v7, 0x0

    :goto_b1
    if-ge v7, v5, :cond_bb

    aget v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_b1

    .line 130
    :cond_bb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sImsi:Ljava/lang/String;

    .line 132
    const-string v1, "iccid"

    const/16 v5, 0xd

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "8981"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v7, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v4, 0x0

    :goto_da
    if-ge v4, v5, :cond_e4

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    .line 136
    :cond_e4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sIccid:Ljava/lang/String;

    .line 139
    const-string v1, "line1"

    const/16 v4, 0x8

    invoke-static {v1, v4}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 140
    const/16 v5, 0x9

    filled-new-array {v8, v4, v5}, [I

    move-result-object v5

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v7, "pre"

    invoke-static {v7}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3

    rem-long/2addr v7, v9

    long-to-int v8, v7

    aget v5, v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v5, 0x0

    :goto_120
    if-ge v5, v4, :cond_12a

    aget v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_120

    .line 144
    :cond_12a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sLine1:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_meid_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sMeid:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_sn_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    .line 147
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sInit:Z
    :try_end_190
    .catchall {:try_start_9 .. :try_end_190} :catchall_192

    .line 148
    monitor-exit v0

    return-void

    .line 101
    :catchall_192
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 335
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 336
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 339
    const/16 v3, 0x22

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_2c

    if-ne v2, v4, :cond_1e

    goto :goto_2c

    .line 340
    :cond_1e
    const/16 v3, 0xa

    if-ne v2, v3, :cond_28

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 341
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 339
    :cond_2c
    :goto_2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 343
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_24

    aget-byte v3, p0, v2

    .line 73
    and-int/lit16 v3, v3, 0xff

    .line 74
    shr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 77
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static iccid()Ljava/lang/String;
    .registers 1

    .line 152
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sIccid:Ljava/lang/String;

    return-object v0
.end method

.method public static imei()Ljava/lang/String;
    .registers 1

    .line 150
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sImei:Ljava/lang/String;

    return-object v0
.end method

.method public static imsi()Ljava/lang/String;
    .registers 1

    .line 151
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sImsi:Ljava/lang/String;

    return-object v0
.end method

.method public static line1()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sLine1:Ljava/lang/String;

    return-object v0
.end method

.method public static loadNative()V
    .registers 52

    .line 250
    const-string v0, "/"

    sget-boolean v1, Lio/vanta/fake/XJProfile;->sNativeDone:Z

    if-eqz v1, :cond_7

    return-void

    .line 252
    :cond_7
    :try_start_7
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 253
    const-string v1, "xjhook"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 255
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e0

    .line 257
    const-string v1, "inc"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x7a1200

    rem-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    add-long/2addr v4, v6

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":12/SP1A.210812.016/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":user/release-keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 260
    const-string v30, "ro.product.model"

    const-string v31, "ro.product.brand"

    const-string v32, "ro.product.manufacturer"

    const-string v33, "ro.product.device"

    const-string v34, "ro.product.name"

    const-string v35, "ro.product.vendor.model"

    const-string v36, "ro.product.vendor.brand"

    const-string v37, "ro.product.vendor.manufacturer"

    const-string v38, "ro.product.vendor.device"

    const-string v39, "ro.product.vendor.name"

    const-string v40, "ro.product.system.model"

    const-string v41, "ro.product.system.brand"

    const-string v42, "ro.product.system.manufacturer"

    const-string v43, "ro.product.odm.model"

    const-string v44, "ro.product.odm.brand"

    const-string v45, "ro.product.odm.manufacturer"

    const-string v46, "ro.build.product"

    const-string v47, "ro.build.fingerprint"

    const-string v48, "ro.bootimage.build.fingerprint"

    const-string v49, "ro.vendor.build.fingerprint"

    const-string v50, "ro.system.build.fingerprint"

    const-string v51, "ro.odm.build.fingerprint"

    filled-new-array/range {v30 .. v51}, [Ljava/lang/String;

    move-result-object v0

    .line 270
    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v8, v1, v4

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v9, v1, v3

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v10, v1, v2

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v11, v1, v6

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v12, v1, v7

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v13, v1, v4

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v14, v1, v3

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v15, v1, v2

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v16, v1, v6

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v17, v1, v7

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v18, v1, v4

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v19, v1, v3

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v20, v1, v2

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v21, v1, v4

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v22, v1, v3

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v23, v1, v2

    sget-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    aget-object v24, v1, v7

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move-object/from16 v27, v29

    move-object/from16 v28, v29

    filled-new-array/range {v8 .. v29}, [Ljava/lang/String;

    move-result-object v1

    .line 280
    goto :goto_e4

    .line 281
    :cond_e0
    new-array v0, v3, [Ljava/lang/String;

    .line 282
    new-array v1, v3, [Ljava/lang/String;

    .line 284
    :goto_e4
    sget v3, Lio/vanta/fake/XJProfile;->sUid:I

    sget-object v4, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lio/vanta/fake/XJProfile;->nativeInit(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lio/vanta/fake/XJProfile;->applyBuild()V

    .line 286
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sNativeDone:Z
    :try_end_f0
    .catchall {:try_start_7 .. :try_end_f0} :catchall_f1

    goto :goto_f2

    .line 287
    :catchall_f1
    move-exception v0

    :goto_f2
    nop

    .line 288
    return-void
.end method

.method private static luhn(Ljava/lang/String;)C
    .registers 6

    .line 92
    nop

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_8
    if-ltz v0, :cond_20

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 95
    if-eqz v1, :cond_1a

    mul-int/lit8 v3, v3, 0x2

    const/16 v4, 0x9

    if-le v3, v4, :cond_1a

    add-int/lit8 v3, v3, -0x9

    .line 96
    :cond_1a
    add-int/2addr v2, v3

    .line 93
    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 98
    :cond_20
    rem-int/lit8 v2, v2, 0xa

    rsub-int/lit8 p0, v2, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0
.end method

.method public static mccmnc()Ljava/lang/String;
    .registers 1

    .line 155
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    return-object v0
.end method

.method private static md5(Ljava/lang/String;)[B
    .registers 3

    .line 67
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object p0

    .line 68
    :catchall_11
    move-exception p0

    const/16 p0, 0x10

    new-array p0, p0, [B

    return-object p0
.end method

.method public static meid()Ljava/lang/String;
    .registers 1

    .line 154
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sMeid:Ljava/lang/String;

    return-object v0
.end method

.method public static native nativeInit(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public static netName()Ljava/lang/String;
    .registers 1

    .line 156
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sNetName:Ljava/lang/String;

    return-object v0
.end method

.method private static poolFor(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 3

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 27
    :cond_4
    const-string v1, "msmnile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    return-object p0

    .line 28
    :cond_f
    return-object v0
.end method

.method private static rawHost()Ljava/lang/String;
    .registers 4

    .line 61
    :try_start_0
    const-string v0, "io.vanta.VantaCore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    const-string v1, "getHostPkg"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 64
    :catchall_1b
    move-exception v0

    const-string v0, "host"

    return-object v0
.end method

.method private static rawUid()I
    .registers 4

    .line 54
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "io.vanta.VantaCore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    const-string v2, "getUserId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return v0

    .line 57
    :catchall_1d
    move-exception v1

    return v0
.end method

.method private static realProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 33
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object p0

    .line 35
    :catchall_22
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static resolveHost()Ljava/lang/String;
    .registers 7

    .line 296
    const-string v0, "getHostPkg"

    .line 298
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "io.vanta.VantaCore"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 299
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    .line 300
    goto :goto_1d

    :catchall_1b
    move-exception v3

    move-object v3, v2

    .line 301
    :goto_1d
    const-string v4, "null"

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "host"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 303
    :cond_35
    :try_start_35
    const-string v5, "top.niunaijun.blackbox.BlackBoxCore"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 304
    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_4c

    .line 305
    :goto_4b
    goto :goto_4e

    :catchall_4c
    move-exception v0

    goto :goto_4b

    .line 307
    :cond_4e
    :goto_4e
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5c
    const-string v3, "com.rekoo.pubgm"

    .line 308
    :cond_5e
    return-object v3
.end method

.method private static seed(Ljava/lang/String;)J
    .registers 8

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 81
    nop

    .line 82
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_2b
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3b

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 83
    :cond_3b
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static seedP(Ljava/lang/String;Ljava/lang/String;I)J
    .registers 8

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 313
    nop

    .line 314
    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    :goto_27
    const/4 v1, 0x6

    if-ge v0, v1, :cond_37

    const/16 v1, 0x8

    shl-long/2addr p1, v1

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    or-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 315
    :cond_37
    const-wide v0, 0x7fffffffffffffffL

    and-long p0, p1, v0

    return-wide p0
.end method

.method public static serial()Ljava/lang/String;
    .registers 1

    .line 159
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    return-object v0
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 181
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_26

    .line 184
    :try_start_a
    const-class v1, Ljava/lang/reflect/Field;

    const-string v2, "accessFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_20

    .line 187
    :catchall_1f
    move-exception v0

    :goto_20
    nop

    .line 188
    const/4 v0, 0x0

    :try_start_22
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_27

    .line 189
    :catchall_26
    move-exception p0

    :goto_27
    nop

    .line 190
    return-void
.end method

.method public static simName()Ljava/lang/String;
    .registers 1

    .line 157
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sSimName:Ljava/lang/String;

    return-object v0
.end method

.method public static xjPatchSecure(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 211
    const-string v0, "android_id"

    if-eqz p1, :cond_81

    :try_start_4
    instance-of v1, p0, Landroid/os/Bundle;

    if-nez v1, :cond_a

    goto/16 :goto_81

    .line 212
    :cond_a
    nop

    .line 213
    array-length v1, p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const-string v6, "bluetooth_address"

    if-ge v4, v1, :cond_38

    :try_start_14
    aget-object v7, p1, v4

    .line 214
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_35

    .line 215
    check-cast v7, Ljava/lang/String;

    .line 216
    const-string v8, "GET_secure"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v5, 0x1

    goto :goto_35

    .line 217
    :cond_26
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object v3, v0

    goto :goto_35

    .line 218
    :cond_2e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    move-object v3, v6

    .line 213
    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 221
    :cond_38
    if-eqz v5, :cond_7d

    if-nez v3, :cond_3d

    goto :goto_7d

    .line 222
    :cond_3d
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 224
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-static {}, Lio/vanta/fake/XJProfile;->btMac()Ljava/lang/String;

    move-result-object p1

    goto :goto_74

    .line 225
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_aid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 226
    :goto_74
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_14 .. :try_end_7c} :catchall_7e

    goto :goto_7f

    .line 221
    :cond_7d
    :goto_7d
    return-object p0

    .line 227
    :catchall_7e
    move-exception p1

    :goto_7f
    nop

    .line 228
    return-object p0

    .line 211
    :cond_81
    :goto_81
    return-object p0
.end method

.method public static xjSecure([Ljava/lang/Object;)Z
    .registers 9

    .line 196
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 197
    :cond_4
    nop

    .line 198
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x1

    if-ge v2, v1, :cond_32

    aget-object v6, p0, v2

    .line 199
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2f

    .line 200
    check-cast v6, Ljava/lang/String;

    .line 201
    const-string v7, "GET_secure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v3, 0x1

    goto :goto_2f

    .line 202
    :cond_1e
    const-string v7, "android_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string v7, "bluetooth_address"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2e
    const/4 v4, 0x1

    .line 198
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 205
    :cond_32
    if-eqz v3, :cond_37

    if-eqz v4, :cond_37

    const/4 v0, 0x1

    :cond_37
    return v0
.end method
