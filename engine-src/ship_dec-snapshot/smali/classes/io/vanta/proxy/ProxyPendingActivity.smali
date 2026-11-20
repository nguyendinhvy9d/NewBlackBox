.class public Lio/vanta/proxy/ProxyPendingActivity;
.super Landroid/app/Activity;
.source "ProxyPendingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/proxy/ProxyPendingActivity$P49;,
        Lio/vanta/proxy/ProxyPendingActivity$P48;,
        Lio/vanta/proxy/ProxyPendingActivity$P47;,
        Lio/vanta/proxy/ProxyPendingActivity$P46;,
        Lio/vanta/proxy/ProxyPendingActivity$P45;,
        Lio/vanta/proxy/ProxyPendingActivity$P44;,
        Lio/vanta/proxy/ProxyPendingActivity$P43;,
        Lio/vanta/proxy/ProxyPendingActivity$P42;,
        Lio/vanta/proxy/ProxyPendingActivity$P41;,
        Lio/vanta/proxy/ProxyPendingActivity$P40;,
        Lio/vanta/proxy/ProxyPendingActivity$P39;,
        Lio/vanta/proxy/ProxyPendingActivity$P38;,
        Lio/vanta/proxy/ProxyPendingActivity$P37;,
        Lio/vanta/proxy/ProxyPendingActivity$P36;,
        Lio/vanta/proxy/ProxyPendingActivity$P35;,
        Lio/vanta/proxy/ProxyPendingActivity$P34;,
        Lio/vanta/proxy/ProxyPendingActivity$P33;,
        Lio/vanta/proxy/ProxyPendingActivity$P32;,
        Lio/vanta/proxy/ProxyPendingActivity$P31;,
        Lio/vanta/proxy/ProxyPendingActivity$P30;,
        Lio/vanta/proxy/ProxyPendingActivity$P29;,
        Lio/vanta/proxy/ProxyPendingActivity$P28;,
        Lio/vanta/proxy/ProxyPendingActivity$P27;,
        Lio/vanta/proxy/ProxyPendingActivity$P26;,
        Lio/vanta/proxy/ProxyPendingActivity$P25;,
        Lio/vanta/proxy/ProxyPendingActivity$P24;,
        Lio/vanta/proxy/ProxyPendingActivity$P23;,
        Lio/vanta/proxy/ProxyPendingActivity$P22;,
        Lio/vanta/proxy/ProxyPendingActivity$P21;,
        Lio/vanta/proxy/ProxyPendingActivity$P20;,
        Lio/vanta/proxy/ProxyPendingActivity$P19;,
        Lio/vanta/proxy/ProxyPendingActivity$P18;,
        Lio/vanta/proxy/ProxyPendingActivity$P17;,
        Lio/vanta/proxy/ProxyPendingActivity$P16;,
        Lio/vanta/proxy/ProxyPendingActivity$P15;,
        Lio/vanta/proxy/ProxyPendingActivity$P14;,
        Lio/vanta/proxy/ProxyPendingActivity$P13;,
        Lio/vanta/proxy/ProxyPendingActivity$P12;,
        Lio/vanta/proxy/ProxyPendingActivity$P11;,
        Lio/vanta/proxy/ProxyPendingActivity$P10;,
        Lio/vanta/proxy/ProxyPendingActivity$P9;,
        Lio/vanta/proxy/ProxyPendingActivity$P8;,
        Lio/vanta/proxy/ProxyPendingActivity$P7;,
        Lio/vanta/proxy/ProxyPendingActivity$P6;,
        Lio/vanta/proxy/ProxyPendingActivity$P5;,
        Lio/vanta/proxy/ProxyPendingActivity$P4;,
        Lio/vanta/proxy/ProxyPendingActivity$P3;,
        Lio/vanta/proxy/ProxyPendingActivity$P2;,
        Lio/vanta/proxy/ProxyPendingActivity$P1;,
        Lio/vanta/proxy/ProxyPendingActivity$P0;
    }
.end annotation


# static fields
.field private static final RELAY_REQUEST_CODE:I = 0x4e6d64

.field public static final TAG:Ljava/lang/String; = "ProxyPendingActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0x4e6d64

    if-ne p1, v0, :cond_0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ProxyPendingActivity onActivityResult resultCode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProxyPendingActivity"

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, p2, p3}, Lio/vanta/proxy/ProxyPendingActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->finish()V

    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 23
    const-string v0, "_B_|_P_target_"

    const-string v1, "_B_|_P_user_id_"

    const-string v2, "_B_|_P_creator_pkg_"

    const-string v3, "_B_|_P_caller_pkg_"

    .line 0
    const-string v4, "ProxyPendingActivity starting target: "

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object v5

    const-class v6, Lio/vanta/fake/service/HCallbackProxy;

    invoke-virtual {v5, v6}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/proxy/record/ProxyPendingRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyPendingRecord;

    move-result-object p1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ProxyPendingActivity onCreate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProxyPendingActivity"

    invoke-static {v6, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 32
    iget-object v5, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mTarget:Landroid/content/Intent;

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iget-object v7, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mTarget:Landroid/content/Intent;

    .line 40
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 41
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 43
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_4

    .line 46
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 49
    :cond_4
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 50
    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual {v8, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v8, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v8, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v8, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 60
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 62
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    :cond_5
    invoke-virtual {v7, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v7, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v7, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v7, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 72
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "com.google.android.gms"

    if-nez v9, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 73
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    :cond_6
    if-nez v9, :cond_7

    .line 75
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 76
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_7
    if-nez v9, :cond_8

    .line 78
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 79
    iget-object v9, p1, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    :cond_8
    if-eqz v9, :cond_9

    .line 83
    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", callerPkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const v0, -0x10000001

    and-int/2addr p1, v0

    invoke-virtual {v7, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p1, 0x4e6d64

    .line 88
    invoke-virtual {p0, v7, p1}, Lio/vanta/proxy/ProxyPendingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start target from ProxyPendingActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-virtual {p0, v5}, Lio/vanta/proxy/ProxyPendingActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->finish()V

    return-void

    .line 33
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyPendingActivity;->finish()V

    return-void
.end method
