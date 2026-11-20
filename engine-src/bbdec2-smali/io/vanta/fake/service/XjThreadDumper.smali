.class public Lio/vanta/fake/service/XjThreadDumper;
.super Ljava/lang/Object;
.source "XjThreadDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/vanta/fake/service/XjThreadDumper;

    invoke-direct {v1}, Lio/vanta/fake/service/XjThreadDumper;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v0, "XJDUMP"

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0xa

    if-ge v1, v2, :cond_90

    :try_start_7
    const-wide/32 v2, 0x4e20

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_8b

    const-string v2, "===== XJDUMP round ====="

    invoke-static {v0, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "main"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    sget-object v6, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-eq v5, v6, :cond_1e

    array-length v6, v3

    const/4 v7, 0x6

    if-lt v6, v7, :cond_1e

    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_6d
    array-length v7, v3

    const/16 v8, 0x19

    if-ge v7, v8, :cond_73

    goto :goto_74

    :cond_73
    move v7, v8

    :goto_74
    if-ge v5, v7, :cond_83

    const-string v8, "\n  at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    :cond_83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catchall_8b
    move-exception v2

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_90
    return-void
.end method
