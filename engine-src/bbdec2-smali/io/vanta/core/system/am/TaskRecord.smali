.class public Lio/vanta/core/system/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# instance fields
.field public final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/vanta/core/system/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public rootIntent:Landroid/content/Intent;

.field public taskAffinity:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    .line 17
    iput p1, p0, Lio/vanta/core/system/am/TaskRecord;->id:I

    .line 18
    iput p2, p0, Lio/vanta/core/system/am/TaskRecord;->userId:I

    .line 19
    iput-object p3, p0, Lio/vanta/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addTopActivity(Lio/vanta/core/system/am/ActivityRecord;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTopActivityRecord()Lio/vanta/core/system/am/ActivityRecord;
    .registers 4

    .line 40
    iget-object v0, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 41
    iget-object v1, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/ActivityRecord;

    .line 42
    iget-boolean v2, v1, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    if-nez v2, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public needNewTask()Z
    .registers 3

    .line 23
    iget-object v0, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/am/ActivityRecord;

    .line 24
    iget-boolean v1, v1, Lio/vanta/core/system/am/ActivityRecord;->finished:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public removeActivity(Lio/vanta/core/system/am/ActivityRecord;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lio/vanta/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
