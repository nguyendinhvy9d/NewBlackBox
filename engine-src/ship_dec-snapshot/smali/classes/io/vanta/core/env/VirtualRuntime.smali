.class public Lio/vanta/core/env/VirtualRuntime;
.super Ljava/lang/Object;
.source "VirtualRuntime.java"


# static fields
.field private static sInitialPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialPackageName()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lio/vanta/core/env/VirtualRuntime;->sInitialPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lio/vanta/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 22
    sget-object v0, Lio/vanta/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object p1, Lio/vanta/core/env/VirtualRuntime;->sInitialPackageName:Ljava/lang/String;

    .line 26
    sput-object p0, Lio/vanta/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    .line 27
    invoke-static {}, Lvanta/android/os/BRProcess;->get()Lvanta/android/os/ProcessStatic;

    move-result-object p1

    invoke-interface {p1, p0}, Lvanta/android/os/ProcessStatic;->setArgV0(Ljava/lang/String;)Ljava/lang/Void;

    .line 28
    invoke-static {}, Lvanta/android/ddm/BRDdmHandleAppName;->get()Lvanta/android/ddm/DdmHandleAppNameStatic;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lvanta/android/ddm/DdmHandleAppNameStatic;->setAppName(Ljava/lang/String;I)Ljava/lang/Void;

    return-void
.end method
