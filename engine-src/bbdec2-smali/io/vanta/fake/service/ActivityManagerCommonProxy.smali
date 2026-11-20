.class public Lio/vanta/fake/service/ActivityManagerCommonProxy;
.super Ljava/lang/Object;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ActivityManagerCommonProxy$getCallingActivity;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$getCallingPackage;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$GetAppTasks;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$FinishActivity;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$ActivityDestroyed;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$ActivityResumed;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$StartIntentSenderForResult;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivityIntentSender;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivities;,
        Lio/vanta/fake/service/ActivityManagerCommonProxy$StartActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonStub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFacebookActivityIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    const-string v3, "com.facebook.FacebookActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 384
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 385
    const-string v1, "NATIVE_WITH_FALLBACK"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private static isGoogleSignInIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 402
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 403
    const-string v3, "SignInHubActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SignInActivity"

    .line 404
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.google.android.gms.auth"

    .line 405
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 410
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 411
    const-string v1, "com.google.android.gms.auth.api.signin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.google.android.gms.games"

    .line 412
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v0
.end method
