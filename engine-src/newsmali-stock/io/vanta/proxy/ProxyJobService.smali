.class public Lio/vanta/proxy/ProxyJobService;
.super Landroid/app/job/JobService;
.source "ProxyJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/proxy/ProxyJobService$P49;,
        Lio/vanta/proxy/ProxyJobService$P48;,
        Lio/vanta/proxy/ProxyJobService$P47;,
        Lio/vanta/proxy/ProxyJobService$P46;,
        Lio/vanta/proxy/ProxyJobService$P45;,
        Lio/vanta/proxy/ProxyJobService$P44;,
        Lio/vanta/proxy/ProxyJobService$P43;,
        Lio/vanta/proxy/ProxyJobService$P42;,
        Lio/vanta/proxy/ProxyJobService$P41;,
        Lio/vanta/proxy/ProxyJobService$P40;,
        Lio/vanta/proxy/ProxyJobService$P39;,
        Lio/vanta/proxy/ProxyJobService$P38;,
        Lio/vanta/proxy/ProxyJobService$P37;,
        Lio/vanta/proxy/ProxyJobService$P36;,
        Lio/vanta/proxy/ProxyJobService$P35;,
        Lio/vanta/proxy/ProxyJobService$P34;,
        Lio/vanta/proxy/ProxyJobService$P33;,
        Lio/vanta/proxy/ProxyJobService$P32;,
        Lio/vanta/proxy/ProxyJobService$P31;,
        Lio/vanta/proxy/ProxyJobService$P30;,
        Lio/vanta/proxy/ProxyJobService$P29;,
        Lio/vanta/proxy/ProxyJobService$P28;,
        Lio/vanta/proxy/ProxyJobService$P27;,
        Lio/vanta/proxy/ProxyJobService$P26;,
        Lio/vanta/proxy/ProxyJobService$P25;,
        Lio/vanta/proxy/ProxyJobService$P24;,
        Lio/vanta/proxy/ProxyJobService$P23;,
        Lio/vanta/proxy/ProxyJobService$P22;,
        Lio/vanta/proxy/ProxyJobService$P21;,
        Lio/vanta/proxy/ProxyJobService$P20;,
        Lio/vanta/proxy/ProxyJobService$P19;,
        Lio/vanta/proxy/ProxyJobService$P18;,
        Lio/vanta/proxy/ProxyJobService$P17;,
        Lio/vanta/proxy/ProxyJobService$P16;,
        Lio/vanta/proxy/ProxyJobService$P15;,
        Lio/vanta/proxy/ProxyJobService$P14;,
        Lio/vanta/proxy/ProxyJobService$P13;,
        Lio/vanta/proxy/ProxyJobService$P12;,
        Lio/vanta/proxy/ProxyJobService$P11;,
        Lio/vanta/proxy/ProxyJobService$P10;,
        Lio/vanta/proxy/ProxyJobService$P9;,
        Lio/vanta/proxy/ProxyJobService$P8;,
        Lio/vanta/proxy/ProxyJobService$P7;,
        Lio/vanta/proxy/ProxyJobService$P6;,
        Lio/vanta/proxy/ProxyJobService$P5;,
        Lio/vanta/proxy/ProxyJobService$P4;,
        Lio/vanta/proxy/ProxyJobService$P3;,
        Lio/vanta/proxy/ProxyJobService$P2;,
        Lio/vanta/proxy/ProxyJobService$P1;,
        Lio/vanta/proxy/ProxyJobService$P0;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StubJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 37
    invoke-super {p0, p1}, Landroid/app/job/JobService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 31
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 32
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 43
    invoke-super {p0}, Landroid/app/job/JobService;->onLowMemory()V

    .line 44
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 16
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 21
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 49
    invoke-super {p0, p1}, Landroid/app/job/JobService;->onTrimMemory(I)V

    .line 50
    invoke-static {}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->get()Lio/vanta/app/dispatcher/AppJobServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/vanta/app/dispatcher/AppJobServiceDispatcher;->onTrimMemory(I)V

    return-void
.end method
