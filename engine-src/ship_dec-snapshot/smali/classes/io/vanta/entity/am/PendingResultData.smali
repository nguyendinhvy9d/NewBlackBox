.class public Lio/vanta/entity/am/PendingResultData;
.super Ljava/lang/Object;
.source "PendingResultData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/vanta/entity/am/PendingResultData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAbortBroadcast:Z

.field public mBToken:Ljava/lang/String;

.field public mFinished:Z

.field public mFlags:I

.field public mInitialStickyHint:Z

.field public mOrderedHint:Z

.field public mResultCode:I

.field public mResultData:Ljava/lang/String;

.field public mResultExtras:Landroid/os/Bundle;

.field public mSendingUser:I

.field public mToken:Landroid/os/IBinder;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lio/vanta/entity/am/PendingResultData$1;

    invoke-direct {v0}, Lio/vanta/entity/am/PendingResultData$1;-><init>()V

    sput-object v0, Lio/vanta/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p1}, Lvanta/android/content/BRBroadcastReceiverPendingResultM;->get(Ljava/lang/Object;)Lvanta/android/content/BroadcastReceiverPendingResultMContext;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    .line 44
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mOrderedHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    .line 45
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mInitialStickyHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 46
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 47
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mSendingUser()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    .line 48
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mFlags()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    .line 49
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mResultData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mResultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 51
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mAbortBroadcast()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 52
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultMContext;->mFinished()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    return-void

    .line 54
    :cond_1
    invoke-static {p1}, Lvanta/android/content/BRBroadcastReceiverPendingResult;->get(Ljava/lang/Object;)Lvanta/android/content/BroadcastReceiverPendingResultContext;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    .line 56
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mOrderedHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    .line 57
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mInitialStickyHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 58
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 59
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mSendingUser()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    .line 60
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mResultData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mResultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 62
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mAbortBroadcast()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 63
    invoke-interface {p1}, Lvanta/android/content/BroadcastReceiverPendingResultContext;->mFinished()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 11

    .line 68
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lvanta/android/content/BRBroadcastReceiverPendingResultM;->get()Lvanta/android/content/BroadcastReceiverPendingResultMStatic;

    move-result-object v1

    iget v2, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    iget-object v3, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    iget v5, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    iget-boolean v6, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    iget-boolean v7, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    iget-object v8, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    iget v9, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    iget v10, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    invoke-interface/range {v1 .. v10}, Lvanta/android/content/BroadcastReceiverPendingResultMStatic;->_new(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lvanta/android/content/BRBroadcastReceiverPendingResult;->get()Lvanta/android/content/BroadcastReceiverPendingResultStatic;

    move-result-object v1

    iget v2, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    iget-object v3, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    iget v5, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    iget-boolean v6, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    iget-boolean v7, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    iget-object v8, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    iget v9, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    invoke-interface/range {v1 .. v9}, Lvanta/android/content/BroadcastReceiverPendingResultStatic;->_new(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;I)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingResultData{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderedHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialStickyHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mResultExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAbortBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Lio/vanta/entity/am/PendingResultData;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean p2, p0, Lio/vanta/entity/am/PendingResultData;->mOrderedHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-boolean p2, p0, Lio/vanta/entity/am/PendingResultData;->mInitialStickyHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-object p2, p0, Lio/vanta/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    iget p2, p0, Lio/vanta/entity/am/PendingResultData;->mSendingUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget p2, p0, Lio/vanta/entity/am/PendingResultData;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget p2, p0, Lio/vanta/entity/am/PendingResultData;->mResultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object p2, p0, Lio/vanta/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lio/vanta/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 92
    iget-boolean p2, p0, Lio/vanta/entity/am/PendingResultData;->mAbortBroadcast:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean p2, p0, Lio/vanta/entity/am/PendingResultData;->mFinished:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-object p2, p0, Lio/vanta/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
