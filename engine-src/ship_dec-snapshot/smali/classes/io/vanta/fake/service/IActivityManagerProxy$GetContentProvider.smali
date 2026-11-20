.class public Lio/vanta/fake/service/IActivityManagerProxy$GetContentProvider;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetContentProvider"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getContentProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthIndex()I
    .locals 1

    .line 294
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getUserIndex()I
    .locals 1

    .line 302
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$GetContentProvider;->getAuthIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$GetContentProvider;->getAuthIndex()I

    move-result v0

    .line 190
    aget-object v1, p3, v0

    .line 193
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 194
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " thr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XJACQ"

    invoke-static {v6, v5}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "appdoctor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 203
    :cond_0
    invoke-static {v2}, Lio/vanta/proxy/ProxyManifest;->isProxy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 207
    :cond_1
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isQ()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 208
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v3

    .line 211
    :cond_2
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    const/16 v5, 0x80

    .line 213
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v6

    .line 212
    invoke-virtual {v3, v2, v5, v6}, Lio/vanta/fake/frameworks/BPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_5

    .line 215
    const-string v0, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "media"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "telephony"

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.google.android.gms"

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.android.vending"

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.google.android.gsf"

    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.google.android.gms.chimera"

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.huawei.android.launcher.settings"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.hihonor.android.launcher.settings"

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v4

    .line 224
    :cond_4
    :goto_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    invoke-static {p1, v2}, Lio/vanta/fake/delegate/ContentProviderDelegate;->update(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 233
    :cond_5
    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 234
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 238
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v8

    .line 235
    invoke-virtual {v5, v6, v7, v8}, Lio/vanta/fake/frameworks/BActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lio/vanta/entity/AppConfig;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 239
    iget v6, v5, Lio/vanta/entity/AppConfig;->bpid:I

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPid()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 240
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v3}, Lio/vanta/fake/frameworks/BActivityManager;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 244
    :try_start_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object v6

    invoke-virtual {v6, v3}, Lio/vanta/app/BActivityThread;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v4

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Local acquireContentProviderClient failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManagerStub"

    invoke-static {v7, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    .line 250
    iget v5, v5, Lio/vanta/entity/AppConfig;->bpid:I

    invoke-static {v5}, Lio/vanta/proxy/ProxyManifest;->getProxyAuthorities(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v0

    .line 251
    invoke-virtual {p0}, Lio/vanta/fake/service/IActivityManagerProxy$GetContentProvider;->getUserIndex()I

    move-result v0

    invoke-static {}, Lio/vanta/VantaCore;->getHostUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p3, v0

    :cond_8
    if-nez v4, :cond_9

    .line 255
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 256
    invoke-static {p1, v2}, Lio/vanta/fake/delegate/ContentProviderDelegate;->update(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 260
    :cond_9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 262
    invoke-static {}, Lvanta/android/content/BRContentProviderNative;->get()Lvanta/android/content/ContentProviderNativeStatic;

    move-result-object p2

    invoke-interface {p2, v4}, Lvanta/android/content/ContentProviderNativeStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    .line 264
    const-string p3, "com.google.android.gsf.gservices"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    const-string p3, "gservices"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_2

    .line 267
    :cond_a
    new-instance p3, Lio/vanta/fake/service/context/providers/ContentProviderStub;

    invoke-direct {p3}, Lio/vanta/fake/service/context/providers/ContentProviderStub;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    goto :goto_3

    .line 265
    :cond_b
    :goto_2
    new-instance p3, Lio/vanta/fake/service/context/providers/SystemProviderStub;

    invoke-direct {p3}, Lio/vanta/fake/service/context/providers/SystemProviderStub;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 270
    :goto_3
    :try_start_1
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 271
    invoke-static {p1}, Lvanta/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lvanta/android/content/ContentProviderHolderOreoContext;

    move-result-object p3

    invoke-interface {p3, v3}, Lvanta/android/content/ContentProviderHolderOreoContext;->_set_info(Ljava/lang/Object;)V

    .line 272
    invoke-static {p1}, Lvanta/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lvanta/android/content/ContentProviderHolderOreoContext;

    move-result-object p3

    invoke-interface {p3, p2}, Lvanta/android/content/ContentProviderHolderOreoContext;->_set_provider(Ljava/lang/Object;)V

    goto :goto_4

    .line 274
    :cond_c
    invoke-static {p1}, Lvanta/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object p3

    invoke-interface {p3, v3}, Lvanta/android/app/IActivityManagerContentProviderHolderContext;->_set_info(Ljava/lang/Object;)V

    .line 275
    invoke-static {p1}, Lvanta/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object p3

    invoke-interface {p3, p2}, Lvanta/android/app/IActivityManagerContentProviderHolderContext;->_set_provider(Ljava/lang/Object;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 279
    :catchall_1
    :try_start_2
    invoke-static {p1}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p3

    const-string v0, "info"

    invoke-virtual {p3, v0}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p3

    invoke-virtual {p3, v3}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    .line 280
    invoke-static {p1}, Lio/vanta/utils/Reflector;->with(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    move-result-object p3

    const-string v0, "provider"

    invoke-virtual {p3, v0}, Lio/vanta/utils/Reflector;->field(Ljava/lang/String;)Lio/vanta/utils/Reflector;

    move-result-object p3

    invoke-virtual {p3, p2}, Lio/vanta/utils/Reflector;->set(Ljava/lang/Object;)Lio/vanta/utils/Reflector;

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_d
    :goto_4
    return-object p1

    .line 289
    :cond_e
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
