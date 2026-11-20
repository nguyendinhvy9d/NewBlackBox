.class public final Lio/vanta/fake/XJProfile;
.super Ljava/lang/Object;
.source "XJProfile.java"


# static fields
.field private static final CARRIERS:[[Ljava/lang/String;

.field private static final POOL_ATOLL:[[Ljava/lang/String;

.field private static final POOL_EXY2200:[[Ljava/lang/String;

.field private static final POOL_EXY990:[[Ljava/lang/String;

.field private static final POOL_KALAMA:[[Ljava/lang/String;

.field private static final POOL_KONA:[[Ljava/lang/String;

.field private static final POOL_LAHAINA:[[Ljava/lang/String;

.field private static final POOL_MT6893:[[Ljava/lang/String;

.field private static final POOL_PINEAPPLE:[[Ljava/lang/String;

.field private static final POOL_SM8150:[[Ljava/lang/String;

.field private static final POOL_TARO:[[Ljava/lang/String;

.field private static final POOL_TENSOR_G1:[[Ljava/lang/String;

.field private static final POOL_TENSOR_G2:[[Ljava/lang/String;

.field private static final POOL_TENSOR_G3:[[Ljava/lang/String;

.field private static final SALT_DIR:Ljava/lang/String; = "/storage/emulated/0/.xjsalt/"

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

.field private static sSalt:Ljava/lang/String;

.field private static sSerial:Ljava/lang/String;

.field private static sSimName:Ljava/lang/String;

.field private static sSpoofModel:Z

.field private static sUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 19
    const/4 v0, 0x6

    new-array v1, v0, [[Ljava/lang/String;

    const-string v8, "qcom"

    const-string v9, "35316310"

    const-string v2, "samsung"

    const-string v3, "samsung"

    const-string v4, "SM-G973U"

    const-string v5, "beyond1q"

    const-string v6, "beyond1que"

    const-string v7, "msmnile"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v10, "qcom"

    const-string v11, "35316410"

    const-string v4, "samsung"

    const-string v5, "samsung"

    const-string v6, "SM-G975U"

    const-string v7, "beyond2q"

    const-string v8, "beyond2que"

    const-string v9, "msmnile"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v11, "qcom"

    const-string v12, "86891103"

    const-string v5, "Xiaomi"

    const-string v6, "Xiaomi"

    const-string v7, "MI 9"

    const-string v8, "cepheus"

    const-string v9, "cepheus"

    const-string v10, "msmnile"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v12, "qcom"

    const-string v13, "86044204"

    const-string v6, "OnePlus"

    const-string v7, "OnePlus"

    const-string v8, "GM1900"

    const-string v9, "OnePlus7"

    const-string v10, "OnePlus7"

    const-string v11, "msmnile"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v13, "qcom"

    const-string v14, "86234704"

    const-string v7, "OPPO"

    const-string v8, "OPPO"

    const-string v9, "CPH1919"

    const-string v10, "CPH1919"

    const-string v11, "CPH1919"

    const-string v12, "msmnile"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v14, "qcom"

    const-string v15, "35709111"

    const-string v8, "asus"

    const-string v9, "asus"

    const-string v10, "ASUS_I01WD"

    const-string v11, "I01WD"

    const-string v12, "WW_I01WD"

    const-string v13, "msmnile"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    .line 28
    new-array v1, v8, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "35316320"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G981U"

    const-string v12, "x1q"

    const-string v13, "x1qsqw"

    const-string v14, "kona"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "qcom"

    const-string v16, "35316420"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G986U"

    const-string v12, "y2q"

    const-string v13, "y2qsqw"

    const-string v14, "kona"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "qcom"

    const-string v16, "35466520"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G988U"

    const-string v12, "z3q"

    const-string v13, "z3qsqw"

    const-string v14, "kona"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "qcom"

    const-string v16, "86044210"

    const-string v9, "OnePlus"

    const-string v10, "OnePlus"

    const-string v11, "IN2015"

    const-string v12, "instantnoodle"

    const-string v13, "instantnoodle"

    const-string v14, "kona"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v15, "qcom"

    const-string v16, "86891110"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2001J2G"

    const-string v12, "umi"

    const-string v13, "umi_global"

    const-string v14, "kona"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_KONA:[[Ljava/lang/String;

    .line 36
    new-array v1, v7, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "35316330"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G991U"

    const-string v12, "o1q"

    const-string v13, "o1qsqw"

    const-string v14, "lahaina"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "qcom"

    const-string v16, "35316430"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G996U"

    const-string v12, "t2q"

    const-string v13, "t2qsqw"

    const-string v14, "lahaina"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "qcom"

    const-string v16, "35466530"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G998U"

    const-string v12, "p3q"

    const-string v13, "p3qsqw"

    const-string v14, "lahaina"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "qcom"

    const-string v16, "86044220"

    const-string v9, "OnePlus"

    const-string v10, "OnePlus"

    const-string v11, "LE2115"

    const-string v12, "lemonade"

    const-string v13, "lemonade"

    const-string v14, "lahaina"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_LAHAINA:[[Ljava/lang/String;

    .line 43
    new-array v1, v7, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "35316340"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S901U"

    const-string v12, "r0q"

    const-string v13, "r0qsqw"

    const-string v14, "taro"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "qcom"

    const-string v16, "35316440"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S906U"

    const-string v12, "g0q"

    const-string v13, "g0qsqw"

    const-string v14, "taro"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "qcom"

    const-string v16, "35466540"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S908U"

    const-string v12, "b0q"

    const-string v13, "b0qsqw"

    const-string v14, "taro"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "qcom"

    const-string v16, "86044230"

    const-string v9, "OnePlus"

    const-string v10, "OnePlus"

    const-string v11, "NE2215"

    const-string v12, "negroni"

    const-string v13, "negroni"

    const-string v14, "taro"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_TARO:[[Ljava/lang/String;

    .line 50
    new-array v1, v7, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "35316350"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S911U"

    const-string v12, "dm1q"

    const-string v13, "dm1qsqw"

    const-string v14, "kalama"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "qcom"

    const-string v16, "35316450"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S916U"

    const-string v12, "dm2q"

    const-string v13, "dm2qsqw"

    const-string v14, "kalama"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "qcom"

    const-string v16, "35466550"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S918U"

    const-string v12, "dm3q"

    const-string v13, "dm3qsqw"

    const-string v14, "kalama"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "qcom"

    const-string v16, "86044240"

    const-string v9, "OnePlus"

    const-string v10, "OnePlus"

    const-string v11, "CPH2449"

    const-string v12, "salami"

    const-string v13, "salami"

    const-string v14, "kalama"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_KALAMA:[[Ljava/lang/String;

    .line 57
    new-array v1, v7, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "35316360"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S921U"

    const-string v12, "e1q"

    const-string v13, "e1qsqw"

    const-string v14, "pineapple"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "qcom"

    const-string v16, "35316460"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S926U"

    const-string v12, "e2q"

    const-string v13, "e2qsqw"

    const-string v14, "pineapple"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "qcom"

    const-string v16, "35466560"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S928U"

    const-string v12, "e3q"

    const-string v13, "e3qsqw"

    const-string v14, "pineapple"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "qcom"

    const-string v16, "86044250"

    const-string v9, "OnePlus"

    const-string v10, "OnePlus"

    const-string v11, "CPH2581"

    const-string v12, "waffle"

    const-string v13, "waffle"

    const-string v14, "pineapple"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_PINEAPPLE:[[Ljava/lang/String;

    .line 64
    new-array v1, v6, [[Ljava/lang/String;

    const-string v15, "google"

    const-string v16, "35758108"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 6"

    const-string v12, "oriole"

    const-string v13, "oriole"

    const-string v14, "gs101"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "google"

    const-string v16, "35758118"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 6 Pro"

    const-string v12, "raven"

    const-string v13, "raven"

    const-string v14, "gs101"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "google"

    const-string v16, "35758128"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 6a"

    const-string v12, "bluejay"

    const-string v13, "bluejay"

    const-string v14, "gs101"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G1:[[Ljava/lang/String;

    .line 69
    new-array v1, v6, [[Ljava/lang/String;

    const-string v15, "google"

    const-string v16, "35161407"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 7"

    const-string v12, "panther"

    const-string v13, "panther"

    const-string v14, "gs201"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "google"

    const-string v16, "35161417"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 7 Pro"

    const-string v12, "cheetah"

    const-string v13, "cheetah"

    const-string v14, "gs201"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "google"

    const-string v16, "35161427"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 7a"

    const-string v12, "lynx"

    const-string v13, "lynx"

    const-string v14, "gs201"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G2:[[Ljava/lang/String;

    .line 74
    new-array v1, v5, [[Ljava/lang/String;

    const-string v15, "google"

    const-string v16, "35837713"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 8"

    const-string v12, "shiba"

    const-string v13, "shiba"

    const-string v14, "zuma"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "google"

    const-string v16, "35837723"

    const-string v9, "google"

    const-string v10, "Google"

    const-string v11, "Pixel 8 Pro"

    const-string v12, "husky"

    const-string v13, "husky"

    const-string v14, "zuma"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G3:[[Ljava/lang/String;

    .line 79
    new-array v1, v6, [[Ljava/lang/String;

    const-string v15, "samsung"

    const-string v16, "35316325"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G980F"

    const-string v12, "x1s"

    const-string v13, "x1sxxx"

    const-string v14, "exynos9830"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "samsung"

    const-string v16, "35316425"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G985F"

    const-string v12, "y2s"

    const-string v13, "y2sxxx"

    const-string v14, "exynos9830"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "samsung"

    const-string v16, "35466525"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-G988B"

    const-string v12, "z3s"

    const-string v13, "z3sxxx"

    const-string v14, "exynos9830"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_EXY990:[[Ljava/lang/String;

    .line 84
    new-array v1, v5, [[Ljava/lang/String;

    const-string v15, "samsung"

    const-string v16, "35316345"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S901B"

    const-string v12, "r0s"

    const-string v13, "r0sxxx"

    const-string v14, "s5e9925"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "samsung"

    const-string v16, "35466545"

    const-string v9, "samsung"

    const-string v10, "samsung"

    const-string v11, "SM-S908B"

    const-string v12, "b0s"

    const-string v13, "b0sxxx"

    const-string v14, "s5e9925"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->POOL_EXY2200:[[Ljava/lang/String;

    .line 91
    new-array v0, v0, [[Ljava/lang/String;

    const-string v15, "qcom"

    const-string v16, "86891120"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2003J6B2G"

    const-string v12, "miatoll"

    const-string v13, "miatoll"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v15, "qcom"

    const-string v16, "86891130"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2007J20CG"

    const-string v12, "surya"

    const-string v13, "surya"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v15, "qcom"

    const-string v16, "86891160"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2007J20CI"

    const-string v12, "karna"

    const-string v13, "karna"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v15, "qcom"

    const-string v16, "86606204"

    const-string v9, "realme"

    const-string v10, "realme"

    const-string v11, "RMX2061"

    const-string v12, "RMX2061"

    const-string v13, "RMX2061"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v15, "qcom"

    const-string v16, "86891180"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2003J6B1I"

    const-string v12, "excalibur"

    const-string v13, "excalibur"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v15, "qcom"

    const-string v16, "86891190"

    const-string v9, "Xiaomi"

    const-string v10, "Xiaomi"

    const-string v11, "M2003J6CI"

    const-string v12, "gram"

    const-string v13, "gram"

    const-string v14, "atoll"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lio/vanta/fake/XJProfile;->POOL_ATOLL:[[Ljava/lang/String;

    .line 100
    new-array v0, v6, [[Ljava/lang/String;

    const-string v14, "mediatek"

    const-string v15, "86044260"

    const-string v8, "OnePlus"

    const-string v9, "OnePlus"

    const-string v10, "DN2103"

    const-string v11, "DN2103"

    const-string v12, "DN2103"

    const-string v13, "mt6893"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v14, "mediatek"

    const-string v15, "86891140"

    const-string v8, "realme"

    const-string v9, "realme"

    const-string v10, "RMX3031"

    const-string v11, "RMX3031"

    const-string v12, "RMX3031"

    const-string v13, "mt6893"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v14, "mediatek"

    const-string v15, "86891150"

    const-string v8, "Xiaomi"

    const-string v9, "Redmi"

    const-string v10, "M2012K10C"

    const-string v11, "ares"

    const-string v12, "ares"

    const-string v13, "mt6893"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/vanta/fake/XJProfile;->POOL_MT6893:[[Ljava/lang/String;

    .line 134
    new-array v0, v7, [[Ljava/lang/String;

    const-string v1, "44010"

    const-string v2, "NTT DOCOMO"

    const-string v7, "docomo"

    const-string v8, "jp"

    filled-new-array {v1, v2, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "44020"

    const-string v2, "SoftBank"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "44051"

    const-string v2, "au"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "44011"

    const-string v2, "Rakuten"

    filled-new-array {v1, v2, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    .line 145
    const-string v0, ""

    sput-object v0, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBuild()V
    .registers 11

    .line 290
    const-string v0, "/"

    :try_start_2
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 291
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sSpoofModel:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_95

    const-string v2, "SERIAL"

    if-nez v1, :cond_11

    :try_start_b
    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_11
    const-string v1, "BRAND"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "MANUFACTURER"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "MODEL"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "DEVICE"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "PRODUCT"

    sget-object v3, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "inc"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/32 v9, 0x7a1200

    rem-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    add-long/2addr v7, v9

    .line 299
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

    .line 301
    const-string v1, "FINGERPRINT"

    invoke-static {v1, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/vanta/fake/XJProfile;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_b .. :try_end_94} :catchall_95

    goto :goto_96

    .line 303
    :catchall_95
    move-exception v0

    :goto_96
    nop

    .line 304
    return-void
.end method

.method public static btMac()Ljava/lang/String;
    .registers 6

    .line 360
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 361
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

    sget-object v1, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const/4 v2, 0x0

    :goto_32
    const/4 v3, 0x6

    if-ge v2, v3, :cond_57

    .line 364
    if-lez v2, :cond_3c

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_3c
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 366
    shr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 369
    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static btMacFor(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_bt_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    const/4 p2, 0x0

    :goto_25
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4a

    .line 454
    if-lez p2, :cond_2f

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    :cond_2f
    aget-byte v0, p0, p2

    and-int/lit16 v0, v0, 0xff

    .line 456
    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 p2, p2, 0x1

    goto :goto_25

    .line 459
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static countryIso()Ljava/lang/String;
    .registers 1

    .line 285
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sIso:Ljava/lang/String;

    return-object v0
.end method

.method public static describe(I)Ljava/lang/String;
    .registers 52

    .line 476
    move/from16 v0, p0

    const-string v1, "/"

    const-string v2, "0"

    const-string v3, "ro.board.platform"

    :try_start_8
    invoke-static {}, Lio/vanta/fake/XJProfile;->resolveHost()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-static/range {p0 .. p0}, Lio/vanta/fake/XJProfile;->readSalt(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-static {v5}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {v3}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-static {v7}, Lio/vanta/fake/XJProfile;->poolFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v7

    .line 481
    const/4 v9, 0x0

    if-eqz v7, :cond_21

    const/4 v10, 0x1

    goto :goto_22

    :cond_21
    const/4 v10, 0x0

    .line 482
    :goto_22
    if-eqz v7, :cond_25

    goto :goto_27

    :cond_25
    sget-object v7, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    .line 483
    :goto_27
    const-string v11, "dev"

    invoke-static {v11, v4, v0, v6}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v11

    int-to-long v13, v0

    add-long/2addr v11, v13

    array-length v13, v7

    int-to-long v13, v13

    rem-long/2addr v11, v13

    long-to-int v12, v11

    aget-object v7, v7, v12

    .line 484
    sget-object v11, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    const-string v12, "car"

    invoke-static {v12, v4, v0, v6}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    sget-object v14, Lio/vanta/fake/XJProfile;->CARRIERS:[[Ljava/lang/String;

    array-length v14, v14

    int-to-long v14, v14

    rem-long/2addr v12, v14

    long-to-int v13, v12

    aget-object v11, v11, v13

    .line 485
    aget-object v15, v11, v9

    .line 487
    const-string v12, "imei"

    const/4 v13, 0x6

    invoke-static {v12, v4, v0, v13, v6}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[I

    move-result-object v12

    .line 488
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    aget-object v9, v7, v8

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    const/4 v9, 0x0

    :goto_57
    if-ge v9, v13, :cond_62

    aget v13, v12, v9

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x6

    goto :goto_57

    .line 490
    :cond_62
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 493
    const-string v9, "imsi"

    const/16 v12, 0xa

    invoke-static {v9, v4, v0, v12, v6}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[I

    move-result-object v9

    .line 494
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    const/4 v14, 0x0

    :goto_7f
    if-ge v14, v12, :cond_8b

    aget v12, v9, v14

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/16 v12, 0xa

    goto :goto_7f

    .line 496
    :cond_8b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 498
    const-string v9, "iccid"

    const/16 v12, 0xd

    invoke-static {v9, v4, v0, v12, v6}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[I

    move-result-object v9

    .line 499
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "8981"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/4 v8, 0x0

    :goto_a7
    if-ge v8, v12, :cond_b3

    aget v12, v9, v8

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0xd

    goto :goto_a7

    .line 502
    :cond_b3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 505
    const-string v8, "line1"

    const/16 v9, 0x8

    invoke-static {v8, v4, v0, v9, v6}, Lio/vanta/fake/XJProfile;->digitsP(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[I

    move-result-object v8

    .line 506
    const/16 v12, 0x9

    const/4 v13, 0x7

    filled-new-array {v13, v9, v12}, [I

    move-result-object v12

    .line 507
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    const-string v14, "pre"

    invoke-static {v14, v4, v0, v6}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v18

    const-wide/16 v23, 0x3

    move/from16 v31, v10

    rem-long v9, v18, v23

    long-to-int v10, v9

    aget v9, v12, v10

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v2, 0x0

    :goto_ed
    const/16 v9, 0x8

    if-ge v2, v9, :cond_f9

    aget v10, v8, v2

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_ed

    .line 510
    :cond_f9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_meid_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_sn_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_aid_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 515
    invoke-static {v4, v0, v6}, Lio/vanta/fake/XJProfile;->btMacFor(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 516
    const-string v2, "inc"

    invoke-static {v2, v4, v0, v6}, Lio/vanta/fake/XJProfile;->seedP(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    const-wide/32 v12, 0x7a1200

    rem-long/2addr v8, v12

    const-wide/32 v12, 0xf4240

    add-long/2addr v8, v12

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v6, v7, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v6, v7, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v6, v7, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":12/SP1A.210812.016/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":user/release-keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    const-string v32, "model"

    const-string v33, "brand"

    const-string v34, "manufacturer"

    const-string v35, "device"

    const-string v36, "product"

    const-string v37, "board"

    const-string v38, "soc"

    const-string v39, "fingerprint"

    const-string v40, "imei"

    const-string v41, "imsi"

    const-string v42, "iccid"

    const-string v43, "line1"

    const-string v44, "meid"

    const-string v45, "serial"

    const-string v46, "androidId"

    const-string v47, "btMac"

    const-string v48, "carrier"

    const-string v49, "mccmnc"

    const-string v50, "country"

    filled-new-array/range {v32 .. v50}, [Ljava/lang/String;

    move-result-object v2

    .line 527
    nop

    .line 528
    if-eqz v31, :cond_1fc

    const/4 v6, 0x2

    aget-object v6, v7, v6

    goto :goto_202

    :cond_1fc
    const-string v6, "ro.product.model"

    invoke-static {v6}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_202
    move-object v12, v6

    .line 529
    if-eqz v31, :cond_209

    const/4 v6, 0x0

    aget-object v8, v7, v6

    goto :goto_210

    :cond_209
    const/4 v6, 0x0

    const-string v8, "ro.product.brand"

    invoke-static {v8}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_210
    move-object v13, v8

    .line 530
    if-eqz v31, :cond_218

    const/4 v8, 0x1

    aget-object v9, v7, v8

    move-object v14, v9

    goto :goto_21f

    :cond_218
    const-string v8, "ro.product.manufacturer"

    invoke-static {v8}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 531
    :goto_21f
    if-eqz v31, :cond_226

    const/4 v8, 0x3

    aget-object v9, v7, v8

    move-object v8, v9

    goto :goto_22c

    :cond_226
    const-string v8, "ro.product.device"

    invoke-static {v8}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 532
    :goto_22c
    if-eqz v31, :cond_231

    aget-object v4, v7, v4

    goto :goto_237

    :cond_231
    const-string v4, "ro.product.name"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    :goto_237
    invoke-static {v3}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ro.hardware.chipname"

    .line 534
    invoke-static {v7}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 535
    if-eqz v31, :cond_246

    :goto_243
    move-object/from16 v19, v1

    goto :goto_24d

    :cond_246
    const-string v1, "ro.build.fingerprint"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_243

    :goto_24d
    const/4 v1, 0x1

    aget-object v28, v11, v1

    const/4 v1, 0x3

    aget-object v30, v11, v1

    move-object v1, v15

    move-object v15, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v29, v1

    filled-new-array/range {v12 .. v30}, [Ljava/lang/String;

    move-result-object v1

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    const/4 v9, 0x0

    :goto_267
    const/16 v4, 0x22

    const/16 v6, 0x13

    if-ge v9, v6, :cond_294

    .line 542
    if-lez v9, :cond_274

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :cond_274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-static {v7}, Lio/vanta/fake/XJProfile;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v9, v9, 0x1

    goto :goto_267

    .line 545
    :cond_294
    const-string v1, ",\"uid\":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    const-string v0, ",\"spoofModel\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 547
    const-string v0, ",\"salt\":\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lio/vanta/fake/XJProfile;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c2
    .catchall {:try_start_8 .. :try_end_2c2} :catchall_2c3

    return-object v0

    .line 550
    :catchall_2c3
    move-exception v0

    .line 551
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

    .line 209
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

    sget-object v0, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 210
    new-array v0, p1, [I

    .line 211
    const/4 v1, 0x0

    :goto_34
    if-ge v1, p1, :cond_43

    rem-int/lit8 v2, v1, 0x10

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v2, v2, 0xa

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 212
    :cond_43
    return-object v0
.end method

.method private static digitsP(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[I
    .registers 6

    .line 445
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

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 446
    new-array p1, p3, [I

    .line 447
    const/4 p2, 0x0

    :goto_2a
    if-ge p2, p3, :cond_39

    rem-int/lit8 p4, p2, 0x10

    aget-byte p4, p0, p4

    and-int/lit16 p4, p4, 0xff

    rem-int/lit8 p4, p4, 0xa

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    .line 448
    :cond_39
    return-object p1
.end method

.method private static declared-synchronized ensure()V
    .registers 11

    const-class v0, Lio/vanta/fake/XJProfile;

    monitor-enter v0

    .line 225
    :try_start_3
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sInit:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b6

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 226
    :cond_9
    :try_start_9
    invoke-static {}, Lio/vanta/fake/XJProfile;->rawUid()I

    move-result v1

    sput v1, Lio/vanta/fake/XJProfile;->sUid:I

    .line 227
    invoke-static {}, Lio/vanta/fake/XJProfile;->rawHost()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    .line 228
    sget v1, Lio/vanta/fake/XJProfile;->sUid:I

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->readSalt(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    .line 229
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->realProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lio/vanta/fake/XJProfile;->poolFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 234
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    .line 235
    const-string v4, "dev"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    sget v6, Lio/vanta/fake/XJProfile;->sUid:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    array-length v6, v1

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v5, v4

    aget-object v1, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    .line 236
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    goto :goto_58

    .line 239
    :cond_40
    sget-object v1, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    const-string v4, "dev"

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    sget v6, Lio/vanta/fake/XJProfile;->sUid:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sget-object v6, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    array-length v6, v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v5, v4

    aget-object v1, v1, v5

    sput-object v1, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    .line 240
    sput-boolean v3, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    .line 242
    :goto_58
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

    .line 243
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    aget-object v1, v1, v3

    sput-object v1, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    .line 244
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    aget-object v1, v1, v2

    sput-object v1, Lio/vanta/fake/XJProfile;->sNetName:Ljava/lang/String;

    .line 245
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->sSimName:Ljava/lang/String;

    .line 246
    sget-object v1, Lio/vanta/fake/XJProfile;->sCar:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    sput-object v1, Lio/vanta/fake/XJProfile;->sIso:Ljava/lang/String;

    .line 248
    const-string v1, "imei"

    const/4 v5, 0x6

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lio/vanta/fake/XJProfile;->sDev:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    const/4 v7, 0x0

    :goto_96
    if-ge v7, v5, :cond_a0

    aget v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    .line 251
    :cond_a0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sImei:Ljava/lang/String;

    .line 254
    const-string v1, "imsi"

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    const/4 v7, 0x0

    :goto_c1
    if-ge v7, v5, :cond_cb

    aget v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c1

    .line 257
    :cond_cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sImsi:Ljava/lang/String;

    .line 259
    const-string v1, "iccid"

    const/16 v5, 0xd

    invoke-static {v1, v5}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "8981"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    sget-object v7, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/4 v4, 0x0

    :goto_ea
    if-ge v4, v5, :cond_f4

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_ea

    .line 263
    :cond_f4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->luhn(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sIccid:Ljava/lang/String;

    .line 266
    const-string v1, "line1"

    const/16 v4, 0x8

    invoke-static {v1, v4}, Lio/vanta/fake/XJProfile;->digits(Ljava/lang/String;I)[I

    move-result-object v1

    .line 267
    const/16 v5, 0x9

    filled-new-array {v8, v4, v5}, [I

    move-result-object v5

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
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

    .line 270
    const/4 v5, 0x0

    :goto_130
    if-ge v5, v4, :cond_13a

    aget v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    .line 271
    :cond_13a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vanta/fake/XJProfile;->sLine1:Ljava/lang/String;

    .line 272
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

    sget-object v4, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 273
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

    sget-object v4, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v4}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 274
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sInit:Z
    :try_end_1b4
    .catchall {:try_start_9 .. :try_end_1b4} :catchall_1b6

    .line 275
    monitor-exit v0

    return-void

    .line 224
    :catchall_1b6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 462
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 463
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 465
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 466
    const/16 v3, 0x22

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_2c

    if-ne v2, v4, :cond_1e

    goto :goto_2c

    .line 467
    :cond_1e
    const/16 v3, 0xa

    if-ne v2, v3, :cond_28

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 468
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 466
    :cond_2c
    :goto_2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 470
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_24

    aget-byte v3, p0, v2

    .line 196
    and-int/lit16 v3, v3, 0xff

    .line 197
    shr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 200
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static iccid()Ljava/lang/String;
    .registers 1

    .line 279
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sIccid:Ljava/lang/String;

    return-object v0
.end method

.method public static imei()Ljava/lang/String;
    .registers 1

    .line 277
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sImei:Ljava/lang/String;

    return-object v0
.end method

.method public static imsi()Ljava/lang/String;
    .registers 1

    .line 278
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sImsi:Ljava/lang/String;

    return-object v0
.end method

.method public static line1()Ljava/lang/String;
    .registers 1

    .line 280
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sLine1:Ljava/lang/String;

    return-object v0
.end method

.method public static loadNative()V
    .registers 52

    .line 377
    const-string v0, "/"

    sget-boolean v1, Lio/vanta/fake/XJProfile;->sNativeDone:Z

    if-eqz v1, :cond_7

    return-void

    .line 379
    :cond_7
    :try_start_7
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 380
    const-string v1, "xjhook"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 382
    sget-boolean v1, Lio/vanta/fake/XJProfile;->sSpoofModel:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e0

    .line 384
    const-string v1, "inc"

    invoke-static {v1}, Lio/vanta/fake/XJProfile;->seed(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x7a1200

    rem-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    add-long/2addr v4, v6

    .line 385
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

    .line 387
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

    .line 397
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

    .line 407
    goto :goto_e4

    .line 408
    :cond_e0
    new-array v0, v3, [Ljava/lang/String;

    .line 409
    new-array v1, v3, [Ljava/lang/String;

    .line 411
    :goto_e4
    sget v3, Lio/vanta/fake/XJProfile;->sUid:I

    sget-object v4, Lio/vanta/fake/XJProfile;->sHost:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lio/vanta/fake/XJProfile;->nativeInit(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lio/vanta/fake/XJProfile;->applyBuild()V

    .line 413
    sput-boolean v2, Lio/vanta/fake/XJProfile;->sNativeDone:Z
    :try_end_f0
    .catchall {:try_start_7 .. :try_end_f0} :catchall_f1

    goto :goto_f2

    .line 414
    :catchall_f1
    move-exception v0

    :goto_f2
    nop

    .line 415
    return-void
.end method

.method private static luhn(Ljava/lang/String;)C
    .registers 6

    .line 215
    nop

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_8
    if-ltz v0, :cond_20

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 218
    if-eqz v1, :cond_1a

    mul-int/lit8 v3, v3, 0x2

    const/16 v4, 0x9

    if-le v3, v4, :cond_1a

    add-int/lit8 v3, v3, -0x9

    .line 219
    :cond_1a
    add-int/2addr v2, v3

    .line 216
    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 221
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

    .line 282
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sMccmnc:Ljava/lang/String;

    return-object v0
.end method

.method private static md5(Ljava/lang/String;)[B
    .registers 3

    .line 190
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

    .line 191
    :catchall_11
    move-exception p0

    const/16 p0, 0x10

    new-array p0, p0, [B

    return-object p0
.end method

.method public static meid()Ljava/lang/String;
    .registers 1

    .line 281
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sMeid:Ljava/lang/String;

    return-object v0
.end method

.method public static native nativeInit(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public static netName()Ljava/lang/String;
    .registers 1

    .line 283
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sNetName:Ljava/lang/String;

    return-object v0
.end method

.method private static poolFor(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 3

    .line 108
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 109
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c4

    :cond_b
    goto/16 :goto_97

    :sswitch_d
    const-string v1, "exynos9830"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x9

    goto/16 :goto_98

    :sswitch_19
    const-string v1, "msmnile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    goto/16 :goto_98

    :sswitch_24
    const-string v1, "s5e9925"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xa

    goto/16 :goto_98

    :sswitch_30
    const-string v1, "gs201"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x7

    goto :goto_98

    :sswitch_3a
    const-string v1, "gs101"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x6

    goto :goto_98

    :sswitch_44
    const-string v1, "atoll"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xb

    goto :goto_98

    :sswitch_4f
    const-string v1, "zuma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x8

    goto :goto_98

    :sswitch_5a
    const-string v1, "taro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x3

    goto :goto_98

    :sswitch_64
    const-string v1, "kona"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_98

    :sswitch_6e
    const-string v1, "lahaina"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x2

    goto :goto_98

    :sswitch_78
    const-string v1, "pineapple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x5

    goto :goto_98

    :sswitch_82
    const-string v1, "mt6893"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xc

    goto :goto_98

    :sswitch_8d
    const-string v1, "kalama"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x4

    goto :goto_98

    :goto_97
    const/4 p0, -0x1

    :goto_98
    packed-switch p0, :pswitch_data_fa

    .line 123
    return-object v0

    .line 122
    :pswitch_9c
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_MT6893:[[Ljava/lang/String;

    return-object p0

    .line 121
    :pswitch_9f
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_ATOLL:[[Ljava/lang/String;

    return-object p0

    .line 120
    :pswitch_a2
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_EXY2200:[[Ljava/lang/String;

    return-object p0

    .line 119
    :pswitch_a5
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_EXY990:[[Ljava/lang/String;

    return-object p0

    .line 118
    :pswitch_a8
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G3:[[Ljava/lang/String;

    return-object p0

    .line 117
    :pswitch_ab
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G2:[[Ljava/lang/String;

    return-object p0

    .line 116
    :pswitch_ae
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_TENSOR_G1:[[Ljava/lang/String;

    return-object p0

    .line 115
    :pswitch_b1
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_PINEAPPLE:[[Ljava/lang/String;

    return-object p0

    .line 114
    :pswitch_b4
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_KALAMA:[[Ljava/lang/String;

    return-object p0

    .line 113
    :pswitch_b7
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_TARO:[[Ljava/lang/String;

    return-object p0

    .line 112
    :pswitch_ba
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_LAHAINA:[[Ljava/lang/String;

    return-object p0

    .line 111
    :pswitch_bd
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_KONA:[[Ljava/lang/String;

    return-object p0

    .line 110
    :pswitch_c0
    sget-object p0, Lio/vanta/fake/XJProfile;->POOL_SM8150:[[Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x43dffbe1 -> :sswitch_8d
        -0x3f83b87d -> :sswitch_82
        -0x19e19816 -> :sswitch_78
        -0x371b012 -> :sswitch_6e
        0x325217 -> :sswitch_64
        0x36356a -> :sswitch_5a
        0x393a0f -> :sswitch_4f
        0x58d511c -> :sswitch_44
        0x5e07986 -> :sswitch_3a
        0x5e07d47 -> :sswitch_30
        0x23878266 -> :sswitch_24
        0x5078247b -> :sswitch_19
        0x794292a8 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
    .end packed-switch
.end method

.method private static rawHost()Ljava/lang/String;
    .registers 4

    .line 184
    :try_start_0
    const-string v0, "io.vanta.VantaCore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    const-string v1, "getHostPkg"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 187
    :catchall_1b
    move-exception v0

    const-string v0, "host"

    return-object v0
.end method

.method private static rawUid()I
    .registers 4

    .line 177
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "io.vanta.VantaCore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 178
    const-string v2, "getUserId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return v0

    .line 180
    :catchall_1d
    move-exception v1

    return v0
.end method

.method static readSalt(I)Ljava/lang/String;
    .registers 6

    .line 156
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/emulated/0/.xjsalt/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_21

    return-object v0

    .line 158
    :cond_21
    const/16 p0, 0x40

    new-array p0, p0, [B

    .line 159
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 161
    if-gtz v1, :cond_34

    return-object v0

    .line 162
    :cond_34
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    nop

    :goto_46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_6e

    .line 165
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 166
    const/16 v3, 0x30

    if-lt v2, v3, :cond_58

    const/16 v3, 0x39

    if-le v2, v3, :cond_68

    :cond_58
    const/16 v3, 0x61

    if-lt v2, v3, :cond_60

    const/16 v3, 0x7a

    if-le v2, v3, :cond_68

    :cond_60
    const/16 v3, 0x41

    if-lt v2, v3, :cond_6b

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_6b

    :cond_68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 168
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_2 .. :try_end_72} :catchall_73

    return-object p0

    .line 169
    :catchall_73
    move-exception p0

    return-object v0
.end method

.method private static realProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 129
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
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

    .line 131
    :catchall_22
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static resolveHost()Ljava/lang/String;
    .registers 7

    .line 423
    const-string v0, "getHostPkg"

    .line 425
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "io.vanta.VantaCore"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 426
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

    .line 427
    goto :goto_1d

    :catchall_1b
    move-exception v3

    move-object v3, v2

    .line 428
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

    .line 430
    :cond_35
    :try_start_35
    const-string v5, "top.niunaijun.blackbox.BlackBoxCore"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 431
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

    .line 432
    :goto_4b
    goto :goto_4e

    :catchall_4c
    move-exception v0

    goto :goto_4b

    .line 434
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

    .line 435
    :cond_5e
    return-object v3
.end method

.method private static seed(Ljava/lang/String;)J
    .registers 8

    .line 203
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

    sget-object v0, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 204
    nop

    .line 205
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_35
    const/4 v3, 0x6

    if-ge v2, v3, :cond_45

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 206
    :cond_45
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static seedP(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .registers 8

    .line 439
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

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/vanta/fake/XJProfile;->md5(Ljava/lang/String;)[B

    move-result-object p0

    .line 440
    nop

    .line 441
    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    :goto_2b
    const/4 v0, 0x6

    if-ge p3, v0, :cond_3b

    const/16 v0, 0x8

    shl-long/2addr p1, v0

    aget-byte v0, p0, p3

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    .line 442
    :cond_3b
    const-wide v0, 0x7fffffffffffffffL

    and-long p0, p1, v0

    return-wide p0
.end method

.method public static serial()Ljava/lang/String;
    .registers 1

    .line 286
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sSerial:Ljava/lang/String;

    return-object v0
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 308
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_26

    .line 311
    :try_start_a
    const-class v1, Ljava/lang/reflect/Field;

    const-string v2, "accessFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 313
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_20

    .line 314
    :catchall_1f
    move-exception v0

    :goto_20
    nop

    .line 315
    const/4 v0, 0x0

    :try_start_22
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_27

    .line 316
    :catchall_26
    move-exception p0

    :goto_27
    nop

    .line 317
    return-void
.end method

.method public static simName()Ljava/lang/String;
    .registers 1

    .line 284
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    sget-object v0, Lio/vanta/fake/XJProfile;->sSimName:Ljava/lang/String;

    return-object v0
.end method

.method private static sufOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 172
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1d

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1d
    :goto_1d
    const-string p0, ""

    :goto_1f
    return-object p0
.end method

.method public static xjPatchSecure(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 338
    const-string v0, "android_id"

    if-eqz p1, :cond_8b

    :try_start_4
    instance-of v1, p0, Landroid/os/Bundle;

    if-nez v1, :cond_a

    goto/16 :goto_8b

    .line 339
    :cond_a
    nop

    .line 340
    array-length v1, p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_88

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const-string v6, "bluetooth_address"

    if-ge v4, v1, :cond_38

    :try_start_14
    aget-object v7, p1, v4

    .line 341
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_35

    .line 342
    check-cast v7, Ljava/lang/String;

    .line 343
    const-string v8, "GET_secure"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v5, 0x1

    goto :goto_35

    .line 344
    :cond_26
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object v3, v0

    goto :goto_35

    .line 345
    :cond_2e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    move-object v3, v6

    .line 340
    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 348
    :cond_38
    if-eqz v5, :cond_87

    if-nez v3, :cond_3d

    goto :goto_87

    .line 349
    :cond_3d
    invoke-static {}, Lio/vanta/fake/XJProfile;->ensure()V

    .line 351
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-static {}, Lio/vanta/fake/XJProfile;->btMac()Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    .line 352
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

    sget-object v0, Lio/vanta/fake/XJProfile;->sSalt:Ljava/lang/String;

    invoke-static {v0}, Lio/vanta/fake/XJProfile;->sufOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 353
    :goto_7e
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_14 .. :try_end_86} :catchall_88

    goto :goto_89

    .line 348
    :cond_87
    :goto_87
    return-object p0

    .line 354
    :catchall_88
    move-exception p1

    :goto_89
    nop

    .line 355
    return-object p0

    .line 338
    :cond_8b
    :goto_8b
    return-object p0
.end method

.method public static xjSecure([Ljava/lang/Object;)Z
    .registers 9

    .line 323
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 324
    :cond_4
    nop

    .line 325
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x1

    if-ge v2, v1, :cond_32

    aget-object v6, p0, v2

    .line 326
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2f

    .line 327
    check-cast v6, Ljava/lang/String;

    .line 328
    const-string v7, "GET_secure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v3, 0x1

    goto :goto_2f

    .line 329
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

    .line 325
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 332
    :cond_32
    if-eqz v3, :cond_37

    if-eqz v4, :cond_37

    const/4 v0, 0x1

    :cond_37
    return v0
.end method
