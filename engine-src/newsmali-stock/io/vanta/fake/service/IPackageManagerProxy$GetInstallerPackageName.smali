.class public Lio/vanta/fake/service/IPackageManagerProxy$GetInstallerPackageName;
.super Lio/vanta/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetInstallerPackageName"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "getInstallerPackageName"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 465
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

    .line 469
    const-string p1, "com.android.vending"

    return-object p1
.end method
