.class public Lio/vanta/fake/service/IPackageManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IPackageManagerProxy$CheckSelfPermission;,
        Lio/vanta/fake/service/IPackageManagerProxy$ShouldShowRequestPermissionRationale;,
        Lio/vanta/fake/service/IPackageManagerProxy$RequestPermissions;,
        Lio/vanta/fake/service/IPackageManagerProxy$DisableIconLoading;,
        Lio/vanta/fake/service/IPackageManagerProxy$SetSplashScreenTheme;,
        Lio/vanta/fake/service/IPackageManagerProxy$CheckPermissionHook;,
        Lio/vanta/fake/service/IPackageManagerProxy$CheckUidPermissionHook;,
        Lio/vanta/fake/service/IPackageManagerProxy$IsAutoRevokeWhitelisted;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetInstallSourceInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$SetHarmfulAppWarning;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetHarmfulAppWarnings;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetHarmfulAppWarning;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetPackageInstaller;,
        Lio/vanta/fake/service/IPackageManagerProxy$getComponentEnabledSetting;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetSharedLibraries;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetInstallerPackageName;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetPackagesForUid;,
        Lio/vanta/fake/service/IPackageManagerProxy$CanRequestPackageInstalls;,
        Lio/vanta/fake/service/IPackageManagerProxy$ResolveContentProvider;,
        Lio/vanta/fake/service/IPackageManagerProxy$QueryBroadcastReceivers;,
        Lio/vanta/fake/service/IPackageManagerProxy$QueryContentProviders;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetApplicationInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetInstalledPackages;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetInstalledApplications;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetServiceInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetActivityInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetReceiverInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetProviderInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetPackageUid;,
        Lio/vanta/fake/service/IPackageManagerProxy$GetPackageInfo;,
        Lio/vanta/fake/service/IPackageManagerProxy$SetComponentEnabledSetting;,
        Lio/vanta/fake/service/IPackageManagerProxy$QueryIntentServices;,
        Lio/vanta/fake/service/IPackageManagerProxy$ResolveService;,
        Lio/vanta/fake/service/IPackageManagerProxy$QueryIntentActivities;,
        Lio/vanta/fake/service/IPackageManagerProxy$ResolveIntent;
    }
.end annotation


# static fields
.field private static final FACEBOOK_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageManagerStub"


# direct methods
.method static bridge synthetic -$$Nest$sfgetFACEBOOK_PACKAGES()Ljava/util/Set;
    .registers 1

    sget-object v0, Lio/vanta/fake/service/IPackageManagerProxy;->FACEBOOK_PACKAGES:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisFacebookAppIntent(Landroid/content/Intent;)Z
    .registers 1

    invoke-static {p0}, Lio/vanta/fake/service/IPackageManagerProxy;->isFacebookAppIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 106
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.facebook.katana"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.facebook.orca"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.facebook.wakizashi"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/vanta/fake/service/IPackageManagerProxy;->FACEBOOK_PACKAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-static {}, Lvanta/android/app/BRActivityThread;->get()Lvanta/android/app/ActivityThreadStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadStatic;->sPackageManager()Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static isAudioPermission(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 580
    :cond_4
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 581
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 582
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_MICROPHONE"

    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION"

    .line 584
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_CAMERA"

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_LOCATION"

    .line 586
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_HEALTH"

    .line 587
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_DATA_SYNC"

    .line 588
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    .line 589
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_SYSTEM_EXEMPTED"

    .line 590
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_PHONE_CALL"

    .line 591
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_CONNECTED_DEVICE"

    .line 592
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    return v0

    :cond_6e
    :goto_6e
    const/4 p0, 0x1

    return p0
.end method

.method private static isFacebookAppIntent(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 113
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 114
    sget-object v3, Lio/vanta/fake/service/IPackageManagerProxy;->FACEBOOK_PACKAGES:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    .line 117
    :cond_14
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 118
    sget-object v1, Lio/vanta/fake/service/IPackageManagerProxy;->FACEBOOK_PACKAGES:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method private static isNotificationOrXiaomiPermission(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 600
    :cond_4
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 605
    :cond_e
    const-string v1, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.OPTIMIZE_POWER"

    .line 606
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.RUN_IN_BACKGROUND"

    .line 607
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.POST_NOTIFICATIONS"

    .line 608
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.AUTO_START"

    .line 609
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.BACKGROUND_POPUP_WINDOW"

    .line 610
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.SHOW_WHEN_LOCKED"

    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "miui.permission.TURN_SCREEN_ON"

    .line 612
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    return v0

    :cond_50
    :goto_50
    return v2
.end method

.method private static isStorageOrMediaPermission(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 553
    :cond_4
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_71

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 554
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_71

    .line 558
    :cond_16
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 559
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 560
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VISUAL"

    .line 561
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_AURAL"

    .line 562
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 563
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_71

    .line 567
    :cond_47
    const-string v1, "android.permission.READ_MEDIA_AUDIO_USER_SELECTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VIDEO_USER_SELECTED"

    .line 568
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_IMAGES_USER_SELECTED"

    .line 569
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 570
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_AURAL_USER_SELECTED"

    .line 571
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    goto :goto_71

    :cond_70
    return v0

    :cond_71
    :goto_71
    return v2
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-static {}, Lvanta/android/app/BRActivityThread;->get()Lvanta/android/app/ActivityThreadStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadStatic;->sPackageManager()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 51
    invoke-static {}, Lvanta/android/app/BRActivityThread;->get()Lvanta/android/app/ActivityThreadStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/android/app/ActivityThreadStatic;->_set_sPackageManager(Ljava/lang/Object;)V

    .line 52
    const-string p1, "package"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IPackageManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityThreadContext;->getSystemContext()Ljava/lang/Object;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ContextImplContext;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    invoke-static {p1}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ContextImplContext;->mPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 57
    invoke-static {}, Lvanta/android/content/pm/BRPackageManager;->get()Lvanta/android/content/pm/PackageManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/pm/PackageManagerStatic;->disableApplicationInfoCache()Ljava/lang/Void;

    .line 59
    :try_start_30
    const-string v0, "android.app.ApplicationPackageManager"

    invoke-static {v0}, Lio/vanta/utils/Reflector;->on(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    const-string v1, "mPM"

    .line 60
    invoke-virtual {v0, v1}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1, p2}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/vanta/utils/Reflector;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "checkPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "checkUidPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_14
    if-eqz p3, :cond_41

    .line 91
    array-length v0, p3

    if-lez v0, :cond_41

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-static {v1}, Lio/vanta/fake/service/IPermissionManagerProxy;->isForceGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IPackageManagerProxy.invoke force-granting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManagerStub"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 99
    :cond_41
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 4

    .line 75
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 76
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "addOnPermissionsChangeListener"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 77
    new-instance v0, Lio/vanta/fake/service/base/ValueMethodProxy;

    const-string v2, "removeOnPermissionsChangeListener"

    invoke-direct {v0, v2, v1}, Lio/vanta/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 78
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$CheckSelfPermission;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$CheckSelfPermission;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 79
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$ShouldShowRequestPermissionRationale;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$ShouldShowRequestPermissionRationale;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 80
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$RequestPermissions;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$RequestPermissions;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 81
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$DisableIconLoading;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$DisableIconLoading;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 82
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$SetSplashScreenTheme;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$SetSplashScreenTheme;-><init>()V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 83
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$CheckPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$CheckPermissionHook;-><init>()V

    const-string v1, "checkPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    .line 84
    new-instance v0, Lio/vanta/fake/service/IPackageManagerProxy$CheckUidPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IPackageManagerProxy$CheckUidPermissionHook;-><init>()V

    const-string v1, "checkUidPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IPackageManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
