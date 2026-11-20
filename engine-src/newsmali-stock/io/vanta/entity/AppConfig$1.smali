.class Lio/vanta/entity/AppConfig$1;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/entity/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/vanta/entity/AppConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/vanta/entity/AppConfig;
    .registers 3

    .line 55
    new-instance v0, Lio/vanta/entity/AppConfig;

    invoke-direct {v0, p1}, Lio/vanta/entity/AppConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lio/vanta/entity/AppConfig$1;->createFromParcel(Landroid/os/Parcel;)Lio/vanta/entity/AppConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/vanta/entity/AppConfig;
    .registers 2

    .line 60
    new-array p1, p1, [Lio/vanta/entity/AppConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lio/vanta/entity/AppConfig$1;->newArray(I)[Lio/vanta/entity/AppConfig;

    move-result-object p1

    return-object p1
.end method
