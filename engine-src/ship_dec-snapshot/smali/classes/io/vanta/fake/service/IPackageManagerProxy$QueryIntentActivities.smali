.class public Lio/vanta/fake/service/IPackageManagerProxy$QueryIntentActivities;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntentActivities"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "queryIntentActivities"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    const-class v0, Landroid/content/Intent;

    invoke-static {p3, v0}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v6, v0

    .line 147
    const-class v1, Ljava/lang/String;

    invoke-static {p3, v1}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    const-class v2, Ljava/lang/Integer;

    invoke-static {p3, v2}, Lio/vanta/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 151
    :cond_0
    invoke-static {v0}, Lio/vanta/fake/service/IPackageManagerProxy;->-$$Nest$smisFacebookAppIntent(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "PackageManagerStub"

    if-eqz v3, :cond_2

    .line 152
    const-string p1, "queryIntentActivities: Blocking Facebook app query"

    invoke-static {v4, p1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 159
    invoke-static {}, Lio/vanta/VantaCore;->getBPackageManager()Lio/vanta/fake/frameworks/BPackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lio/vanta/VantaCore;->getUserId()I

    move-result v5

    invoke-virtual {v3, v0, v2, v1, v5}, Lio/vanta/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const-string v7, "qIA-cell"

    invoke-static {v7, v6, v0}, Lio/vanta/fake/service/XjLineDiag;->xjLineLog(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 163
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 165
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_4

    invoke-static {}, Lio/vanta/fake/service/IPackageManagerProxy;->-$$Nest$sfgetFACEBOOK_PACKAGES()Ljava/util/Set;

    move-result-object p3

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "queryIntentActivities: Filtering out Facebook app: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 170
    :cond_5
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    invoke-static {v0}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    .line 177
    :cond_7
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    if-nez v0, :cond_8

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_8
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 183
    invoke-static {v0}, Lio/vanta/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v0
.end method
