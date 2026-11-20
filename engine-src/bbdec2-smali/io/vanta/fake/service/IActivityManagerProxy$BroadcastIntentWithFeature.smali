.class public Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntentWithFeature;
.super Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntentWithFeature"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "broadcastIntentWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 866
    invoke-direct {p0}, Lio/vanta/fake/service/IActivityManagerProxy$BroadcastIntent;-><init>()V

    return-void
.end method
