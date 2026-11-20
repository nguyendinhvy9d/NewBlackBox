.class public Lio/vanta/core/system/location/LocationRecord;
.super Ljava/lang/Object;
.source "LocationRecord.java"


# instance fields
.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/vanta/core/system/location/LocationRecord;->packageName:Ljava/lang/String;

    .line 10
    iput p2, p0, Lio/vanta/core/system/location/LocationRecord;->userId:I

    return-void
.end method
