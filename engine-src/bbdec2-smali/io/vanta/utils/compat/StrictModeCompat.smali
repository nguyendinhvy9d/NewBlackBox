.class public Lio/vanta/utils/compat/StrictModeCompat;
.super Ljava/lang/Object;
.source "StrictModeCompat.java"


# static fields
.field public static DETECT_VM_FILE_URI_EXPOSURE:I

.field public static PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/StrictModeStatic;->DETECT_VM_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/StrictModeStatic;->DETECT_VM_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    sput v0, Lio/vanta/utils/compat/StrictModeCompat;->DETECT_VM_FILE_URI_EXPOSURE:I

    .line 9
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/StrictModeStatic;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/high16 v0, 0x4000000

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/os/StrictModeStatic;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    sput v0, Lio/vanta/utils/compat/StrictModeCompat;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableDeathOnFileUriExposure()Z
    .locals 4

    const/4 v0, 0x1

    .line 14
    :try_start_0
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v1

    invoke-interface {v1}, Lvanta/android/os/StrictModeStatic;->disableDeathOnFileUriExposure()Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 18
    :catchall_0
    :try_start_1
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v1

    invoke-interface {v1}, Lvanta/android/os/StrictModeStatic;->sVmPolicyMask()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    sget v2, Lio/vanta/utils/compat/StrictModeCompat;->DETECT_VM_FILE_URI_EXPOSURE:I

    sget v3, Lio/vanta/utils/compat/StrictModeCompat;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I

    or-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    .line 20
    invoke-static {}, Lvanta/android/os/BRStrictMode;->get()Lvanta/android/os/StrictModeStatic;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lvanta/android/os/StrictModeStatic;->_set_sVmPolicyMask(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
