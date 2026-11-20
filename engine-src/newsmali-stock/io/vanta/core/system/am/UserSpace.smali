.class public Lio/vanta/core/system/am/UserSpace;
.super Ljava/lang/Object;
.source "UserSpace.java"


# instance fields
.field public final mActiveServices:Lio/vanta/core/system/am/ActiveServices;

.field public final mIntentSenderRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lio/vanta/core/system/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mStack:Lio/vanta/core/system/am/ActivityStack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lio/vanta/core/system/am/ActiveServices;

    invoke-direct {v0}, Lio/vanta/core/system/am/ActiveServices;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/UserSpace;->mActiveServices:Lio/vanta/core/system/am/ActiveServices;

    .line 11
    new-instance v0, Lio/vanta/core/system/am/ActivityStack;

    invoke-direct {v0}, Lio/vanta/core/system/am/ActivityStack;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/UserSpace;->mStack:Lio/vanta/core/system/am/ActivityStack;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    return-void
.end method
