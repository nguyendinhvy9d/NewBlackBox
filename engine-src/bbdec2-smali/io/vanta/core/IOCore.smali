.class public Lio/vanta/core/IOCore;
.super Ljava/lang/Object;
.source "IOCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IOCore"

.field private static final mTrieTree:Lio/vanta/utils/TrieTree;

.field private static final sBlackTree:Lio/vanta/utils/TrieTree;

.field private static final sCachePackageRedirect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIOCore:Lio/vanta/core/IOCore;


# instance fields
.field private final mRedirectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lio/vanta/core/IOCore;

    invoke-direct {v0}, Lio/vanta/core/IOCore;-><init>()V

    sput-object v0, Lio/vanta/core/IOCore;->sIOCore:Lio/vanta/core/IOCore;

    .line 30
    new-instance v0, Lio/vanta/utils/TrieTree;

    invoke-direct {v0}, Lio/vanta/utils/TrieTree;-><init>()V

    sput-object v0, Lio/vanta/core/IOCore;->mTrieTree:Lio/vanta/utils/TrieTree;

    .line 31
    new-instance v0, Lio/vanta/utils/TrieTree;

    invoke-direct {v0}, Lio/vanta/utils/TrieTree;-><init>()V

    sput-object v0, Lio/vanta/core/IOCore;->sBlackTree:Lio/vanta/utils/TrieTree;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/core/IOCore;->sCachePackageRedirect:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/IOCore;->mRedirectMap:Ljava/util/Map;

    return-void
.end method

.method public static get()Lio/vanta/core/IOCore;
    .registers 1

    .line 37
    sget-object v0, Lio/vanta/core/IOCore;->sIOCore:Lio/vanta/core/IOCore;

    return-object v0
.end method


# virtual methods
.method public addBlackRedirect(Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 57
    :cond_7
    sget-object v0, Lio/vanta/core/IOCore;->sBlackTree:Lio/vanta/utils/TrieTree;

    invoke-virtual {v0, p1}, Lio/vanta/utils/TrieTree;->add(Ljava/lang/String;)V

    return-void
.end method

.method public addRedirect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lio/vanta/core/IOCore;->mRedirectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 45
    :cond_15
    sget-object v0, Lio/vanta/core/IOCore;->mTrieTree:Lio/vanta/utils/TrieTree;

    invoke-virtual {v0, p1}, Lio/vanta/utils/TrieTree;->add(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/vanta/core/IOCore;->mRedirectMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 49
    invoke-static {p2}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/lang/String;)V

    .line 51
    :cond_2d
    invoke-static {p1, p2}, Lio/vanta/core/NativeCore;->addIORule(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public enableRedirect(Landroid/content/Context;)V
    .registers 11

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 108
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 112
    :try_start_e
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lio/vanta/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 113
    invoke-static {}, Lio/vanta/VantaCore;->getHostUserId()I

    move-result v4

    .line 114
    const-string v5, "/data/data/%s/lib"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "/data/user/%d/%s/lib"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "/data/data/%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v5, "/data/user/%d/%s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getVirtualRoot()Ljava/io/File;

    move-result-object v5

    const-string v6, "profiles"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/lang/String;)V

    .line 124
    const-string v5, "/data/misc/profiles"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v5, Ljava/io/File;

    const-string v6, "cur/%d/%s"

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    new-instance v6, Ljava/io/File;

    const-string v7, "ref/%d/%s"

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/lang/String;)V

    .line 130
    const-string v3, "/data/misc/profiles/cur/%d/%s"

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "/data/misc/profiles/ref/%d/%s"

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_13d

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 134
    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result p1

    invoke-static {p1}, Lio/vanta/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p1

    .line 137
    const-string v2, "/sdcard"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "/storage/emulated/%d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string p1, "/sdcard/Pictures"

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string p1, "/storage/emulated/%d/Pictures"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_138} :catch_139

    goto :goto_13d

    :catch_139
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_13d
    :goto_13d
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_145
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lio/vanta/core/IOCore;->addRedirect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    .line 149
    :cond_15f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_163
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_177

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/vanta/core/IOCore;->addBlackRedirect(Ljava/lang/String;)V

    goto :goto_163

    .line 152
    :cond_177
    invoke-static {}, Lio/vanta/core/NativeCore;->enableIO()V

    return-void
.end method

.method public redirectPath(Ljava/io/File;)Ljava/io/File;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/vanta/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public redirectPath(Ljava/io/File;Ljava/util/Map;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/vanta/core/IOCore;->redirectPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3b

    .line 63
    :cond_7
    const-string v0, "/nomad/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3b

    .line 66
    :cond_10
    sget-object v0, Lio/vanta/core/IOCore;->sBlackTree:Lio/vanta/utils/TrieTree;

    invoke-virtual {v0, p1}, Lio/vanta/utils/TrieTree;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    return-object v0

    .line 71
    :cond_1d
    sget-object v0, Lio/vanta/core/IOCore;->mTrieTree:Lio/vanta/utils/TrieTree;

    invoke-virtual {v0, p1}, Lio/vanta/utils/TrieTree;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 73
    iget-object v1, p0, Lio/vanta/core/IOCore;->mRedirectMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public redirectPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_23

    .line 90
    :cond_7
    sget-object v0, Lio/vanta/core/IOCore;->mTrieTree:Lio/vanta/utils/TrieTree;

    invoke-virtual {v0, p1}, Lio/vanta/utils/TrieTree;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 92
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_23
    :goto_23
    return-object p1
.end method
