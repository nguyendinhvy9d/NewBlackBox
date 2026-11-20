.class public Lio/vanta/fake/service/IUserManagerProxy$GetUserHandle;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUserHandle"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getUserHandle"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 315
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

    .line 318
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    if-eqz p3, :cond_16

    .line 319
    array-length p2, p3

    if-lez p2, :cond_16

    const/4 p2, 0x0

    aget-object p2, p3, p2

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_16

    .line 320
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 322
    :cond_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
