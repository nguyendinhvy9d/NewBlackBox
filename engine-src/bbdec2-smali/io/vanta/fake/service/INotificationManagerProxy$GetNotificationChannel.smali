.class public Lio/vanta/fake/service/INotificationManagerProxy$GetNotificationChannel;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNotificationChannel"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getNotificationChannel"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
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

    .line 61
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object p1

    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/vanta/fake/frameworks/BNotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method
