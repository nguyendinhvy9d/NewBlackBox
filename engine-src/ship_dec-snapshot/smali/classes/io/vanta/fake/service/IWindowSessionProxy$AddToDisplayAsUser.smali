.class public Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplayAsUser;
.super Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplay;
.source "IWindowSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWindowSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToDisplayAsUser"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "addToDisplayAsUser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplay;-><init>()V

    return-void
.end method
