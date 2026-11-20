.class public Lio/vanta/fake/service/IAccountManagerProxy$getAccountsAndVisibilityForPackage;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getAccountsAndVisibilityForPackage"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAccountsAndVisibilityForPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 463
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

    .line 467
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lio/vanta/fake/frameworks/BAccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
