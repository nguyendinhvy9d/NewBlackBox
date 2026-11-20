.class public Lio/vanta/fake/service/libcore/OsStub;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "OsStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/libcore/OsStub$stat;,
        Lio/vanta/fake/service/libcore/OsStub$getuid;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OsStub"


# instance fields
.field private mBase:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smgetFakeUid(I)I
    .locals 0

    invoke-static {p0}, Lio/vanta/fake/service/libcore/OsStub;->getFakeUid(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    .line 22
    invoke-static {}, Lvanta/libnomad/io/BRLibcore;->get()Lvanta/libnomad/io/LibcoreStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/libnomad/io/LibcoreStatic;->os()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    return-void
.end method

.method private static getFakeUid(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x2710

    if-gt p0, v0, :cond_0

    return p0

    .line 92
    :cond_0
    invoke-static {}, Lio/vanta/app/BActivityThread;->isThreadInit()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lio/vanta/app/BActivityThread;->currentActivityThread()Lio/vanta/app/BActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Lio/vanta/app/BActivityThread;->isInit()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 93
    invoke-static {}, Lio/vanta/app/BActivityThread;->getBAppId()I

    move-result p0

    return p0

    .line 95
    :cond_1
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/vanta/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {}, Lvanta/libnomad/io/BRLibcore;->get()Lvanta/libnomad/io/LibcoreStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lvanta/libnomad/io/LibcoreStatic;->_set_os(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 48
    aget-object v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-static {}, Lio/vanta/core/IOCore;->get()Lio/vanta/core/IOCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/vanta/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 2

    .line 41
    invoke-static {}, Lvanta/libnomad/io/BRLibcore;->get()Lvanta/libnomad/io/LibcoreStatic;

    move-result-object v0

    invoke-interface {v0}, Lvanta/libnomad/io/LibcoreStatic;->os()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lio/vanta/fake/service/libcore/OsStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method
