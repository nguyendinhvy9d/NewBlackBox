.class public Lio/vanta/core/system/am/PendingIntentRecord;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# instance fields
.field public packageName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 13
    :cond_4
    instance-of v1, p1, Lio/vanta/core/system/am/PendingIntentRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 14
    :cond_a
    check-cast p1, Lio/vanta/core/system/am/PendingIntentRecord;

    .line 15
    iget v1, p0, Lio/vanta/core/system/am/PendingIntentRecord;->uid:I

    iget v3, p1, Lio/vanta/core/system/am/PendingIntentRecord;->uid:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lio/vanta/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lio/vanta/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    .line 16
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 21
    iget v0, p0, Lio/vanta/core/system/am/PendingIntentRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
