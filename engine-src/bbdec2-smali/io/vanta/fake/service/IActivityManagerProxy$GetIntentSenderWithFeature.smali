.class public Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSenderWithFeature;
.super Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIntentSenderWithFeature"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getIntentSenderWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Lio/vanta/fake/service/IActivityManagerProxy$GetIntentSender;-><init>()V

    return-void
.end method
