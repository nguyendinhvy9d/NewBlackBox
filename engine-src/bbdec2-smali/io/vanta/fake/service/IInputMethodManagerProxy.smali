.class public Lio/vanta/fake/service/IInputMethodManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IInputMethodManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IInputMethodManagerProxy$StartInputOrWindowGainedFocus;
    }
.end annotation

.annotation runtime Lio/vanta/fake/hook/ScanClass;
    value = {
        Lio/vanta/fake/service/IInputMethodManagerProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IInputMethodManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "input_method"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "input_method"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 30
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IInputMethodManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
