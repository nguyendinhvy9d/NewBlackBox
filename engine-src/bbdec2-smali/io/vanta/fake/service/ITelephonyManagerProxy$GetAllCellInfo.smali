.class public Lio/vanta/fake/service/ITelephonyManagerProxy$GetAllCellInfo;
.super Lio/vanta/fake/hook/MethodHook;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ITelephonyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAllCellInfo"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getAllCellInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 169
    invoke-static {}, Lio/vanta/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object p1

    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p2

    invoke-static {}, Lio/vanta/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/vanta/fake/frameworks/BLocationManager;->getAllCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 174
    :cond_17
    :try_start_17
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1c

    return-object p1

    :catchall_1c
    const/4 p1, 0x0

    return-object p1
.end method
