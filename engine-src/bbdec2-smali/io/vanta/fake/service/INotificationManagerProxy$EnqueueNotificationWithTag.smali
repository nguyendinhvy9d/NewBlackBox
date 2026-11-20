.class public Lio/vanta/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnqueueNotificationWithTag"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "enqueueNotificationWithTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdIndex()I
    .registers 2

    .line 117
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getTagIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTagIndex()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getTagIndex()I

    move-result p1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getIdIndex()I

    move-result p2

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 107
    const-class v0, Landroid/app/Notification;

    invoke-static {p3, v0}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Notification;

    .line 108
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lio/vanta/fake/frameworks/BNotificationManager;->enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;)V

    const/4 p1, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
