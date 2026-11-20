.class public final Lio/vanta/core/system/user/BUserHandle;
.super Ljava/lang/Object;
.source "BUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AID_APP_END:I = 0x4e1f

.field public static final AID_APP_START:I = 0x2710

.field public static final AID_CACHE_GID_START:I = 0x4e20

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHARED_GID_START:I = 0xc350

.field public static final ALL:Lio/vanta/core/system/user/BUserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/vanta/core/system/user/BUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Lio/vanta/core/system/user/BUserHandle;

.field public static final CURRENT_OR_SELF:Lio/vanta/core/system/user/BUserHandle;

.field public static final ERR_GID:I = -0x1

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Lio/vanta/core/system/user/BUserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Lio/vanta/core/system/user/BUserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SERIAL_SYSTEM:I

.field public static final USER_SYSTEM:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->ALL:Lio/vanta/core/system/user/BUserHandle;

    .line 27
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->CURRENT:Lio/vanta/core/system/user/BUserHandle;

    .line 36
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->CURRENT_OR_SELF:Lio/vanta/core/system/user/BUserHandle;

    .line 47
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->OWNER:Lio/vanta/core/system/user/BUserHandle;

    .line 56
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    invoke-direct {v0, v1}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->SYSTEM:Lio/vanta/core/system/user/BUserHandle;

    .line 282
    new-instance v0, Lio/vanta/core/system/user/BUserHandle$1;

    invoke-direct {v0}, Lio/vanta/core/system/user/BUserHandle$1;-><init>()V

    sput-object v0, Lio/vanta/core/system/user/BUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public static getAppId(I)I
    .locals 1

    const v0, 0x186a0

    .line 146
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getCacheAppGid(I)I
    .locals 1

    .line 182
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Lio/vanta/core/system/user/BUserHandle;->getCacheAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getCacheAppGid(II)I
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    add-int/lit16 p1, p1, 0x2710

    .line 188
    invoke-static {p0, p1}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCallingAppId()I
    .locals 1

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(I)I
    .locals 1

    .line 156
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Lio/vanta/core/system/user/BUserHandle;->getSharedAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getSharedAppGid(II)I
    .locals 1

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    const p0, -0x9c40

    sub-int/2addr p1, p0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getUid(II)I
    .locals 1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    .line 138
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserGid(I)I
    .locals 1

    const/16 v0, 0x270d

    .line 151
    invoke-static {p0, v0}, Lio/vanta/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static getUserHandleForUid(I)Lio/vanta/core/system/user/BUserHandle;
    .locals 0

    .line 108
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->of(I)Lio/vanta/core/system/user/BUserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(I)I
    .locals 1

    const v0, 0x186a0

    .line 114
    div-int/2addr p0, v0

    return p0
.end method

.method public static isApp(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 89
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isCore(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 99
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isSameApp(II)Z
    .locals 0

    .line 83
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Lio/vanta/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameUser(II)Z
    .locals 0

    .line 78
    invoke-static {p0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static myUserId()I
    .locals 1

    .line 213
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lio/vanta/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Lio/vanta/core/system/user/BUserHandle;
    .locals 1

    if-nez p0, :cond_0

    .line 132
    sget-object p0, Lio/vanta/core/system/user/BUserHandle;->SYSTEM:Lio/vanta/core/system/user/BUserHandle;

    return-object p0

    :cond_0
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    return-object v0
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .locals 3

    .line 197
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 199
    :cond_0
    const-string v0, "current"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 205
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad user number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, -0x2

    return p0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lio/vanta/core/system/user/BUserHandle;
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 279
    new-instance v0, Lio/vanta/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Lio/vanta/core/system/user/BUserHandle;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeToParcel(Lio/vanta/core/system/user/BUserHandle;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, p1, v0}, Lio/vanta/core/system/user/BUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    const/16 p0, -0x2710

    .line 272
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 246
    :try_start_0
    check-cast p1, Lio/vanta/core/system/user/BUserHandle;

    .line 247
    iget v1, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    iget p1, p1, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 234
    iget v0, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 256
    iget v0, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    return v0
.end method

.method public isOwner()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    sget-object v0, Lio/vanta/core/system/user/BUserHandle;->OWNER:Lio/vanta/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Lio/vanta/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 224
    sget-object v0, Lio/vanta/core/system/user/BUserHandle;->SYSTEM:Lio/vanta/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Lio/vanta/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserHandle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 264
    iget p2, p0, Lio/vanta/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
