.class public Lio/vanta/fake/service/IWifiManagerProxy$GetConnectionInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "IWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetConnectionInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getConnectionInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method public static intIP2StringIP(I)Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ip2Int(Ljava/lang/String;)I
    .locals 4

    .line 61
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 63
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 65
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 46
    invoke-static {p1}, Lvanta/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lvanta/android/net/wifi/WifiInfoContext;

    move-result-object p2

    const-string p3, "ac:62:5a:82:65:c4"

    invoke-interface {p2, p3}, Lvanta/android/net/wifi/WifiInfoContext;->_set_mBSSID(Ljava/lang/Object;)V

    .line 47
    invoke-static {p1}, Lvanta/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lvanta/android/net/wifi/WifiInfoContext;

    move-result-object p2

    invoke-interface {p2, p3}, Lvanta/android/net/wifi/WifiInfoContext;->_set_mMacAddress(Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lvanta/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lvanta/android/net/wifi/WifiInfoContext;

    move-result-object p2

    invoke-static {}, Lvanta/android/net/wifi/BRWifiSsid;->get()Lvanta/android/net/wifi/WifiSsidStatic;

    move-result-object p3

    const-string v0, "Nomad_Wifi"

    invoke-interface {p3, v0}, Lvanta/android/net/wifi/WifiSsidStatic;->createFromAsciiEncoded(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Lvanta/android/net/wifi/WifiInfoContext;->_set_mWifiSsid(Ljava/lang/Object;)V

    return-object p1
.end method
