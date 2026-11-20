.class public Lio/vanta/utils/Reflector$QuietReflector;
.super Lio/vanta/utils/Reflector;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuietReflector"
.end annotation


# instance fields
.field protected mIgnored:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lio/vanta/utils/Reflector;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector$QuietReflector;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Throwable;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/vanta/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 247
    new-instance v0, Lio/vanta/utils/Reflector$QuietReflector;

    invoke-direct {v0}, Lio/vanta/utils/Reflector$QuietReflector;-><init>()V

    .line 248
    iput-object p0, v0, Lio/vanta/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    .line 249
    iput-object p1, v0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 2

    .line 224
    const-class v0, Lio/vanta/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    .line 228
    const-class v0, Lio/vanta/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    const/4 v0, 0x0

    .line 234
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    invoke-static {p0, v0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 238
    :goto_0
    invoke-static {v0, p1}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 255
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/vanta/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/vanta/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 313
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 315
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 423
    :cond_0
    :try_start_0
    iput-object v1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 424
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 426
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 438
    :cond_0
    :try_start_0
    iput-object v1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 439
    invoke-super {p0, p1, p2}, Lio/vanta/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 441
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 283
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->constructor([Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 285
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic constructor([Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector$QuietReflector;->constructor([Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public field(Ljava/lang/String;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 333
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 334
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 336
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic field(Ljava/lang/String;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 348
    :cond_0
    :try_start_0
    iput-object v1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 349
    invoke-super {p0}, Lio/vanta/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 351
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 363
    :cond_0
    :try_start_0
    iput-object v1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 364
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 366
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public getIgnored()Ljava/lang/Throwable;
    .locals 1

    .line 265
    iget-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/vanta/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 408
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 409
    invoke-super {p0, p1, p2}, Lio/vanta/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 411
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1, p2}, Lio/vanta/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 297
    :cond_0
    :try_start_0
    iput-object v1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 298
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 300
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public set(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 379
    invoke-super {p0, p1}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 381
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 393
    :try_start_0
    iput-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 394
    invoke-super {p0, p1, p2}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 396
    iput-object p1, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lio/vanta/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1, p2}, Lio/vanta/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method protected skip()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected skipAlways()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lio/vanta/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unbind()Lio/vanta/utils/Reflector$QuietReflector;
    .locals 0

    .line 323
    invoke-super {p0}, Lio/vanta/utils/Reflector;->unbind()Lio/vanta/utils/Reflector;

    return-object p0
.end method

.method public bridge synthetic unbind()Lio/vanta/utils/Reflector;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lio/vanta/utils/Reflector$QuietReflector;->unbind()Lio/vanta/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method
