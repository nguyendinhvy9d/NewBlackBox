.class public Lio/vanta/entity/pm/InstallOption;
.super Ljava/lang/Object;
.source "InstallOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/vanta/entity/pm/InstallOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_STORAGE:I = 0x2

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_URI_FILE:I = 0x8


# instance fields
.field public flags:I

.field public splitCodePaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lio/vanta/entity/pm/InstallOption$1;

    invoke-direct {v0}, Lio/vanta/entity/pm/InstallOption$1;-><init>()V

    sput-object v0, Lio/vanta/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    return-void
.end method

.method public static installByStorage()Lio/vanta/entity/pm/InstallOption;
    .registers 2

    .line 25
    new-instance v0, Lio/vanta/entity/pm/InstallOption;

    invoke-direct {v0}, Lio/vanta/entity/pm/InstallOption;-><init>()V

    .line 26
    iget v1, v0, Lio/vanta/entity/pm/InstallOption;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lio/vanta/entity/pm/InstallOption;->flags:I

    return-object v0
.end method

.method public static installBySystem()Lio/vanta/entity/pm/InstallOption;
    .registers 2

    .line 19
    new-instance v0, Lio/vanta/entity/pm/InstallOption;

    invoke-direct {v0}, Lio/vanta/entity/pm/InstallOption;-><init>()V

    .line 20
    iget v1, v0, Lio/vanta/entity/pm/InstallOption;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/vanta/entity/pm/InstallOption;->flags:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasSplits()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isFlag(I)Z
    .registers 3

    .line 48
    iget v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public makeUriFile()Lio/vanta/entity/pm/InstallOption;
    .registers 2

    .line 33
    iget v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    return-object p0
.end method

.method public withSplitCodePaths([Ljava/lang/String;)Lio/vanta/entity/pm/InstallOption;
    .registers 2

    .line 39
    iput-object p1, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 58
    iget p2, p0, Lio/vanta/entity/pm/InstallOption;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lio/vanta/entity/pm/InstallOption;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
