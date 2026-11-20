.class public Lio/vanta/fake/service/ReLinkerProxy$LoadLibrary;
.super Lio/vanta/fake/hook/MethodHook;
.source "ReLinkerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/ReLinkerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadLibrary"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "loadLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
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

    .line 38
    const-string p1, "ReLinkerProxy"

    const-string p2, "ReLinker: loadLibrary called, intercepting to prevent MissingLibraryException"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
