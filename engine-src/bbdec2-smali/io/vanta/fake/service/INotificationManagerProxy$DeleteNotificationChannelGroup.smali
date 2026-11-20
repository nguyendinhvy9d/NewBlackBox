.class public Lio/vanta/fake/service/INotificationManagerProxy$DeleteNotificationChannelGroup;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteNotificationChannelGroup"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "deleteNotificationChannelGroup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 162
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

    .line 166
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/vanta/fake/frameworks/BNotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
