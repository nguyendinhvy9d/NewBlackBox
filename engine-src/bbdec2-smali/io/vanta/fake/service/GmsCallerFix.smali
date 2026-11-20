.class public Lio/vanta/fake/service/GmsCallerFix;
.super Ljava/lang/Object;
.source "GmsCallerFix.java"


# XjangJu: tra goi GUEST cua caller hien tai (theo PID) de GMS nhan dung app clone.
# Boc try/catch: loi -> tra null (hook ve logic cu, khong te hon).
.method public static callerPkg()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_cross

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_cross
    invoke-static {}, Lio/vanta/fake/frameworks/BActivityManager;->get()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/vanta/fake/frameworks/BActivityManager;->getRunningAppProcesses(Ljava/lang/String;I)Lio/vanta/entity/am/RunningAppProcessInfo;

    move-result-object v1

    if-eqz v1, :cond_null

    iget-object v1, v1, Lio/vanta/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    if-eqz v1, :cond_null

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_null

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :goto_loop

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_null

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_nostrip

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_nostrip
    return-object v2

    :cond_null
    const/4 v0, 0x0

    return-object v0
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    :catchall_40
    const/4 v0, 0x0

    return-object v0
.end method


# XjangJu: tra TOAN BO goi guest da cai cho user (goi caller dung dau), de check
# membership cua GMS pass va de bind service tim duoc goi GMS. null -> hook ve cu.
.method public static uidPkgs()[Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Lio/vanta/fake/service/GmsCallerFix;->callerPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/vanta/fake/frameworks/BPackageManager;->get()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_nocaller

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_nocaller
    if-eqz v1, :cond_done

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :goto_loop

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :goto_loop

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_loop

    :cond_done
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fail

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    :cond_fail
    const/4 v0, 0x0

    return-object v0
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    :catchall_40
    const/4 v0, 0x0

    return-object v0
.end method
