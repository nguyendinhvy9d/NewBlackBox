.class public Lio/vanta/fake/service/IAutofillManagerProxy$StartSession;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAutofillManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAutofillManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartSession"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "startSession"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 45
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 46
    aget-object v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/vanta/VantaCore;->getAppPid()I

    move-result v3

    invoke-static {v3}, Lio/vanta/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p3, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
