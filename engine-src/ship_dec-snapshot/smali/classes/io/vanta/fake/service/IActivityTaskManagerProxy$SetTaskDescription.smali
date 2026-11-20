.class public Lio/vanta/fake/service/IActivityTaskManagerProxy$SetTaskDescription;
.super Lio/vanta/fake/hook/MethodHook;
.source "IActivityTaskManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IActivityTaskManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetTaskDescription"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "setTaskDescription"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    aget-object v1, p3, v0

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    .line 50
    invoke-static {v1}, Lio/vanta/utils/compat/TaskDescriptionCompat;->fix(Landroid/app/ActivityManager$TaskDescription;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    aput-object v1, p3, v0

    .line 51
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
