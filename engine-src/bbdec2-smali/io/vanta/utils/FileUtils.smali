.class public Lio/vanta/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/FileUtils$FileLock;,
        Lio/vanta/utils/FileUtils$FileMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_42

    .line 310
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 311
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 313
    invoke-static {v2}, Lio/vanta/utils/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_35
    const/16 v2, 0x5f

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 319
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 308
    :cond_42
    :goto_42
    const-string p0, "(invalid)"

    return-object p0
.end method

.method public static canRead(Ljava/lang/String;)Z
    .registers 2

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    return p0
.end method

.method public static changeExt(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->getFilenameExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 56
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2f

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    .line 60
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    :goto_44
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4a
    return-object p0
.end method

.method public static chmod(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 100
    :catch_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 103
    const-string v0, "chmod  -R "

    goto :goto_14

    .line 102
    :cond_12
    const-string v0, "chmod "

    .line 105
    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%o"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 268
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 244
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3f

    .line 245
    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3b

    .line 246
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/16 v2, 0x400

    .line 249
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 251
    :goto_19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_39

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    .line 260
    invoke-static {v1}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 255
    :cond_2a
    :try_start_2a
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_39

    goto :goto_19

    :catchall_39
    move-exception p1

    goto :goto_3d

    :catchall_3b
    move-exception p1

    move-object p0, v0

    :goto_3d
    move-object v0, v1

    goto :goto_41

    :catchall_3f
    move-exception p1

    move-object p0, v0

    .line 260
    :goto_41
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    throw p1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    .line 225
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    const/16 p1, 0x1000

    .line 226
    :try_start_8
    new-array p1, p1, [B

    .line 228
    :goto_a
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a

    .line 231
    :cond_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    .line 235
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v1}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_20
    move-object v0, v1

    .line 235
    :catchall_21
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static count(Ljava/io/File;)I
    .registers 3

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 35
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    return v1

    .line 40
    :cond_1e
    array-length p0, p0

    return p0

    :cond_20
    return v1
.end method

.method public static createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    .line 118
    :catchall_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)I
    .registers 7

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 168
    :try_start_7
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move v0, v1

    :goto_d
    if-nez v0, :cond_27

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 174
    array-length v2, v0

    move v3, v1

    :goto_15
    if-ge v1, v2, :cond_26

    aget-object v4, v0, v1

    .line 175
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    move v1, v3

    .line 179
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2f

    add-int/lit8 v1, v1, 0x1

    :cond_2f
    return v1
.end method

.method public static deleteDir(Ljava/lang/String;)I
    .registers 2

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x1

    .line 474
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "_data"

    aput-object v7, v3, v0

    const/4 v8, 0x0

    .line 476
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_35

    if-eqz p0, :cond_2f

    .line 477
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 478
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 479
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2b

    if-eqz p0, :cond_2a

    .line 483
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2a
    return-object p1

    :catchall_2b
    move-exception v0

    move-object p1, v0

    move-object v8, p0

    goto :goto_37

    :cond_2f
    if-eqz p0, :cond_34

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_34
    return-object v8

    :catchall_35
    move-exception v0

    move-object p1, v0

    :goto_37
    if-eqz v8, :cond_3c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_3c
    throw p1
.end method

.method public static getFilenameExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 48
    const-string p0, ""

    return-object p0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 493
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .registers 2

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 489
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 497
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2a

    .line 125
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 128
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v1

    .line 131
    :goto_1b
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 123
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "File must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    .line 302
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidExtFilenameChar(C)Z
    .registers 2

    if-eqz p0, :cond_8

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static mkdirs(Ljava/io/File;)V
    .registers 2

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    return-void
.end method

.method public static mkdirs(Ljava/lang/String;)V
    .registers 2

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-void
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .registers 5

    .line 277
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_24

    add-int/lit8 p2, p1, 0x1

    add-int/lit8 v0, p1, 0x2

    .line 280
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p2, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    :goto_22
    or-int/2addr p0, p2

    return p0

    :cond_24
    add-int/lit8 p2, p1, 0x1

    add-int/lit8 v0, p1, 0x2

    .line 284
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    goto :goto_22
.end method

.method public static readToParcel(Ljava/io/File;)Landroid/os/Parcel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object p0

    .line 84
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public static readToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    :goto_a
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    .line 78
    :cond_15
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static renameTo(Ljava/io/File;Ljava/io/File;)Z
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 147
    :try_start_5
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 149
    invoke-static {v0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_d
    move-exception p0

    invoke-static {v0}, Lio/vanta/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    throw p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 155
    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_14

    .line 158
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 160
    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static writeParcelToFile(Landroid/os/Parcel;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x400

    .line 193
    new-array v1, p1, [B

    :goto_e
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_e

    .line 197
    :cond_1a
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public static writeToFile([BLjava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 205
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_34

    .line 206
    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_30

    .line 207
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2b

    .line 208
    :try_start_13
    array-length p0, p0

    int-to-long v6, p0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_28

    .line 211
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    if-eqz v3, :cond_22

    .line 214
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_22
    if-eqz v2, :cond_27

    .line 217
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    :goto_2e
    move-object v1, v8

    goto :goto_38

    :catchall_30
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    goto :goto_38

    :catchall_34
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    move-object v3, v2

    :goto_38
    if-eqz v1, :cond_3d

    .line 211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3d
    if-eqz v3, :cond_42

    .line 214
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_42
    if-eqz v2, :cond_47

    .line 217
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 219
    :cond_47
    throw p0
.end method
