.class Lcom/google/android/gms/common/api/Scope$1;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/api/Scope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/high16 v2, -0x10000

    and-int v3, v1, v2

    if-ne v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v1, 0x10

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/2addr v2, v1

    sub-int v3, v2, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Scope;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/Scope;->raw:[I

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method
