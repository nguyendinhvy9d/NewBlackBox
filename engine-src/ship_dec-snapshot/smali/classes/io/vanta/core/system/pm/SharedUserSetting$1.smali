.class Lio/vanta/core/system/pm/SharedUserSetting$1;
.super Ljava/lang/Object;
.source "SharedUserSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/SharedUserSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/vanta/core/system/pm/SharedUserSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/vanta/core/system/pm/SharedUserSetting;
    .locals 1

    .line 128
    new-instance v0, Lio/vanta/core/system/pm/SharedUserSetting;

    invoke-direct {v0}, Lio/vanta/core/system/pm/SharedUserSetting;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Lio/vanta/core/system/pm/SharedUserSetting;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/SharedUserSetting$1;->createFromParcel(Landroid/os/Parcel;)Lio/vanta/core/system/pm/SharedUserSetting;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/vanta/core/system/pm/SharedUserSetting;
    .locals 0

    .line 135
    new-array p1, p1, [Lio/vanta/core/system/pm/SharedUserSetting;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lio/vanta/core/system/pm/SharedUserSetting$1;->newArray(I)[Lio/vanta/core/system/pm/SharedUserSetting;

    move-result-object p1

    return-object p1
.end method
