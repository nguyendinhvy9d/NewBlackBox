.class Lio/vanta/entity/am/PendingResultData$1;
.super Ljava/lang/Object;
.source "PendingResultData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/entity/am/PendingResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/vanta/entity/am/PendingResultData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/vanta/entity/am/PendingResultData;
    .locals 1

    .line 130
    new-instance v0, Lio/vanta/entity/am/PendingResultData;

    invoke-direct {v0, p1}, Lio/vanta/entity/am/PendingResultData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lio/vanta/entity/am/PendingResultData$1;->createFromParcel(Landroid/os/Parcel;)Lio/vanta/entity/am/PendingResultData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/vanta/entity/am/PendingResultData;
    .locals 0

    .line 135
    new-array p1, p1, [Lio/vanta/entity/am/PendingResultData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lio/vanta/entity/am/PendingResultData$1;->newArray(I)[Lio/vanta/entity/am/PendingResultData;

    move-result-object p1

    return-object p1
.end method
