.class public Lio/vanta/fake/service/ILocaleManagerProxy$SetApplicationLocales;
.super Lio/vanta/fake/hook/MethodHook;
.source "ILocaleManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ILocaleManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetApplicationLocales"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setApplicationLocales"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 65
    :try_start_0
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    array-length p2, p3

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    aget-object p2, p3, v0

    instance-of p2, p2, Landroid/os/LocaleList;

    if-eqz p2, :cond_0

    .line 68
    invoke-static {}, Lio/vanta/fake/service/ILocaleManagerProxy;->-$$Nest$sfgetsLocales()Ljava/util/Map;

    move-result-object p2

    aget-object p3, p3, v0

    check-cast p3, Landroid/os/LocaleList;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
