.class public Lio/vanta/fake/service/CustomTabsRedirectProxy;
.super Ljava/lang/Object;
.source "CustomTabsRedirectProxy.java"


# static fields
.field private static final CUSTOM_TABS_BROWSERS:[Ljava/lang/String;

.field private static final EXTRA_CUSTOM_TABS_SECONDARY_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

.field private static final EXTRA_CUSTOM_TABS_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.TOOLBAR_COLOR"

.field private static final EXTRA_SESSION_ANDROIDX:Ljava/lang/String; = "androidx.browser.customtabs.extra.SESSION"

.field private static final EXTRA_SESSION_SUPPORT:Ljava/lang/String; = "android.support.customtabs.extra.SESSION"

.field private static final TAG:Ljava/lang/String; = "CustomTabsRedirectProxy"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.chrome.canary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.microsoft.emmx"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.opera.mini.native"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.brave.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    sput-object v0, Lio/vanta/fake/service/CustomTabsRedirectProxy;->CUSTOM_TABS_BROWSERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRegularBrowserIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    const-string v0, "Set browser component: "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Converting Custom Tabs intent to regular browser intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomTabsRedirectProxy"

    invoke-static {v3, v2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lio/vanta/fake/service/BrowserRedirectProxy;->findContainerBrowser()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 113
    const-string p0, "No container browser found, cannot convert Custom Tabs intent"

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 125
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 127
    invoke-virtual {v4, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt p0, v2, :cond_3

    .line 135
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed to collect intent extras: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p0

    .line 144
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v2

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v4, v5, v1, p0}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 147
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 149
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_4

    .line 150
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not resolve browser activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Converted Custom Tabs to regular browser intent: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static isCustomTabsIntent(Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 57
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 64
    const-string v3, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "androidx.browser.customtabs.extra.SESSION"

    .line 65
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.support.customtabs.extra.TOOLBAR_COLOR"

    .line 66
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 74
    sget-object v3, Lio/vanta/fake/service/CustomTabsRedirectProxy;->CUSTOM_TABS_BROWSERS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 75
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 83
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object v1, Lio/vanta/fake/service/CustomTabsRedirectProxy;->CUSTOM_TABS_BROWSERS:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 85
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public static processIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 169
    invoke-static {p0}, Lio/vanta/fake/service/CustomTabsRedirectProxy;->isCustomTabsIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p0}, Lio/vanta/fake/service/CustomTabsRedirectProxy;->convertToRegularBrowserIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method
