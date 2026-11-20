.class public Lio/vanta/fake/service/INotificationManagerProxy$GetNotificationChannelGroups;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNotificationChannelGroups"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getNotificationChannelGroups"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 172
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

    .line 176
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/vanta/fake/frameworks/BNotificationManager;->getNotificationChannelGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-static {p1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
