.class public Lio/vanta/fake/service/IWindowSessionProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IWindowSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IWindowSessionProxy$Relayout;,
        Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplayAsUser;,
        Lio/vanta/fake/service/IWindowSessionProxy$AddToDisplay;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowSessionStub"


# instance fields
.field private mSession:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    .line 21
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 22
    iput-object p1, p0, Lio/vanta/fake/service/IWindowSessionProxy;->mSession:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public getProxyInvocation()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-super {p0}, Lio/vanta/fake/hook/BinderInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/vanta/fake/service/IWindowSessionProxy;->mSession:Landroid/os/IInterface;

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
