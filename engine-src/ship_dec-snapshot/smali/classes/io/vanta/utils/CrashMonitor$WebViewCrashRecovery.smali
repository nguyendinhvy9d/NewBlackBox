.class Lio/vanta/utils/CrashMonitor$WebViewCrashRecovery;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Lio/vanta/utils/CrashMonitor$RecoveryStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/CrashMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewCrashRecovery"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/CrashMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/utils/CrashMonitor$WebViewCrashRecovery;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptRecovery(Lio/vanta/utils/CrashMonitor$CrashInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 590
    const-string p1, "WebView"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "webview"

    .line 592
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 585
    const-string v0, "WebView Crash Recovery"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method
