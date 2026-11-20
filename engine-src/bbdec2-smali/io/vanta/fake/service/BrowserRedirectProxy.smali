.class public Lio/vanta/fake/service/BrowserRedirectProxy;
.super Ljava/lang/Object;
.source "BrowserRedirectProxy.java"


# static fields
.field private static final NON_CONTAINER_BROWSERS:[Ljava/lang/String;

.field private static final PREFERRED_BROWSERS:[Ljava/lang/String;

.field private static final SYSTEM_BROWSERS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BrowserRedirectProxy"

.field private static sCachedContainerBrowser:Ljava/lang/String;

.field private static sCheckedForBrowser:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/16 v0, 0x8

    .line 38
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "mark.via.gp"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "mark.via"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "org.mozilla.firefox"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "com.duckduckgo.mobile.android"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "com.brave.browser"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "org.chromium.chrome"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "com.opera.browser"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "com.opera.mini.native"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lio/vanta/fake/service/BrowserRedirectProxy;->PREFERRED_BROWSERS:[Ljava/lang/String;

    const/16 v1, 0x9

    .line 50
    new-array v2, v1, [Ljava/lang/String;

    const-string v11, "com.android.chrome"

    aput-object v11, v2, v3

    const-string v11, "com.chrome.beta"

    aput-object v11, v2, v4

    const-string v11, "com.chrome.dev"

    aput-object v11, v2, v5

    const-string v11, "com.google.android.browser"

    aput-object v11, v2, v6

    const-string v11, "com.sec.android.app.sbrowser"

    aput-object v11, v2, v7

    const-string v11, "com.mi.globalbrowser"

    aput-object v11, v2, v8

    const-string v11, "com.huawei.browser"

    aput-object v11, v2, v9

    const-string v11, "com.oppo.browser"

    aput-object v11, v2, v10

    const-string v11, "com.vivo.browser"

    aput-object v11, v2, v0

    sput-object v2, Lio/vanta/fake/service/BrowserRedirectProxy;->SYSTEM_BROWSERS:[Ljava/lang/String;

    const/16 v2, 0xa

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    const-string v11, "com.google.android.setupwizard"

    aput-object v11, v2, v3

    const-string v11, "com.google.android.gms"

    aput-object v11, v2, v4

    const-string v4, "com.google.android.gsf"

    aput-object v4, v2, v5

    const-string v4, "com.android.vending"

    aput-object v4, v2, v6

    const-string v4, "org.nomad.engine"

    aput-object v4, v2, v7

    const-string v4, "com.google.android.feedback"

    aput-object v4, v2, v8

    const-string v4, "com.google.android.onetimeinitializer"

    aput-object v4, v2, v9

    const-string v4, "com.google.android.partnersetup"

    aput-object v4, v2, v10

    const-string v4, "com.google.android.syncadapters.contacts"

    aput-object v4, v2, v0

    const-string v0, "com.google.android.configupdater"

    aput-object v0, v2, v1

    sput-object v2, Lio/vanta/fake/service/BrowserRedirectProxy;->NON_CONTAINER_BROWSERS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lio/vanta/fake/service/BrowserRedirectProxy;->sCachedContainerBrowser:Ljava/lang/String;

    .line 77
    sput-boolean v3, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .registers 1

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lio/vanta/fake/service/BrowserRedirectProxy;->sCachedContainerBrowser:Ljava/lang/String;

    const/4 v0, 0x0

    .line 207
    sput-boolean v0, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z

    return-void
.end method

.method public static findContainerBrowser()Ljava/lang/String;
    .registers 11

    .line 136
    const-string v0, "BrowserRedirectProxy"

    sget-boolean v1, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z

    if-eqz v1, :cond_b

    sget-object v1, Lio/vanta/fake/service/BrowserRedirectProxy;->sCachedContainerBrowser:Ljava/lang/String;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 141
    :try_start_d
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v3

    .line 144
    sget-object v4, Lio/vanta/fake/service/BrowserRedirectProxy;->PREFERRED_BROWSERS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_16
    if-ge v7, v5, :cond_42

    aget-object v8, v4, v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_bd

    .line 146
    :try_start_1a
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v9

    .line 147
    invoke-virtual {v9, v8, v6, v3}, Lio/vanta/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_3f

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found preferred container browser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sput-object v8, Lio/vanta/fake/service/BrowserRedirectProxy;->sCachedContainerBrowser:Ljava/lang/String;

    .line 151
    sput-boolean v2, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3e} :catch_3f

    return-object v8

    :catch_3f
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 160
    :cond_42
    :try_start_42
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v7, "http://example.com"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v5

    .line 162
    invoke-virtual {v5, v4, v6, v1, v3}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d4

    .line 164
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d4

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 166
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_63

    .line 167
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 170
    sget-object v5, Lio/vanta/fake/service/BrowserRedirectProxy;->SYSTEM_BROWSERS:[Ljava/lang/String;

    array-length v7, v5

    move v8, v6

    :goto_7b
    if-ge v8, v7, :cond_8a

    aget-object v9, v5, v8

    .line 171
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    move v5, v2

    goto :goto_8b

    :cond_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_8a
    move v5, v6

    :goto_8b
    if-nez v5, :cond_a0

    .line 177
    sget-object v7, Lio/vanta/fake/service/BrowserRedirectProxy;->NON_CONTAINER_BROWSERS:[Ljava/lang/String;

    array-length v8, v7

    move v9, v6

    :goto_91
    if-ge v9, v8, :cond_a0

    aget-object v10, v7, v9

    .line 178
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9d

    move v5, v2

    goto :goto_a0

    :cond_9d
    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    :cond_a0
    :goto_a0
    if-nez v5, :cond_63

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found container browser via query: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-object v4, Lio/vanta/fake/service/BrowserRedirectProxy;->sCachedContainerBrowser:Ljava/lang/String;

    .line 187
    sput-boolean v2, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_bc} :catch_bd

    return-object v4

    :catch_bd
    move-exception v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error finding container browser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_d4
    sput-boolean v2, Lio/vanta/fake/service/BrowserRedirectProxy;->sCheckedForBrowser:Z

    return-object v1
.end method

.method public static getSupportedBrowserPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    sget-object v1, Lio/vanta/fake/service/BrowserRedirectProxy;->PREFERRED_BROWSERS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    sget-object v1, Lio/vanta/fake/service/BrowserRedirectProxy;->SYSTEM_BROWSERS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static isBrowserIntent(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 92
    :cond_11
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_18

    return v0

    .line 97
    :cond_18
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1f

    return v0

    .line 103
    :cond_1f
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    return v0

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0
.end method

.method public static isFacebookCallback(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 282
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    .line 288
    :cond_b
    const-string v2, "facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "fb.com"

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "fbcdn.net"

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 291
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 292
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 293
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_48

    goto :goto_49

    :cond_48
    return v0

    :cond_49
    :goto_49
    const/4 p0, 0x1

    return p0
.end method

.method public static isTargetingSystemBrowser(Landroid/content/Intent;)Z
    .registers 8

    .line 110
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 112
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v3, Lio/vanta/fake/service/BrowserRedirectProxy;->SYSTEM_BROWSERS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_10
    if-ge v5, v4, :cond_1e

    aget-object v6, v3, v5

    .line 114
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 120
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 122
    sget-object v0, Lio/vanta/fake/service/BrowserRedirectProxy;->SYSTEM_BROWSERS:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_28
    if-ge v4, v3, :cond_36

    aget-object v5, v0, v4

    .line 123
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    return v2

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_36
    return v1
.end method

.method public static redirectToContainerBrowser(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 10

    const-string v0, "Set browser component: "

    .line 215
    invoke-static {p0}, Lio/vanta/fake/service/BrowserRedirectProxy;->isBrowserIntent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 219
    :cond_a
    invoke-static {}, Lio/vanta/fake/service/BrowserRedirectProxy;->findContainerBrowser()Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v3, "BrowserRedirectProxy"

    if-nez v1, :cond_18

    .line 221
    const-string p0, "No browser found in container, cannot redirect"

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 225
    :cond_18
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Redirecting browser intent to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 237
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x22

    if-lt v6, v7, :cond_68

    .line 245
    :try_start_4d
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_68

    :catch_51
    move-exception v6

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to collect intent extras: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_68
    :goto_68
    :try_start_68
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result v6

    .line 254
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, v7, v1, v2, v6}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c3

    .line 260
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c3

    .line 261
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 262
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ab} :catch_ac

    goto :goto_c3

    :catch_ac
    move-exception p0

    .line 268
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

    :cond_c3
    :goto_c3
    return-object v4
.end method
