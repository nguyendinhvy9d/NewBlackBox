.class public Lio/vanta/fake/service/ReLinkerProxy$LoadLibraryWithContext;
.super Lio/vanta/fake/hook/MethodHook;
.source "ReLinkerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ReLinkerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadLibraryWithContext"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "loadLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
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

    if-eqz p3, :cond_0

    .line 51
    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 52
    aget-object p1, p3, p2

    check-cast p1, Ljava/lang/String;

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ReLinker: loadLibrary called for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReLinkerProxy"

    invoke-static {p2, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
