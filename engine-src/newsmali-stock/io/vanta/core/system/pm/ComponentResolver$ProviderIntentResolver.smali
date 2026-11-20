.class final Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;
.super Lio/vanta/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/vanta/core/system/pm/IntentResolver<",
        "Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lio/vanta/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmProviders(Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 505
    invoke-direct {p0}, Lio/vanta/core/system/pm/IntentResolver;-><init>()V

    .line 615
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/core/system/pm/ComponentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method addProvider(Lio/vanta/core/system/pm/BPackage$Provider;)V
    .registers 5

    .line 546
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lio/vanta/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 550
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    .line 551
    invoke-virtual {p0, v2}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->addFilter(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z
    .registers 3

    .line 505
    check-cast p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 568
    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->provider:Lio/vanta/core/system/pm/BPackage$Provider;

    iget-object p1, p1, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 569
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_2d

    .line 570
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 571
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 572
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2d
    return v1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$IntentInfo;)Z
    .registers 3

    .line 505
    check-cast p2, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;)Z
    .registers 3

    .line 587
    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->provider:Lio/vanta/core/system/pm/BPackage$Provider;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    iget-object p2, p2, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;
    .registers 2

    .line 505
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;
    .registers 2

    .line 581
    new-array p1, p1, [Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    return-object p1
.end method

.method protected newResult(Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 7

    .line 593
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->provider:Lio/vanta/core/system/pm/BPackage$Provider;

    .line 594
    iget-object v1, v0, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    iget-object v1, v1, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    if-nez v1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 599
    :cond_a
    iget v2, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    .line 600
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 601
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 602
    iget p3, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_25

    .line 603
    iget-object p3, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 605
    :cond_25
    iget-object p3, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 606
    iget-object p3, v0, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    iget p3, p3, Lio/vanta/core/system/pm/BPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 607
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 608
    iget-boolean p2, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 609
    iget p2, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 610
    iget-object p2, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 611
    iget p1, p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Lio/vanta/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .registers 4

    .line 505
    check-cast p1, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->newResult(Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 516
    iput p3, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 517
    :goto_a
    invoke-super {p0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 510
    :goto_6
    iput v0, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 511
    invoke-super {p0, p1, p2, p3, p4}, Lio/vanta/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackage$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 527
    :cond_4
    iput p3, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    const/4 p3, 0x1

    move v4, p3

    goto :goto_10

    :cond_f
    move v4, v0

    .line 529
    :goto_10
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 530
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_19
    if-ge v0, p3, :cond_3a

    .line 534
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Provider;

    iget-object v1, v1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 535
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 537
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    .line 538
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 539
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 542
    invoke-super/range {v1 .. v6}, Lio/vanta/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeProvider(Lio/vanta/core/system/pm/BPackage$Provider;)V
    .registers 5

    .line 556
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lio/vanta/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 560
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    .line 561
    invoke-virtual {p0, v2}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->removeFilter(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method
