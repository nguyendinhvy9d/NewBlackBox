.class public Lio/vanta/utils/compat/ContentProviderCompat;
.super Ljava/lang/Object;
.source "ContentProviderCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireContentProviderClient(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static acquireContentProviderClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    return-object p0
.end method

.method public static acquireContentProviderClientRetry(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/ContentProviderClient;
    .locals 8

    .line 45
    invoke-static {p0, p1}, Lio/vanta/utils/compat/ContentProviderCompat;->acquireContentProviderClient(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0xc8

    .line 57
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    .line 59
    invoke-static {p0, p1}, Lio/vanta/utils/compat/ContentProviderCompat;->acquireContentProviderClient(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static acquireContentProviderClientRetry(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ContentProviderClient;
    .locals 8

    .line 66
    invoke-static {p0, p1}, Lio/vanta/utils/compat/ContentProviderCompat;->acquireContentProviderClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0xc8

    .line 78
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    .line 80
    invoke-static {p0, p1}, Lio/vanta/utils/compat/ContentProviderCompat;->acquireContentProviderClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p5}, Lio/vanta/utils/compat/ContentProviderCompat;->acquireContentProviderClientRetry(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 27
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lio/vanta/utils/compat/ContentProviderCompat;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1

    .line 25
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/IllegalAccessException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p0}, Lio/vanta/utils/compat/ContentProviderCompat;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 28
    throw p1
.end method

.method private static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
