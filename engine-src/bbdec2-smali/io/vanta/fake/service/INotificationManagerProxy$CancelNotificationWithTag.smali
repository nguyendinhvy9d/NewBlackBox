.class public Lio/vanta/fake/service/INotificationManagerProxy$CancelNotificationWithTag;
.super Lio/vanta/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelNotificationWithTag"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "cancelNotificationWithTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdIndex()I
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getTagIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTagIndex()I
    .locals 1

    .line 88
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getTagIndex()I

    move-result p1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lio/vanta/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getIdIndex()I

    move-result p2

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 83
    invoke-static {}, Lio/vanta/fake/frameworks/BNotificationManager;->get()Lio/vanta/fake/frameworks/BNotificationManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lio/vanta/fake/frameworks/BNotificationManager;->cancelNotificationWithTag(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
