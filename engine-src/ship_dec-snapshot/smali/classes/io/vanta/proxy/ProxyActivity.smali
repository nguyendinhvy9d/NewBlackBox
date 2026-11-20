.class public Lio/vanta/proxy/ProxyActivity;
.super Landroid/app/Activity;
.source "ProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/proxy/ProxyActivity$P49;,
        Lio/vanta/proxy/ProxyActivity$P48;,
        Lio/vanta/proxy/ProxyActivity$P47;,
        Lio/vanta/proxy/ProxyActivity$P46;,
        Lio/vanta/proxy/ProxyActivity$P45;,
        Lio/vanta/proxy/ProxyActivity$P44;,
        Lio/vanta/proxy/ProxyActivity$P43;,
        Lio/vanta/proxy/ProxyActivity$P42;,
        Lio/vanta/proxy/ProxyActivity$P41;,
        Lio/vanta/proxy/ProxyActivity$P40;,
        Lio/vanta/proxy/ProxyActivity$P39;,
        Lio/vanta/proxy/ProxyActivity$P38;,
        Lio/vanta/proxy/ProxyActivity$P37;,
        Lio/vanta/proxy/ProxyActivity$P36;,
        Lio/vanta/proxy/ProxyActivity$P35;,
        Lio/vanta/proxy/ProxyActivity$P34;,
        Lio/vanta/proxy/ProxyActivity$P33;,
        Lio/vanta/proxy/ProxyActivity$P32;,
        Lio/vanta/proxy/ProxyActivity$P31;,
        Lio/vanta/proxy/ProxyActivity$P30;,
        Lio/vanta/proxy/ProxyActivity$P29;,
        Lio/vanta/proxy/ProxyActivity$P28;,
        Lio/vanta/proxy/ProxyActivity$P27;,
        Lio/vanta/proxy/ProxyActivity$P26;,
        Lio/vanta/proxy/ProxyActivity$P25;,
        Lio/vanta/proxy/ProxyActivity$P24;,
        Lio/vanta/proxy/ProxyActivity$P23;,
        Lio/vanta/proxy/ProxyActivity$P22;,
        Lio/vanta/proxy/ProxyActivity$P21;,
        Lio/vanta/proxy/ProxyActivity$P20;,
        Lio/vanta/proxy/ProxyActivity$P19;,
        Lio/vanta/proxy/ProxyActivity$P18;,
        Lio/vanta/proxy/ProxyActivity$P17;,
        Lio/vanta/proxy/ProxyActivity$P16;,
        Lio/vanta/proxy/ProxyActivity$P15;,
        Lio/vanta/proxy/ProxyActivity$P14;,
        Lio/vanta/proxy/ProxyActivity$P13;,
        Lio/vanta/proxy/ProxyActivity$P12;,
        Lio/vanta/proxy/ProxyActivity$P11;,
        Lio/vanta/proxy/ProxyActivity$P10;,
        Lio/vanta/proxy/ProxyActivity$P9;,
        Lio/vanta/proxy/ProxyActivity$P8;,
        Lio/vanta/proxy/ProxyActivity$P7;,
        Lio/vanta/proxy/ProxyActivity$P6;,
        Lio/vanta/proxy/ProxyActivity$P5;,
        Lio/vanta/proxy/ProxyActivity$P4;,
        Lio/vanta/proxy/ProxyActivity$P3;,
        Lio/vanta/proxy/ProxyActivity$P2;,
        Lio/vanta/proxy/ProxyActivity$P1;,
        Lio/vanta/proxy/ProxyActivity$P0;
    }
.end annotation


# static fields
.field private static final RELAY_REQUEST_CODE:I = 0x4e6d64

.field public static final TAG:Ljava/lang/String; = "ProxyActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0x4e6d64

    if-ne p1, v0, :cond_0

    .line 52
    invoke-virtual {p0, p2, p3}, Lio/vanta/proxy/ProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyActivity;->finish()V

    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string p1, "onCreate"

    const-string v0, "ProxyActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lio/vanta/fake/hook/HookManager;->get()Lio/vanta/fake/hook/HookManager;

    move-result-object p1

    const-class v1, Lio/vanta/fake/service/HCallbackProxy;

    invoke-virtual {p1, v1}, Lio/vanta/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/vanta/proxy/record/ProxyActivityRecord;->create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 34
    :try_start_0
    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p1, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-static {}, Lio/vanta/VantaCore;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 39
    :cond_0
    iget-object p1, p1, Lio/vanta/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    const v1, 0x4e6d64

    invoke-virtual {p0, p1, v1}, Lio/vanta/proxy/ProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start target from ProxyActivity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_1
    invoke-virtual {p0}, Lio/vanta/proxy/ProxyActivity;->finish()V

    return-void
.end method
