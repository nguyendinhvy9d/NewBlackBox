.class public Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivity;
.super Lio/vanta/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivity"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "startActivity"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lio/vanta/fake/service/ActivityManagerCommonProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private getIntent([Ljava/lang/Object;)Landroid/content/Intent;
    .registers 6

    .line 232
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 237
    :goto_9
    aget-object v0, p1, v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_12

    .line 238
    check-cast v0, Landroid/content/Intent;

    return-object v0

    .line 240
    :cond_12
    array-length v0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_22

    aget-object v2, p1, v1

    .line 241
    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_1f

    .line 242
    check-cast v2, Landroid/content/Intent;

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Blocked attempt to install VantaCore app from within Nomad: "

    .line 35
    invoke-static {v3}, Lio/vanta/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v5, p0

    .line 36
    invoke-direct {v5, v3}, Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivity;->getIntent([Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lio/vanta/fake/service/GmsCallerFix;->redirectAddAccountToCell(Landroid/content/Intent;)V

    invoke-static {v8}, Lio/vanta/fake/service/GmsCallerFix;->shouldSkipGoogleServices(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Hook in : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "CommonStub"

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 42
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 46
    :cond_51
    :try_start_51
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 47
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 49
    :cond_62
    const-string v0, "_B_|_target_"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 50
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_6f

    return-object v0

    .line 60
    :catchall_6f
    :cond_6f
    invoke-static {v8}, Lio/vanta/fake/service/CustomTabsRedirectProxy;->isCustomTabsIntent(Landroid/content/Intent;)Z

    move-result v0

    const-string v7, "Failed to collect intent extras: "

    const/16 v9, 0x22

    const/16 v10, 0x80

    const/4 v15, 0x0

    if-eqz v0, :cond_13c

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Chrome Custom Tabs intent detected: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v8}, Lio/vanta/fake/service/CustomTabsRedirectProxy;->convertToRegularBrowserIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_13c

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Converted Custom Tabs to regular browser: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_cb

    .line 68
    :try_start_b2
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_cb

    :catch_b6
    move-exception v0

    .line 70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_cb
    :goto_cb
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    .line 77
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 78
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v13

    .line 74
    invoke-virtual {v0, v11, v10, v12, v13}, Lio/vanta/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_13c

    .line 80
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_13c

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Custom Tabs browser resolved in container: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 83
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v16

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v17

    .line 88
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 89
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v20

    .line 90
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultWho([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 91
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getRequestCode([Ljava/lang/Object;)I

    move-result v22

    .line 92
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getFlags([Ljava/lang/Object;)I

    move-result v23

    .line 93
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getOptions([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v18, v11

    .line 86
    invoke-virtual/range {v16 .. v24}, Lio/vanta/fake/frameworks/BActivityManager;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 94
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 99
    :cond_13c
    invoke-static {v8}, Lio/vanta/fake/service/BrowserRedirectProxy;->isBrowserIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_240

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Browser intent detected: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v8}, Lio/vanta/fake/service/BrowserRedirectProxy;->isTargetingSystemBrowser(Landroid/content/Intent;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_166

    .line 105
    const-string v0, "Intent targets system browser, will redirect"

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    goto :goto_167

    :cond_166
    move v0, v15

    :goto_167
    if-nez v0, :cond_18e

    .line 109
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_18e

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_18e

    .line 110
    invoke-static {}, Lio/vanta/fake/service/BrowserRedirectProxy;->findContainerBrowser()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18e

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Generic browser intent, container browser available: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18f

    :cond_18e
    move v11, v0

    :goto_18f
    if-eqz v11, :cond_240

    .line 118
    invoke-static {v8}, Lio/vanta/fake/service/BrowserRedirectProxy;->redirectToContainerBrowser(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_240

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Redirected browser intent to: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_1ca

    .line 124
    :try_start_1b1
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b4} :catch_1b5

    goto :goto_1ca

    :catch_1b5
    move-exception v0

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1ca
    :goto_1ca
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    .line 133
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v9

    .line 130
    invoke-virtual {v0, v11, v10, v7, v9}, Lio/vanta/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_23b

    .line 136
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_23b

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Browser resolved in container: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 139
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v16

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v17

    .line 144
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 145
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v20

    .line 146
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultWho([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 147
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getRequestCode([Ljava/lang/Object;)I

    move-result v22

    .line 148
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getFlags([Ljava/lang/Object;)I

    move-result v23

    .line 149
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getOptions([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v18, v11

    .line 142
    invoke-virtual/range {v16 .. v24}, Lio/vanta/fake/frameworks/BActivityManager;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 150
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 152
    :cond_23b
    const-string v0, "Could not resolve browser in container, falling back"

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_240
    invoke-static {v8}, Lio/vanta/utils/ComponentUtils;->isRequestInstall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 160
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v0, v7}, Lio/vanta/fake/provider/FileProviderHandler;->convertFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2a0

    .line 163
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 165
    :try_start_25a
    invoke-static {}, Lio/vanta/VantaCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v15}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2a0

    .line 167
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 168
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a0

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_288} :catch_289

    return-object v0

    :catch_289
    move-exception v0

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Could not verify if this is VantaCore app: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2a0
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Lio/vanta/VantaCore;->requestInstallPackage(Ljava/io/File;I)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 181
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 183
    :cond_2b3
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lio/vanta/fake/provider/FileProviderHandler;->convertFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 186
    :cond_2c7
    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2fe

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "package:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fe

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    :cond_2fe
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v0

    .line 194
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v6

    .line 191
    invoke-virtual {v0, v8, v10, v4, v6}, Lio/vanta/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_347

    .line 197
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_328

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_328

    .line 199
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32c

    .line 201
    :cond_328
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_32c
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v4

    .line 206
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v7

    .line 203
    invoke-virtual {v4, v8, v10, v6, v7}, Lio/vanta/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_346

    .line 209
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_346
    move-object v0, v4

    .line 215
    :cond_347
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_358

    .line 216
    invoke-static {}, Lio/vanta/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 218
    :cond_358
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v6

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v7

    .line 221
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 222
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v10

    .line 223
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getResultWho([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 224
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getRequestCode([Ljava/lang/Object;)I

    move-result v12

    .line 225
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getFlags([Ljava/lang/Object;)I

    move-result v13

    .line 226
    invoke-static {v3}, Lio/vanta/utils/compat/StartActivityCompat;->getOptions([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v14

    .line 219
    invoke-virtual/range {v6 .. v14}, Lio/vanta/fake/frameworks/BActivityManager;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 227
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
