.class public Lio/vanta/fake/service/INotificationManagerProxy$CreateNotificationChannelGroups;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateNotificationChannelGroups"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "createNotificationChannelGroups"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x1

    .line 153
    aget-object p1, p3, p1

    invoke-static {p1}, Lvanta/android/content/pm/BRParceledListSlice;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ParceledListSliceContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/content/pm/ParceledListSliceContext;->getList()Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 155
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object p3

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p3, p2}, Lio/vanta/fake/frameworks/BNotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
