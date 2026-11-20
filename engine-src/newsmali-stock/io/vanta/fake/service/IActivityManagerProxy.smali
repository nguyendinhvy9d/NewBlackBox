.class public Lio/vanta/fake/service/IActivityManagerProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionHook;,
        Lio/vanta/fake/service/IActivityManagerProxy$CheckUidPermissionHook;,
        Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionWithTokenHook;,
        Lio/vanta/fake/service/IActivityManagerProxy$updateConfiguration;,
        Lio/vanta/fake/service/IActivityManagerProxy$unregisterUidObserver;,
        Lio/vanta/fake/service/IActivityManagerProxy$registerUidObserver;,
        Lio/vanta/fake/service/IActivityManagerProxy$setRequestedOrientation;,
        Lio/vanta/fake/service/IActivityManagerProxy$SetTaskDescription;,
        Lio/vanta/fake/service/IActivityManagerProxy$checkUriPermission;,
        Lio/vanta/fake/service/IActivityManagerProxy$checkPermission;,
        Lio/vanta/fake/service/IActivityManagerProxy$getCurrentUserId;,
        Lio/vanta/fake/service/IActivityManagerProxy$getCurrentUser;,
        Lio/vanta/fake/service/IActivityManagerProxy$getHistoricalProcessExitReasons;,
        Lio/vanta/fake/service/IActivityManagerProxy$setServiceForeground;,
        Lio/vanta/fake/service/IActivityManagerProxy$GrantUriPermission;,
        Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiver;,
        Lio/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;,
        Lio/vanta/fake/service/IActivityManagerProxy$SendIntentSender;,
        Lio/vanta/fake/service/IActivityManagerProxy$PeekService;,
        Lio/vanta/fake/service/IActivityManagerProxy$PublishService;,
        Lio/vanta/fake/service/IActivityManagerProxy$finishReceiver;,
        Lio/vanta/fake/service/IActivityManagerProxy$unregisterReceiver;,
        Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;,
        Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntentWithFeature;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSenderWithFeature;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSenderWithSourceToken;,
        Lio/vanta/fake/service/IActivityManagerProxy$getUidForIntentSender;,
        Lio/vanta/fake/service/IActivityManagerProxy$getPackageForIntentSender;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetServices;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetRunningAppProcesses;,
        Lio/vanta/fake/service/IActivityManagerProxy$UnbindService;,
        Lio/vanta/fake/service/IActivityManagerProxy$BindIsolatedService;,
        Lio/vanta/fake/service/IActivityManagerProxy$bindServiceInstance;,
        Lio/vanta/fake/service/IActivityManagerProxy$BindService;,
        Lio/vanta/fake/service/IActivityManagerProxy$SetActivityLocusContext;,
        Lio/vanta/fake/service/IActivityManagerProxy$StopServiceToken;,
        Lio/vanta/fake/service/IActivityManagerProxy$StopService;,
        Lio/vanta/fake/service/IActivityManagerProxy$StartService;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetContentProvider;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetUidProcessCapabilities;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetPackageProcessState;,
        Lio/vanta/fake/service/IActivityManagerProxy$GetUidProcessState;
    }
.end annotation

.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManagerStub"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method public static BindServiceCommon(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 538
    const-string v0, "com.google.android.gms"

    const-string v4, "ActivityManagerStub"

    .line 0
    const-string v5, "BindServiceCommon: cannot resolve "

    const-string v6, "[ServiceResolution] bindService: callerVirtualPkg="

    const/4 v7, 0x2

    .line 538
    :try_start_f
    aget-object v8, v3, v7

    check-cast v8, Landroid/content/Intent;

    const/4 v9, 0x3

    .line 539
    aget-object v9, v3, v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x4

    .line 540
    aget-object v11, v3, v10

    check-cast v11, Landroid/app/IServiceConnection;

    if-nez v8, :cond_29

    .line 544
    const-string v0, "BindServiceCommon: Intent is null, proceeding with original call"

    invoke-static {v4, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2c1

    return-object v0

    .line 550
    :cond_29
    :try_start_29
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_42

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    goto :goto_4a

    .line 552
    :cond_42
    const-string v12, "_B_|_target_"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_4f

    if-eqz v12, :cond_4f

    .line 558
    :goto_4a
    :try_start_4a
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 563
    :catchall_4f
    :cond_4f
    const-string v12, "_B_|_UserId"

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_5c

    .line 564
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v12

    .line 566
    :cond_5c
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v13

    .line 567
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v14

    .line 568
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v7

    .line 569
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move/from16 v17, v10

    .line 573
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v10
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_74} :catch_2c1

    const/4 v1, 0x0

    :try_start_75
    invoke-virtual {v10, v8, v1, v9, v12}, Lio/vanta/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 574
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/vanta/core/env/AppSystemEnv;->isOpenPackage(Landroid/content/ComponentName;)Z

    move-result v18

    const/16 v19, 0x1

    if-nez v18, :cond_99

    .line 575
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_96

    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/vanta/core/env/AppSystemEnv;->isOpenPackage(Ljava/lang/String;)Z

    move-result v18
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_93} :catch_2bd

    if-eqz v18, :cond_96

    goto :goto_99

    :cond_96
    move/from16 v18, v1

    goto :goto_9b

    :cond_99
    :goto_99
    move/from16 v18, v19

    :goto_9b
    if-nez v10, :cond_d6

    if-nez v18, :cond_d6

    if-nez v7, :cond_d6

    if-eqz v15, :cond_d6

    if-eqz v13, :cond_d6

    .line 580
    :try_start_a5
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 581
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 582
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 583
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v21, v10

    .line 585
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2, v9, v12}, Lio/vanta/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_d4

    .line 588
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v1

    move-object v1, v13

    goto :goto_db

    :cond_d4
    move-object v1, v13

    goto :goto_d9

    :cond_d6
    move-object/from16 v21, v10

    move-object v1, v14

    :goto_d9
    move-object/from16 v10, v21

    .line 592
    :goto_db
    const-string v2, "BindServiceHook"
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_dd} :catch_2b7

    :try_start_dd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", origPkg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", action="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", component="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", vUserId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", pkgForResolve="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", resolveInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", actuallyBound="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v10, :cond_12f

    if-eqz v18, :cond_12d

    goto :goto_12f

    :cond_12d
    const/4 v3, 0x0

    goto :goto_131

    :cond_12f
    :goto_12f
    move/from16 v3, v19

    :goto_131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_13c} :catch_2af

    if-nez v10, :cond_1ac

    if-nez v18, :cond_1ac

    .line 604
    :try_start_140
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1a8

    .line 605
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1a8

    .line 606
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lio/vanta/core/env/AppSystemEnv;->isOpenPackage(Ljava/lang/String;)Z

    move-result v3
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_168} :catch_1a8

    if-eqz v3, :cond_174

    .line 609
    :try_start_16a
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1aa

    .line 610
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_173} :catch_1aa

    goto :goto_1aa

    .line 612
    :cond_174
    :try_start_174
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v12}, Lio/vanta/VantaCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 613
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 614
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v3, v9, v12}, Lio/vanta/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_18e} :catch_1a8

    if-nez v1, :cond_1a7

    .line 616
    :try_start_190
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v12}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_1a7

    .line 618
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19f} :catch_1a5

    .line 619
    :try_start_19f
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a1} :catch_1a3

    move-object v10, v3

    goto :goto_1a8

    :catch_1a3
    move-object v10, v3

    goto :goto_1a8

    :catch_1a5
    move-object v10, v1

    goto :goto_1a8

    :cond_1a7
    move-object v10, v1

    :catch_1a8
    :cond_1a8
    :goto_1a8
    move/from16 v19, v18

    :catch_1aa
    :cond_1aa
    :goto_1aa
    move/from16 v18, v19

    :cond_1ac
    if-nez v10, :cond_1dc

    if-nez v18, :cond_1dc

    .line 628
    :try_start_1b0
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1dc

    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 629
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.chimera.PersistentApiService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Lio/vanta/fake/frameworks/BPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1dc

    .line 632
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 633
    new-instance v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 634
    iput-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :cond_1dc
    if-nez v10, :cond_224

    if-nez v18, :cond_224

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1f0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1f4

    :cond_1f0
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :goto_1f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inside the virtual environment; failing bind immediately"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 642
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_221

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_212

    goto :goto_221

    .line 644
    :cond_212
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_21a

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_224

    :cond_21a
    const/16 v20, 0x0

    .line 645
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 643
    :cond_221
    :goto_221
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_224
    if-nez v10, :cond_231

    if-eqz v18, :cond_229

    goto :goto_231

    :cond_229
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto/16 :goto_2aa

    .line 650
    :cond_231
    :goto_231
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    if-nez v11, :cond_239

    const/4 v1, 0x0

    goto :goto_23d

    .line 651
    :cond_239
    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 650
    :goto_23d
    invoke-virtual {v0, v8, v1, v9, v12}, Lio/vanta/fake/frameworks/BActivityManager;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v11, :cond_265

    .line 655
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_25f

    if-eqz v10, :cond_25f

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_25f

    .line 656
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 658
    :cond_25f
    invoke-static {v11, v8}, Lio/vanta/fake/delegate/ServiceConnectionDelegate;->createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 659
    aput-object v1, p2, v17

    :cond_265
    if-eqz v0, :cond_295

    .line 663
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_295

    .line 664
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_295

    .line 665
    invoke-static/range {p2 .. p2}, Lio/vanta/fake/service/IActivityManagerProxy;->getFlagsIndex([Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_295

    .line 667
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/vanta/utils/MethodParameterUtils;->toInt(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 669
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    .line 672
    :cond_295
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    if-eqz v0, :cond_229

    .line 675
    aput-object v0, p2, v16
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_29f} :catch_2af

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 676
    :try_start_2a5
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 679
    :goto_2aa
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2ae} :catch_2c1

    return-object v0

    :catch_2af
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_2c2

    :catch_2b7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_2c2

    :catch_2bd
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2c2

    :catch_2c1
    move-exception v0

    .line 681
    :goto_2c2
    const-string v5, "BindServiceCommon: Unexpected error"

    invoke-static {v4, v5, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getFlagsIndex([Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x5

    .line 688
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 689
    aget-object v1, p0, v0

    .line 690
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_12

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_f

    goto :goto_12

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    :goto_12
    return v0

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method private static isAudioPermission(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1135
    :cond_4
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1136
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 1137
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_MICROPHONE"

    .line 1138
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION"

    .line 1139
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_CAMERA"

    .line 1140
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_LOCATION"

    .line 1141
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_HEALTH"

    .line 1142
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_DATA_SYNC"

    .line 1143
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    .line 1144
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_SYSTEM_EXEMPTED"

    .line 1145
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_PHONE_CALL"

    .line 1146
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.permission.FOREGROUND_SERVICE_CONNECTED_DEVICE"

    .line 1147
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

.method private static isStorageOrMediaPermission(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1161
    :cond_4
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_71

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1162
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_71

    .line 1165
    :cond_16
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 1166
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 1167
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VISUAL"

    .line 1168
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_AURAL"

    .line 1169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 1170
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_71

    .line 1173
    :cond_47
    const-string v1, "android.permission.READ_MEDIA_AUDIO_USER_SELECTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VIDEO_USER_SELECTED"

    .line 1174
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_IMAGES_USER_SELECTED"

    .line 1175
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 1176
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "android.permission.READ_MEDIA_AURAL_USER_SELECTED"

    .line 1177
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

    .line 75
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    invoke-static {}, Lvanta/android/app/BRActivityManagerOreo;->get()Lvanta/android/app/ActivityManagerOreoStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityManagerOreoStatic;->IActivityManagerSingleton()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    .line 77
    :cond_f
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 78
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityManagerNativeStatic;->gDefault()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 80
    :goto_1f
    invoke-static {v0}, Lvanta/android/util/BRSingleton;->get(Ljava/lang/Object;)Lvanta/android/util/SingletonContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/util/SingletonContext;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 86
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 87
    invoke-static {}, Lvanta/android/app/BRActivityManagerOreo;->get()Lvanta/android/app/ActivityManagerOreoStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityManagerOreoStatic;->IActivityManagerSingleton()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1f

    .line 88
    :cond_f
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isL()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 89
    invoke-static {}, Lvanta/android/app/BRActivityManagerNative;->get()Lvanta/android/app/ActivityManagerNativeStatic;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/app/ActivityManagerNativeStatic;->gDefault()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 91
    :goto_1f
    invoke-static {p1}, Lvanta/android/util/BRSingleton;->get(Ljava/lang/Object;)Lvanta/android/util/SingletonContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "checkPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ActivityManagerStub"

    const/4 v3, 0x0

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v1, :cond_23

    .line 113
    const-string v1, "checkUidPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "checkPermissionWithToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_23
    if-eqz p3, :cond_49

    .line 114
    array-length v1, p3

    if-lez v1, :cond_49

    aget-object v1, p3, v3

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_49

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lio/vanta/fake/service/IPermissionManagerProxy;->isForceGranted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IActivityManagerProxy.invoke force-granting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 123
    :cond_49
    :try_start_49
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_4d} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4e

    return-object p1

    :catch_4e
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ActivityManager invoke: Unexpected error in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_6a
    move-exception p1

    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "ActivityManager invoke: SecurityException in "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", returning safe default"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 127
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_14d

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_91

    goto/16 :goto_14d

    .line 129
    :cond_91
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_14a

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_9b

    goto/16 :goto_14a

    .line 131
    :cond_9b
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_143

    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_a5

    goto/16 :goto_143

    .line 133
    :cond_a5
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_13d

    const-class p2, Ljava/lang/Float;

    if-ne p1, p2, :cond_af

    goto/16 :goto_13d

    .line 135
    :cond_af
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_136

    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_b9

    goto/16 :goto_136

    .line 137
    :cond_b9
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_131

    const-class p2, Ljava/lang/Byte;

    if-ne p1, p2, :cond_c3

    goto/16 :goto_131

    .line 139
    :cond_c3
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_12c

    const-class p2, Ljava/lang/Short;

    if-ne p1, p2, :cond_cc

    goto :goto_12c

    .line 141
    :cond_cc
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_127

    const-class p2, Ljava/lang/Character;

    if-ne p1, p2, :cond_d5

    goto :goto_127

    .line 144
    :cond_d5
    const-string p1, "set"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_126

    const-string p1, "update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e7

    goto :goto_126

    .line 146
    :cond_e7
    const-string p1, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_126

    const-string p1, "query"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f8

    goto :goto_126

    .line 148
    :cond_f8
    const-string p1, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_121

    const-string p1, "bind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_109

    goto :goto_121

    .line 150
    :cond_109
    const-string p1, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11b

    const-string p1, "unbind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11a

    goto :goto_11b

    :cond_11a
    return-object p2

    :cond_11b
    :goto_11b
    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 149
    :cond_121
    :goto_121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_126
    :goto_126
    return-object p2

    .line 142
    :cond_127
    :goto_127
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 140
    :cond_12c
    :goto_12c
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 138
    :cond_131
    :goto_131
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_136
    :goto_136
    const-wide/16 p1, 0x0

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_13d
    :goto_13d
    const/4 p1, 0x0

    .line 134
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_143
    :goto_143
    const-wide/16 p1, 0x0

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 130
    :cond_14a
    :goto_14a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_14d
    :goto_14d
    return-object v4
.end method

.method public isBadEnv()Z
    .registers 3

    .line 96
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy;->getWho()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 3

    .line 101
    invoke-super {p0}, Lio/vanta/fake/hook/ClassInvocationStub;->onBindMethod()V

    .line 102
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "getAppStartMode"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 103
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "setAppLockedVerifying"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 104
    new-instance v0, Lio/vanta/fake/service/base/PkgMethodProxy;

    const-string v1, "reportJunkFromApp"

    invoke-direct {v0, v1}, Lio/vanta/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Lio/vanta/fake/hook/MethodHook;)V

    .line 105
    new-instance v0, Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionHook;-><init>()V

    const-string v1, "checkPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    .line 106
    new-instance v0, Lio/vanta/fake/service/IActivityManagerProxy$CheckUidPermissionHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IActivityManagerProxy$CheckUidPermissionHook;-><init>()V

    const-string v1, "checkUidPermission"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    .line 107
    new-instance v0, Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionWithTokenHook;

    invoke-direct {v0}, Lio/vanta/fake/service/IActivityManagerProxy$CheckPermissionWithTokenHook;-><init>()V

    const-string v1, "checkPermissionWithToken"

    invoke-virtual {p0, v1, v0}, Lio/vanta/fake/service/IActivityManagerProxy;->addMethodHook(Ljava/lang/String;Lio/vanta/fake/hook/MethodHook;)V

    return-void
.end method
