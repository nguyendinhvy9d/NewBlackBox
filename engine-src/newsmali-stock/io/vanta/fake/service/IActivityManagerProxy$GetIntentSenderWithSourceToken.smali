.class public Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSenderWithSourceToken;
.super Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIntentSenderWithSourceToken"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getIntentSenderWithSourceToken"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 858
    invoke-direct {p0}, Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;-><init>()V

    return-void
.end method
