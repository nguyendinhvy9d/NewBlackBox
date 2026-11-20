.class public Lio/vanta/proxy/ProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProxyBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 19
    invoke-static {p2}, Lio/vanta/proxy/record/ProxyBroadcastRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyBroadcastRecord;

    move-result-object p1

    .line 20
    iget-object p2, p1, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    if-nez p2, :cond_10

    return-void

    .line 23
    :cond_10
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 25
    :try_start_14
    invoke-static {}, Lio/vanta/VantaCore;->getBActivityManager()Lio/vanta/fake/frameworks/BActivityManager;

    move-result-object v0

    iget-object v1, p1, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    new-instance v2, Lio/vanta/entity/am/PendingResultData;

    invoke-direct {v2, p2}, Lio/vanta/entity/am/PendingResultData;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    iget p1, p1, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mUserId:I

    invoke-virtual {v0, v1, v2, p1}, Lio/vanta/fake/frameworks/BActivityManager;->scheduleBroadcastReceiver(Landroid/content/Intent;Lio/vanta/entity/am/PendingResultData;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_25

    return-void

    .line 27
    :catch_25
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
