.class public Lio/vanta/fake/service/IVpnManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IVpnManagerProxy.java"


# annotations
.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/VpnCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IVpnManagerProxy"

.field public static final VPN_MANAGEMENT_SERVICE:Ljava/lang/String; = "vpn_management"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "vpn_management"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 4

    .line 20
    invoke-static {}, Lvanta/android/net/BRIVpnManagerStub;->get()Lvanta/android/net/IVpnManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "vpn_management"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/net/IVpnManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 25
    const-string p1, "vpn_management"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IVpnManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
