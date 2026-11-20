.class Lio/vanta/core/system/pm/BPackage$IntentInfo$1;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/BPackage$IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/vanta/core/system/pm/BPackage$IntentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/vanta/core/system/pm/BPackage$IntentInfo;
    .registers 3

    .line 535
    new-instance v0, Lio/vanta/core/system/pm/BPackage$IntentInfo;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 532
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo$1;->createFromParcel(Landroid/os/Parcel;)Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;
    .registers 2

    .line 540
    new-array p1, p1, [Lio/vanta/core/system/pm/BPackage$IntentInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 532
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo$1;->newArray(I)[Lio/vanta/core/system/pm/BPackage$IntentInfo;

    move-result-object p1

    return-object p1
.end method
