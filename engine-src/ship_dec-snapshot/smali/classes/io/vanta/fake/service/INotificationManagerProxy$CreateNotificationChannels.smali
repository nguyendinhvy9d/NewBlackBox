.class public Lio/vanta/fake/service/INotificationManagerProxy$CreateNotificationChannels;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateNotificationChannels"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "createNotificationChannels"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
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

    const/4 p1, 0x1

    .line 127
    aget-object p1, p3, p1

    invoke-static {p1}, Lvanta/android/content/pm/BRParceledListSlice;->get(Ljava/lang/Object;)Lvanta/android/content/pm/ParceledListSliceContext;

    move-result-object p1

    invoke-interface {p1}, Lvanta/android/content/pm/ParceledListSliceContext;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p1, :cond_0

    return-object p2

    .line 130
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 131
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object v0

    check-cast p3, Landroid/app/NotificationChannel;

    invoke-virtual {v0, p3}, Lio/vanta/fake/frameworks/BNotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method
