.class public Lio/vanta/utils/AbiUtils;
.super Ljava/lang/Object;
.source "AbiUtils.java"


# static fields
.field private static final sAbiUtilsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lio/vanta/utils/AbiUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLibs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    :try_start_d
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_66
    .catchall {:try_start_d .. :try_end_12} :catchall_64

    .line 40
    :try_start_12
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 41
    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 42
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 43
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v4, "lib/arm64-v8a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 45
    iget-object v2, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "arm64-v8a"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 46
    :cond_36
    const-string v4, "lib/armeabi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 47
    iget-object v2, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "armeabi"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 48
    :cond_46
    const-string v4, "lib/armeabi-v7a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 49
    iget-object v2, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "armeabi-v7a"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_55} :catch_61
    .catchall {:try_start_12 .. :try_end_55} :catchall_5e

    goto :goto_16

    .line 55
    :cond_56
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_5e
    move-exception p1

    move-object v2, v3

    goto :goto_72

    :catch_61
    move-exception p1

    move-object v2, v3

    goto :goto_67

    :catchall_64
    move-exception p1

    goto :goto_72

    :catch_66
    move-exception p1

    .line 53
    :goto_67
    :try_start_67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    .line 55
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :goto_72
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lio/vanta/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 56
    throw p1
.end method

.method public static isSupport(Ljava/io/File;)Z
    .registers 3

    .line 20
    sget-object v0, Lio/vanta/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/utils/AbiUtils;

    if-nez v1, :cond_12

    .line 22
    new-instance v1, Lio/vanta/utils/AbiUtils;

    invoke-direct {v1, p0}, Lio/vanta/utils/AbiUtils;-><init>(Ljava/io/File;)V

    .line 23
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_12
    invoke-virtual {v1}, Lio/vanta/utils/AbiUtils;->isEmptyAib()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 29
    :cond_1a
    invoke-static {}, Lio/vanta/VantaCore;->is64Bit()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 30
    invoke-virtual {v1}, Lio/vanta/utils/AbiUtils;->is64Bit()Z

    move-result p0

    return p0

    .line 32
    :cond_25
    invoke-virtual {v1}, Lio/vanta/utils/AbiUtils;->is32Bit()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public is32Bit()Z
    .registers 3

    .line 64
    iget-object v0, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public is64Bit()Z
    .registers 3

    .line 60
    iget-object v0, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "arm64-v8a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmptyAib()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lio/vanta/utils/AbiUtils;->mLibs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
