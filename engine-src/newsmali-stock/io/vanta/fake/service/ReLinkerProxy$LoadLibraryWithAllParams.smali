.class public Lio/vanta/fake/service/ReLinkerProxy$LoadLibraryWithAllParams;
.super Lio/vanta/fake/hook/MethodHook;
.source "ReLinkerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ReLinkerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadLibraryWithAllParams"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "loadLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
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

    if-eqz p3, :cond_2d

    .line 66
    array-length p1, p3

    const/4 p2, 0x2

    if-le p1, p2, :cond_2d

    const/4 p1, 0x1

    .line 67
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 68
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ReLinker: loadLibrary called for: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " version: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReLinkerProxy"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method
