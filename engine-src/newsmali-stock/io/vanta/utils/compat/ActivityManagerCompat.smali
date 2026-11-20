.class public Lio/vanta/utils/compat/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# static fields
.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final START_FLAG_TRACK_ALLOCATION:I = 0x4

.field public static final USER_OP_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .registers 5

    .line 67
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRIActivityManagerN;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerNContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lvanta/android/app/IActivityManagerNContext;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setActivityOrientation(Landroid/app/Activity;I)V
    .registers 3

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    invoke-static {p0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/app/ActivityContext;->mParent()Landroid/app/Activity;

    move-result-object p0

    .line 85
    :goto_10
    invoke-static {p0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityContext;->mParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-object p0, v0

    goto :goto_10

    .line 92
    :cond_1c
    invoke-static {p0}, Lvanta/android/app/BRActivity;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/app/ActivityContext;->mToken()Landroid/os/IBinder;

    move-result-object p0

    .line 94
    :try_start_24
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v0

    invoke-static {v0}, Lvanta/android/app/BRIActivityManager;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContext;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lvanta/android/app/IActivityManagerContext;->setRequestedOrientation(Landroid/os/IBinder;I)Ljava/lang/Void;
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return-void
.end method
