.class public Lio/vanta/fake/delegate/ContentProviderDelegate;
.super Ljava/lang/Object;
.source "ContentProviderDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentProviderDelegate"

.field private static sInjected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/vanta/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearContentProvider(Ljava/lang/Object;)V
    .locals 2

    .line 103
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0}, Lvanta/android/providers/BRSettingsNameValueCacheOreo;->get(Ljava/lang/Object;)Lvanta/android/providers/SettingsNameValueCacheOreoContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/providers/SettingsNameValueCacheOreoContext;->mProviderHolder()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    invoke-static {p0}, Lvanta/android/providers/BRSettingsContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/providers/SettingsContentProviderHolderContext;

    move-result-object p0

    invoke-interface {p0, v1}, Lvanta/android/providers/SettingsContentProviderHolderContext;->_set_mContentProvider(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-static {p0}, Lvanta/android/providers/BRSettingsNameValueCache;->get(Ljava/lang/Object;)Lvanta/android/providers/SettingsNameValueCacheContext;

    move-result-object p0

    invoke-interface {p0, v1}, Lvanta/android/providers/SettingsNameValueCacheContext;->_set_mContentProvider(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearSettingProvider()V
    .locals 1

    .line 86
    invoke-static {}, Lvanta/android/providers/BRSettingsSystem;->get()Lvanta/android/providers/SettingsSystemStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/providers/SettingsSystemStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lio/vanta/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-static {}, Lvanta/android/providers/BRSettingsSecure;->get()Lvanta/android/providers/SettingsSecureStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/providers/SettingsSecureStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {v0}, Lio/vanta/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 94
    :cond_1
    invoke-static {}, Lvanta/android/providers/BRSettingsGlobal;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lvanta/android/providers/BRSettingsGlobal;->get()Lvanta/android/providers/SettingsGlobalStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/providers/SettingsGlobalStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {v0}, Lio/vanta/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static init()V
    .locals 8

    .line 63
    invoke-static {}, Lio/vanta/fake/delegate/ContentProviderDelegate;->clearSettingProvider()V

    .line 65
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 66
    invoke-static {}, Lio/vanta/VantaCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lvanta/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/ActivityThreadContext;->mProviderMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v2

    invoke-interface {v2}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->mNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    array-length v3, v2

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 74
    aget-object v2, v2, v3

    .line 75
    sget-object v4, Lio/vanta/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    sget-object v4, Lio/vanta/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v1}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v4

    invoke-interface {v4}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->mProvider()Landroid/os/IInterface;

    move-result-object v4

    .line 78
    invoke-static {v1}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v5

    new-instance v6, Lio/vanta/fake/service/context/providers/ContentProviderStub;

    invoke-direct {v6}, Lio/vanta/fake/service/context/providers/ContentProviderStub;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    invoke-interface {v5, v4}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->_set_mProvider(Ljava/lang/Object;)V

    .line 79
    invoke-static {v1}, Lvanta/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lvanta/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-interface {v1, v4}, Lvanta/android/app/ActivityThreadProviderClientRecordPContext;->_set_mNames(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0}, Lvanta/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lvanta/android/content/ContentProviderHolderOreoContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/ContentProviderHolderOreoContext;->provider()Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lvanta/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/IActivityManagerContentProviderHolderContext;->provider()Landroid/os/IInterface;

    move-result-object v0

    .line 40
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0    # 0x5582bc23
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1    # 0x2eaeb418
    const-string v1, "telephony"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2    # 0x62f6fe4
    const-string v1, "media"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3    # -0x642463b
    const-string v1, "gservices"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4    # -0x18b9a016
    const-string v1, "com.google.android.gsf.gservices"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 52
    new-instance p1, Lio/vanta/fake/service/context/providers/ContentProviderStub;

    invoke-direct {p1}, Lio/vanta/fake/service/context/providers/ContentProviderStub;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    goto :goto_2

    .line 49
    :pswitch_0    # 0x1 0x2 0x3 0x4 0x0
    new-instance p1, Lio/vanta/fake/service/context/providers/SystemProviderStub;

    invoke-direct {p1}, Lio/vanta/fake/service/context/providers/SystemProviderStub;-><init>()V

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 55
    :goto_2
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-static {p0}, Lvanta/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lvanta/android/content/ContentProviderHolderOreoContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lvanta/android/content/ContentProviderHolderOreoContext;->_set_provider(Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_7
    invoke-static {p0}, Lvanta/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lvanta/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lvanta/android/app/IActivityManagerContentProviderHolderContext;->_set_provider(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x18b9a016 -> :sswitch_4
        -0x642463b -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x2eaeb418 -> :sswitch_1
        0x5582bc23 -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method
