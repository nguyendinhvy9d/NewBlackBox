.class public Lio/vanta/fake/service/ILocaleManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "ILocaleManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ILocaleManagerProxy$GetApplicationLocales;,
        Lio/vanta/fake/service/ILocaleManagerProxy$SetApplicationLocales;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "locale"

.field public static final TAG:Ljava/lang/String; = "ILocaleManagerProxy"

.field private static final sLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRawBinder:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsLocales()Ljava/util/Map;
    .registers 1

    sget-object v0, Lio/vanta/fake/service/ILocaleManagerProxy;->sLocales:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/fake/service/ILocaleManagerProxy;->sLocales:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "locale"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/ILocaleManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 30
    iput-object p1, p0, Lio/vanta/fake/service/ILocaleManagerProxy;->mRawBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 7

    .line 35
    iget-object v0, p0, Lio/vanta/fake/service/ILocaleManagerProxy;->mRawBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 37
    :cond_6
    :try_start_6
    const-string v0, "android.app.ILocaleManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lio/vanta/fake/service/ILocaleManagerProxy;->mRawBinder:Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWho error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ILocaleManagerProxy"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 48
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object p1

    const-string p2, "locale"

    invoke-interface {p1, p2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 49
    invoke-virtual {p0, p2}, Lio/vanta/fake/service/ILocaleManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 50
    const-string p1, "ILocaleManagerProxy"

    const-string p2, "Hooked ILocaleManager"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public isBadEnv()Z
    .registers 3

    .line 56
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "locale"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eq v0, p0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
