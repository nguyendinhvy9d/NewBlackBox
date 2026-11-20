.class public Lio/vanta/fake/service/IUserManagerProxy$IsUserOfType;
.super Lio/vanta/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsUserOfType"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "isUserOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 200
    invoke-static {}, Lio/vanta/app/BActivityThread;->getUserId()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 203
    array-length v1, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 204
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 205
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 206
    :cond_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 207
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const-string p3, "android.os.usertype.full.SYSTEM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p1, :cond_3

    const/4 p2, 0x1

    .line 212
    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 214
    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
