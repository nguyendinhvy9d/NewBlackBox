.class public Lio/vanta/utils/TransactionThrottler;
.super Ljava/lang/Object;
.source "TransactionThrottler.java"


# static fields
.field private static final MAX_FAILURES_PER_WINDOW:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TransactionThrottler"

.field private static final THROTTLE_DURATION_MS:J = 0x3e8L

.field private static final WINDOW_DURATION_MS:J = 0x3a98L


# instance fields
.field private final failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastThrottleTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/vanta/utils/TransactionThrottler;->lastThrottleTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getFailureCount()I
    .registers 2

    .line 79
    iget-object v0, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public recordFailure()V
    .registers 7

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 55
    iget-object v4, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_15
    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_29

    .line 60
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 61
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_2e

    .line 63
    :cond_29
    iget-object v0, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 66
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recorded transaction failure, count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransactionThrottler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .registers 4

    .line 71
    iget-object v0, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 72
    iget-object v0, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 73
    iget-object v0, p0, Lio/vanta/utils/TransactionThrottler;->lastThrottleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 74
    const-string v0, "TransactionThrottler"

    const-string v1, "Reset transaction throttler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldThrottle()Z
    .registers 9

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    .line 27
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->windowStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v3

    .line 33
    :cond_1e
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->lastThrottleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    const/4 v4, 0x1

    if-gez v2, :cond_2e

    return v4

    .line 39
    :cond_2e
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v5, 0x32

    if-lt v2, v5, :cond_5e

    .line 40
    iget-object v2, p0, Lio/vanta/utils/TransactionThrottler;->lastThrottleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Throttling transactions due to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/utils/TransactionThrottler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failures in window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransactionThrottler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5e
    return v3
.end method
