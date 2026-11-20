.class public Lio/vanta/core/system/pm/ComponentResolver;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;,
        Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;,
        Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentResolver"


# instance fields
.field private final mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mLock:Ljava/lang/Object;

.field private final mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lio/vanta/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 28
    new-instance v0, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;-><init>(Lio/vanta/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    .line 31
    new-instance v0, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lio/vanta/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 34
    new-instance v0, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;-><init>(Lio/vanta/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    return-void
.end method

.method private addActivitiesLocked(Lio/vanta/core/system/pm/BPackage;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/vanta/core/system/pm/BPackage;",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 107
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 108
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 109
    invoke-static {v4, v5}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-static {v3, v2, v4, p2}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$maddActivity(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;Lio/vanta/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    return-void
.end method

.method private addProvidersLocked(Lio/vanta/core/system/pm/BPackage;)V
    .registers 15

    .line 115
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_cb

    .line 117
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 118
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, p1, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 120
    iget-object v4, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Lio/vanta/core/system/pm/BPackage$Provider;)V

    .line 121
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_c7

    .line 122
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v6, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 124
    array-length v6, v4

    move v8, v1

    :goto_3e
    if-ge v8, v6, :cond_c7

    aget-object v9, v4, v8

    .line 125
    iget-object v10, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 126
    iget-object v10, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v10, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v10, :cond_5a

    .line 128
    iget-object v10, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_c3

    .line 130
    :cond_5a
    iget-object v10, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_c3

    .line 133
    :cond_78
    iget-object v10, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 134
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/vanta/core/system/pm/BPackage$Provider;

    if-eqz v10, :cond_8d

    .line 136
    invoke-virtual {v10}, Lio/vanta/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_8d

    .line 137
    invoke-virtual {v10}, Lio/vanta/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_8e

    :cond_8d
    move-object v10, v7

    :goto_8e
    if-eqz v10, :cond_95

    .line 139
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_97

    :cond_95
    const-string v10, "?"

    .line 140
    :goto_97
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Skipping provider name "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (in package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "): name already used by "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ComponentResolver"

    invoke-static {v10, v9}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3e

    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_cb
    return-void
.end method

.method private addReceiversLocked(Lio/vanta/core/system/pm/BPackage;)V
    .registers 8

    .line 150
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2c

    .line 152
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 153
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "receiver"

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$maddActivity(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;Lio/vanta/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    return-void
.end method

.method private addServicesLocked(Lio/vanta/core/system/pm/BPackage;)V
    .registers 8

    .line 160
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 162
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$Service;

    .line 163
    iget-object v3, v2, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, p1, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/vanta/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;->addService(Lio/vanta/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return-void
.end method

.method private removeAllComponentsLocked(Lio/vanta/core/system/pm/BPackage;)V
    .registers 10

    .line 62
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 65
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 66
    iget-object v4, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$mremoveActivity(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;Lio/vanta/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 68
    :cond_1c
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_67

    .line 71
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 72
    iget-object v4, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Lio/vanta/core/system/pm/BPackage$Provider;)V

    .line 73
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v4, :cond_39

    goto :goto_64

    .line 79
    :cond_39
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 80
    :goto_44
    array-length v6, v4

    if-ge v5, v6, :cond_5b

    .line 81
    iget-object v6, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_58

    .line 82
    iget-object v6, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 85
    :cond_5b
    iget-object v4, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    iget-object v3, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 88
    :cond_67
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_6e
    if-ge v2, v0, :cond_82

    .line 91
    iget-object v3, p1, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 92
    iget-object v4, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-static {v4, v3, v5}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$mremoveActivity(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;Lio/vanta/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 95
    :cond_82
    iget-object v0, p1, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_88
    if-ge v1, v0, :cond_9a

    .line 98
    iget-object v2, p1, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/vanta/core/system/pm/BPackage$Service;

    .line 99
    iget-object v3, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;->removeService(Lio/vanta/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    :cond_9a
    return-void
.end method


# virtual methods
.method addAllComponents(Lio/vanta/core/system/pm/BPackage;)V
    .registers 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_8
    invoke-direct {p0, p1, v0}, Lio/vanta/core/system/pm/ComponentResolver;->addActivitiesLocked(Lio/vanta/core/system/pm/BPackage;Ljava/util/List;)V

    .line 45
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/ComponentResolver;->addServicesLocked(Lio/vanta/core/system/pm/BPackage;)V

    .line 46
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/ComponentResolver;->addProvidersLocked(Lio/vanta/core/system/pm/BPackage;)V

    .line 47
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/ComponentResolver;->addReceiversLocked(Lio/vanta/core/system/pm/BPackage;)V

    .line 48
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p1
.end method

.method getActivity(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Activity;
    .registers 4

    .line 172
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$fgetmActivities(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    .line 174
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getProvider(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Provider;
    .registers 4

    .line 179
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackage$Provider;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    .line 181
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getReceiver(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Activity;
    .registers 4

    .line 186
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$fgetmActivities(Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    .line 188
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getService(Landroid/content/ComponentName;)Lio/vanta/core/system/pm/BPackage$Service;
    .registers 4

    .line 193
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;->-$$Nest$fgetmServices(Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackage$Service;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 199
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 201
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_3
    iget-object v2, p0, Lio/vanta/core/system/pm/ComponentResolver;->mActivities:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    .line 209
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 6

    .line 260
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/core/system/pm/BPackage$Provider;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 263
    monitor-exit v0

    return-object p1

    .line 265
    :cond_10
    iget-object v1, p1, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    iget-object v1, v1, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    .line 266
    invoke-virtual {v1, p3}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p1

    .line 267
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 213
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 215
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 14
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

    .line 220
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-object v2, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    .line 222
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_8
    iget-object v2, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_5d

    .line 230
    iget-object v3, p0, Lio/vanta/core/system/pm/ComponentResolver;->mProviders:Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Lio/vanta/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 231
    iget-object v4, v3, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    iget-object v4, v4, Lio/vanta/core/system/pm/BPackage;->mExtras:Lio/vanta/core/system/pm/BPackageSettings;

    if-nez v4, :cond_29

    goto :goto_5a

    .line 235
    :cond_29
    iget-object v5, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_30

    goto :goto_5a

    :cond_30
    if-eqz p1, :cond_3d

    .line 238
    iget-object v5, v3, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_5a

    :cond_3d
    if-eqz p2, :cond_4c

    .line 242
    iget-object v5, v3, Lio/vanta/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5a

    iget-object v5, v3, Lio/vanta/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    .line 243
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_5a

    .line 246
    :cond_4c
    invoke-virtual {v4, p4}, Lio/vanta/core/system/pm/BPackageSettings;->readUserState(I)Lio/vanta/core/system/pm/BPackageUserState;

    move-result-object v4

    invoke-static {v3, p3, v4, p4}, Lio/vanta/core/system/pm/PackageManagerCompat;->generateProviderInfo(Lio/vanta/core/system/pm/BPackage$Provider;ILio/vanta/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_57

    goto :goto_5a

    .line 253
    :cond_57
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 255
    :cond_5d
    monitor-exit v1

    return-object v0

    :catchall_5f
    move-exception p1

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 271
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 273
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_3
    iget-object v2, p0, Lio/vanta/core/system/pm/ComponentResolver;->mReceivers:Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    .line 280
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 284
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 286
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/vanta/core/system/pm/BPackage$Service;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v1, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_3
    iget-object v2, p0, Lio/vanta/core/system/pm/ComponentResolver;->mServices:Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/vanta/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    .line 293
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method removeAllComponents(Lio/vanta/core/system/pm/BPackage;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lio/vanta/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/ComponentResolver;->removeAllComponentsLocked(Lio/vanta/core/system/pm/BPackage;)V

    .line 54
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
