.class public Lio/vanta/utils/FileUtils$FileLock;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/FileUtils$FileLock$FileLockCount;
    }
.end annotation


# static fields
.field private static singleton:Lio/vanta/utils/FileUtils$FileLock;


# instance fields
.field private mRefCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/utils/FileUtils$FileLock$FileLockCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    return-void
.end method

.method private RefCntDec(Ljava/lang/String;)I
    .registers 4

    .line 388
    iget-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 389
    iget-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;

    .line 390
    iget v1, v0, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    .line 391
    iput v1, v0, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    if-gtz v1, :cond_1d

    .line 394
    iget-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return v1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    .registers 12

    .line 373
    iget-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 374
    iget-object p2, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;

    .line 375
    iget p2, p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 p3, p2, 0x1

    .line 376
    iput p3, p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    return p2

    .line 380
    :cond_17
    iget-object v0, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    new-instance v1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;-><init>(Lio/vanta/utils/FileUtils$FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method

.method public static getInstance()Lio/vanta/utils/FileUtils$FileLock;
    .registers 1

    .line 364
    sget-object v0, Lio/vanta/utils/FileUtils$FileLock;->singleton:Lio/vanta/utils/FileUtils$FileLock;

    if-nez v0, :cond_b

    .line 365
    new-instance v0, Lio/vanta/utils/FileUtils$FileLock;

    invoke-direct {v0}, Lio/vanta/utils/FileUtils$FileLock;-><init>()V

    sput-object v0, Lio/vanta/utils/FileUtils$FileLock;->singleton:Lio/vanta/utils/FileUtils$FileLock;

    .line 367
    :cond_b
    sget-object v0, Lio/vanta/utils/FileUtils$FileLock;->singleton:Lio/vanta/utils/FileUtils$FileLock;

    return-object v0
.end method


# virtual methods
.method public LockExclusive(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 406
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/lock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_20

    .line 408
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 410
    :cond_20
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {p1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-nez v4, :cond_3a

    return v0

    .line 416
    :cond_3a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p1, v2}, Lio/vanta/utils/FileUtils$FileLock;->RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_43

    const/4 p1, 0x1

    return p1

    :catch_43
    return v0
.end method

.method public unLock(Ljava/io/File;)V
    .registers 5

    .line 426
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/lock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_5e

    .line 430
    :cond_1a
    iget-object p1, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 431
    iget-object p1, p0, Lio/vanta/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;

    if-eqz p1, :cond_5e

    .line 433
    iget-object v1, p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 434
    iget-object v2, p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 435
    iget-object p1, p1, Lio/vanta/utils/FileUtils$FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    .line 437
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/utils/FileUtils$FileLock;->RefCntDec(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5e

    if-eqz v1, :cond_4f

    .line 438
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 439
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    :cond_4f
    if-eqz v2, :cond_54

    .line 442
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_54
    if-eqz p1, :cond_5e

    .line 445
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    .line 449
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void
.end method
