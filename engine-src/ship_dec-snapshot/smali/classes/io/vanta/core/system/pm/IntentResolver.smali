.class public abstract Lio/vanta/core/system/pm/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lio/vanta/core/system/pm/BPackage$IntentInfo;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 657
    new-instance v0, Lio/vanta/core/system/pm/IntentResolver$1;

    invoke-direct {v0}, Lio/vanta/core/system/pm/IntentResolver$1;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 669
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 672
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 675
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 678
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 681
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 684
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 426
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0, v1}, Lio/vanta/core/system/pm/IntentResolver;->newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-result-object v0

    .line 429
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    aput-object p3, v0, v2

    return-void

    .line 432
    :cond_0
    array-length v3, v0

    move v4, v3

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 434
    aget-object v5, v0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 438
    aput-object p3, v0, v4

    return-void

    :cond_2
    mul-int/lit8 v4, v3, 0x3

    .line 440
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lio/vanta/core/system/pm/IntentResolver;->newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-result-object v1

    .line 441
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    aput-object p3, v1, v3

    .line 443
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lio/vanta/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 586
    array-length v5, v1

    move v11, v5

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    move v12, v3

    move v13, v12

    .line 590
    :goto_1
    const-string v15, "IntentResolver"

    if-ge v12, v11, :cond_f

    aget-object v3, v1, v12

    if-eqz v3, :cond_f

    if-eqz p3, :cond_1

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Matching against filter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_2

    .line 602
    invoke-virtual {v0, v10, v3}, Lio/vanta/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_3

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  Filter is not from package "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; skipping"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 610
    :cond_2
    invoke-virtual {v0, v3, v2}, Lio/vanta/core/system/pm/IntentResolver;->allowFilterResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p3, :cond_3

    .line 612
    const-string v3, "  Filter\'s target already added"

    invoke-static {v15, v3}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move/from16 v5, p9

    goto/16 :goto_5

    :cond_4
    move-object v5, v3

    .line 617
    iget-object v3, v5, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    const-string v9, "IntentResolver"

    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move-object v14, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    .line 619
    const-string v5, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  Filter matched!  match=0x"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hasDefault="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v14, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 621
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-static {v15, v6}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p4, :cond_7

    .line 622
    iget-object v6, v14, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v5, p9

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    :goto_3
    move/from16 v5, p9

    .line 623
    invoke-virtual {v0, v14, v3, v5}, Lio/vanta/core/system/pm/IntentResolver;->newResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;

    move-result-object v3

    if-eqz p3, :cond_8

    .line 624
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Created result: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v3, :cond_e

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move/from16 v5, p9

    if-eqz p3, :cond_e

    const/4 v6, -0x4

    if-eq v3, v6, :cond_d

    const/4 v6, -0x3

    if-eq v3, v6, :cond_c

    const/4 v6, -0x2

    if-eq v3, v6, :cond_b

    const/4 v6, -0x1

    if-eq v3, v6, :cond_a

    .line 639
    const-string v3, "unknown reason"

    goto :goto_4

    .line 638
    :cond_a
    const-string v3, "type"

    goto :goto_4

    .line 637
    :cond_b
    const-string v3, "data"

    goto :goto_4

    .line 635
    :cond_c
    const-string v3, "action"

    goto :goto_4

    .line 636
    :cond_d
    const-string v3, "category"

    .line 641
    :goto_4
    const-string v6, "  Filter did not match: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_f
    if-eqz p3, :cond_11

    if-eqz v13, :cond_11

    .line 647
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 648
    const-string v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 649
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_11

    .line 650
    const-string v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method private collectFilters([Lio/vanta/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 97
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 98
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, p2}, Lio/vanta/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 4

    .line 56
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    .line 72
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_8

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p0

    .line 87
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p1

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Lio/vanta/core/system/pm/FastImmutableArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lio/vanta/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 574
    :cond_0
    new-instance v0, Lio/vanta/core/system/pm/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Lio/vanta/core/system/pm/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private final register_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 516
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 520
    invoke-direct {p0, p3, v0, p1}, Lio/vanta/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private final register_mime_types(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 449
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 455
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 462
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 464
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 467
    :goto_1
    iget-object v5, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lio/vanta/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    if-lez v3, :cond_2

    .line 470
    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lio/vanta/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lio/vanta/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 543
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v0, :cond_5

    .line 545
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 546
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ltz v1, :cond_3

    .line 550
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_2

    sub-int v3, v2, v1

    if-lez v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 553
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x0

    .line 555
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    .line 560
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 561
    :cond_4
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 p3, v2, 0x2

    .line 562
    invoke-virtual {p0, p3}, Lio/vanta/core/system/pm/IntentResolver;->newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    .line 563
    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private final unregister_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 532
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 536
    invoke-direct {p0, p3, v0, p1}, Lio/vanta/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private final unregister_mime_types(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 480
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 486
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 493
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 495
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 498
    :goto_1
    iget-object v5, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lio/vanta/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_2

    .line 501
    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lio/vanta/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lio/vanta/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public addFilter(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lio/vanta/core/system/pm/IntentResolver;->register_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 44
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lio/vanta/core/system/pm/IntentResolver;->register_mime_types(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 46
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lio/vanta/core/system/pm/IntentResolver;->register_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 50
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lio/vanta/core/system/pm/IntentResolver;->register_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected allowFilterResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 171
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    .line 172
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    .line 173
    array-length v15, v14

    .line 176
    const-string v8, ":"

    if-eqz p8, :cond_6

    if-nez p7, :cond_6

    .line 177
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_2

    move/from16 v16, v9

    .line 178
    aget-object v9, v14, v16

    if-eqz v9, :cond_2

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v0, v4, v9}, Lio/vanta/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_2

    .line 182
    :cond_0
    invoke-virtual {v0, v9}, Lio/vanta/core/system/pm/IntentResolver;->filterToLabel(Lio/vanta/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v10

    .line 183
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_1

    .line 185
    new-instance v10, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 187
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    iget v10, v9, Landroid/util/MutableInt;->value:I

    add-int/2addr v10, v12

    iput v10, v9, Landroid/util/MutableInt;->value:I

    :goto_2
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v10, v17

    move/from16 v12, v18

    goto :goto_1

    :cond_2
    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    move-object/from16 v10, v17

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 190
    :goto_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v9, v15, :cond_5

    if-eqz v10, :cond_3

    .line 192
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_3
    if-nez v14, :cond_4

    .line 196
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v12

    .line 200
    :cond_4
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/util/MutableInt;

    iget v12, v12, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v15, v12}, Lio/vanta/core/system/pm/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v17, v7

    move/from16 v12, v18

    goto :goto_6

    :cond_6
    move-object/from16 v17, v10

    move/from16 v18, v12

    move-object/from16 v10, v17

    move/from16 v12, v18

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v17, v7

    if-ge v9, v15, :cond_c

    .line 203
    aget-object v7, v14, v9

    if-eqz v7, :cond_c

    if-eqz v4, :cond_7

    .line 204
    invoke-virtual {v0, v4, v7}, Lio/vanta/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)Z

    move-result v18

    if-nez v18, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v10, :cond_8

    .line 208
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_8
    if-nez v16, :cond_9

    .line 212
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 216
    :cond_9
    invoke-virtual {v0, v1, v2, v7}, Lio/vanta/core/system/pm/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    if-eqz p7, :cond_b

    if-nez v13, :cond_a

    .line 219
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 221
    :cond_a
    iget-object v7, v7, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_b
    const/4 v12, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    goto :goto_4

    :cond_c
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v12

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lio/vanta/core/system/pm/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/vanta/core/system/pm/IntentResolver$IteratorWrapper;-><init>(Lio/vanta/core/system/pm/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Lio/vanta/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 418
    const-string p1, "IntentFilter"

    return-object p1
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lio/vanta/core/system/pm/IntentResolver;->collectFilters([Lio/vanta/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 119
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lio/vanta/core/system/pm/IntentResolver;->collectFilters([Lio/vanta/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 123
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lio/vanta/core/system/pm/IntentResolver;->collectFilters([Lio/vanta/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$IntentInfo;

    .line 127
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, p1}, Lio/vanta/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_4

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method protected isFilterStopped(Lio/vanta/core/system/pm/BPackage$IntentInfo;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 287
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v10

    .line 292
    :goto_0
    const-string v11, "IntentResolver"

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Resolving type="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " scheme="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " defaultOnly="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " userId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v7, p1

    move/from16 v4, p3

    move/from16 v9, p4

    :goto_1
    if-eqz v5, :cond_9

    const/16 v12, 0x2f

    .line 304
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_9

    .line 306
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 307
    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 308
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v1, v12, 0x2

    const/16 v17, 0x1

    const-string v2, "Second type cut: "

    const-string v10, "First type cut: "

    if-ne v15, v1, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 309
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x2a

    if-eq v1, v12, :cond_2

    goto :goto_2

    .line 319
    :cond_2
    iget-object v1, v0, Lio/vanta/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_3

    .line 320
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    iget-object v10, v0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_6

    .line 322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v11, v2}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 312
    :cond_4
    :goto_2
    iget-object v1, v0, Lio/vanta/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_5

    .line 313
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    iget-object v10, v0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_6

    .line 315
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v11, v2}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_6
    :goto_3
    iget-object v2, v0, Lio/vanta/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_7

    .line 328
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Third type cut: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v12, v10

    move-object v10, v2

    goto :goto_5

    .line 329
    :cond_8
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 333
    iget-object v1, v0, Lio/vanta/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_a

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Typed Action list: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_5
    if-eqz v6, :cond_c

    .line 343
    iget-object v2, v0, Lio/vanta/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_b

    .line 344
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Scheme list: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v16, v2

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    if-nez v5, :cond_d

    if-nez v6, :cond_d

    .line 350
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 351
    iget-object v1, v0, Lio/vanta/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_d

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "Action list: "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_d
    invoke-static {v7}, Lio/vanta/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lio/vanta/core/system/pm/FastImmutableArraySet;

    move-result-object v2

    if-eqz v1, :cond_e

    move-object/from16 v18, v7

    move-object v7, v1

    move-object/from16 v1, v18

    .line 357
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_e
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object v7, v12

    .line 361
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_f
    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object v7, v10

    .line 365
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_10
    move-object/from16 v0, p0

    if-eqz v16, :cond_11

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object/from16 v7, v16

    .line 369
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    .line 372
    :cond_11
    invoke-virtual {v0, v8}, Lio/vanta/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    if-eqz v3, :cond_12

    .line 376
    const-string v1, "Final result list:"

    invoke-static {v11, v1}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 377
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_12

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lio/vanta/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    return-object v8
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 266
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 271
    :goto_0
    invoke-static {p1}, Lio/vanta/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lio/vanta/core/system/pm/FastImmutableArraySet;

    move-result-object v2

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v1

    :goto_1
    if-ge v11, v10, :cond_1

    move-object/from16 v12, p4

    .line 276
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move/from16 v4, p3

    move/from16 v9, p5

    .line 275
    invoke-direct/range {v0 .. v9}, Lio/vanta/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lio/vanta/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {p0, v8}, Lio/vanta/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    return-object v8
.end method

.method public removeFilter(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/IntentResolver;->removeFilterInternal(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    .line 140
    iget-object v0, p0, Lio/vanta/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeFilterInternal(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lio/vanta/core/system/pm/IntentResolver;->unregister_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 152
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lio/vanta/core/system/pm/IntentResolver;->unregister_mime_types(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 154
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lio/vanta/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lio/vanta/core/system/pm/IntentResolver;->unregister_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 158
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lio/vanta/core/system/pm/IntentResolver;->unregister_intent_filter(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 406
    sget-object v0, Lio/vanta/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
