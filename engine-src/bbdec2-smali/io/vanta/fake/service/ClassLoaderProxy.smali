.class public Lio/vanta/fake/service/ClassLoaderProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ClassLoaderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ClassLoaderProxy$LoadDexFile;,
        Lio/vanta/fake/service/ClassLoaderProxy$OpenDexFile;,
        Lio/vanta/fake/service/ClassLoaderProxy$ForName;,
        Lio/vanta/fake/service/ClassLoaderProxy$FindClass;,
        Lio/vanta/fake/service/ClassLoaderProxy$LoadClass;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassLoaderProxy"

.field private static final sClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sDexFileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFallbackClassLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsClassCache()Ljava/util/Map;
    .registers 1

    sget-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sClassCache:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcreateFallbackDexPathList(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lio/vanta/fake/service/ClassLoaderProxy;->createFallbackDexPathList(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisProblematicClass(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->isProblematicClass(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidDexFile(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->isValidDexFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrecoverDexFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->recoverDexFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtryFallbackClassLoaders(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1

    invoke-static {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->tryFallbackClassLoaders(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sClassCache:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sDexFileCache:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sFallbackClassLoaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 43
    invoke-direct {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->initializeFallbackClassLoaders()V

    return-void
.end method

.method public static clearClassCache()V
    .registers 2

    .line 527
    sget-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sClassCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 528
    sget-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sDexFileCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 529
    const-string v0, "ClassLoaderProxy"

    const-string v1, "Class and DEX file caches cleared"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static createFallbackDexPathList(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 479
    const-string p0, "ClassLoaderProxy"

    .line 0
    const-string v0, "Creating fallback DexPathList with: "

    const/4 v1, 0x0

    .line 479
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception p1

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error creating fallback DexPathList: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static findAlternativeApkFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 436
    const-string v0, "ClassLoaderProxy"

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 438
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 439
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 441
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_6f

    aget-object v3, p0, v2

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-lez v4, :cond_55

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found alternative APK file: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_58

    return-object p0

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_58
    move-exception p0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error finding alternative APK file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheStats()Ljava/lang/String;
    .registers 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/vanta/fake/service/ClassLoaderProxy;->sClassCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries, DEX Cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/vanta/fake/service/ClassLoaderProxy;->sDexFileCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeFallbackClassLoaders()V
    .registers 5

    .line 66
    const-string v0, "ClassLoaderProxy"

    :try_start_2
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 70
    sget-object v2, Lio/vanta/fake/service/ClassLoaderProxy;->sFallbackClassLoaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "Added host class loader as fallback"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_18
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 78
    sget-object v2, Lio/vanta/fake/service/ClassLoaderProxy;->sFallbackClassLoaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "Added system class loader as fallback"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_28
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 85
    sget-object v2, Lio/vanta/fake/service/ClassLoaderProxy;->sFallbackClassLoaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "Added boot class loader as fallback"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3b

    :cond_3a
    return-void

    :catch_3b
    move-exception v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize fallback class loaders: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isProblematicClass(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 492
    :cond_4
    const-string v1, "kotlinx.coroutines.test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 497
    :cond_e
    const-string v1, "com.mediatek.perfservice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "com.mediatek.powerhalmgr"

    .line 498
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_63

    .line 503
    :cond_1f
    const-string v1, "androidx.datastore.preferences.protobuf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "NewInstanceSchemaFull"

    .line 504
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "ExtensionSchemaFull"

    .line 505
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_63

    .line 510
    :cond_38
    const-string v1, "org.robolectric"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "Robolectric"

    .line 511
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_63

    .line 516
    :cond_49
    const-string v1, "TestMainDispatcherFactory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "PerfServiceWrapper"

    .line 517
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "PowerHalMgrFactory"

    .line 518
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_62

    goto :goto_63

    :cond_62
    return v0

    :cond_63
    :goto_63
    return v2
.end method

.method private static isValidDexFile(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez p0, :cond_8

    return v0

    .line 367
    :cond_8
    sget-object v2, Lio/vanta/fake/service/ClassLoaderProxy;->sDexFileCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 368
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 372
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 374
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 379
    :cond_2a
    const-string v4, ".apk"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, ".zip"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_44

    :cond_3b
    const/4 v3, 0x1

    .line 386
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 381
    :cond_44
    :goto_44
    invoke-static {v3}, Lio/vanta/fake/service/ClassLoaderProxy;->validateApkFile(Ljava/io/File;)Z

    move-result v3

    .line 382
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4f} :catch_50

    return v3

    :catch_50
    move-exception v2

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error validating DEX file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClassLoaderProxy"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v2, Lio/vanta/fake/service/ClassLoaderProxy;->sDexFileCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private static recoverDexFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 411
    const-string v0, "ClassLoaderProxy"

    .line 0
    const-string v1, "Using host app APK as DEX fallback: "

    .line 411
    :try_start_4
    invoke-static {p0}, Lio/vanta/fake/service/ClassLoaderProxy;->findAlternativeApkFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 417
    :cond_b
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 420
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_47

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error recovering DEX file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method private static recoverDexPathList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 459
    const-string p1, "ClassLoaderProxy"

    .line 0
    const-string v0, "Recovering DexPathList using host APK: "

    .line 459
    :try_start_4
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 461
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 462
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/vanta/fake/service/ClassLoaderProxy;->createFallbackDexPathList(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error recovering DexPathList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method private static tryFallbackClassLoaders(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 348
    sget-object v0, Lio/vanta/fake/service/ClassLoaderProxy;->sFallbackClassLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 350
    :try_start_12
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 352
    const-string v3, "ClassLoaderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully loaded class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " via fallback loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_6

    return-object v2

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method private static validateApkFile(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    .line 401
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_d

    const-wide/16 v3, 0x3e8

    cmp-long p0, v1, v3

    if-lez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :catch_d
    :cond_d
    return v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 54
    const-string p1, "ClassLoaderProxy"

    const-string p2, "ClassLoader proxy injected for DEX file corruption prevention"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
