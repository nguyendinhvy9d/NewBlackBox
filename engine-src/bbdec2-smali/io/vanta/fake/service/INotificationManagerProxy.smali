.class public Lio/vanta/fake/service/INotificationManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/INotificationManagerProxy$GetNotificationChannelGroups;,
        Lio/vanta/fake/service/INotificationManagerProxy$DeleteNotificationChannelGroup;,
        Lio/vanta/fake/service/INotificationManagerProxy$CreateNotificationChannelGroups;,
        Lio/vanta/fake/service/INotificationManagerProxy$DeleteNotificationChannel;,
        Lio/vanta/fake/service/INotificationManagerProxy$CreateNotificationChannels;,
        Lio/vanta/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;,
        Lio/vanta/fake/service/INotificationManagerProxy$CancelNotificationWithTag;,
        Lio/vanta/fake/service/INotificationManagerProxy$GetNotificationChannels;,
        Lio/vanta/fake/service/INotificationManagerProxy$GetNotificationChannel;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "INotificationManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-static {}, Lvanta/android/app/BRNotificationManager;->get()Lvanta/android/app/NotificationManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/NotificationManagerStatic;->getService()Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-static {}, Lvanta/android/app/BRNotificationManager;->get()Lvanta/android/app/NotificationManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/app/NotificationManagerStatic;->getService()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 40
    invoke-static {}, Lvanta/android/app/BRNotificationManager;->get()Lvanta/android/app/NotificationManagerStatic;

    move-result-object p1

    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lvanta/android/app/NotificationManagerStatic;->_set_sService(Ljava/lang/Object;)V

    .line 41
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/INotificationManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-static {p3}, Lio/vanta/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
