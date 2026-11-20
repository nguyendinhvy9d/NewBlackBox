.class public Lio/vanta/fake/service/IAccountManagerProxy$clearPassword;
.super Lio/vanta/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "clearPassword"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "clearPassword"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 281
    invoke-static {}, Lio/vanta/fake/frameworks/BAccountManager;->get()Lio/vanta/fake/frameworks/BAccountManager;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p3, p2

    check-cast p3, Landroid/accounts/Account;

    invoke-virtual {p1, p3}, Lio/vanta/fake/frameworks/BAccountManager;->clearPassword(Landroid/accounts/Account;)V

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
