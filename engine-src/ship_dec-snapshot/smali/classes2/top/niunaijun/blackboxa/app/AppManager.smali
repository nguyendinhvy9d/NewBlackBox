.class public final Ltop/niunaijun/blackboxa/app/AppManager;
.super Ljava/lang/Object;
.source "AppManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u0006\u001a\u00020\u00078FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\u0008\u0010\u0003\u001a\u0004\u0008\t\u0010\nR!\u0010\r\u001a\u00020\u000e8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u0012\u0004\u0008\u000f\u0010\u0003\u001a\u0004\u0008\u0010\u0010\u0011R!\u0010\u0013\u001a\u00020\u00148FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u000c\u0012\u0004\u0008\u0015\u0010\u0003\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/app/AppManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "mBlackBoxLoader",
        "Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;",
        "getMBlackBoxLoader$annotations",
        "getMBlackBoxLoader",
        "()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;",
        "mBlackBoxLoader$delegate",
        "Lkotlin/Lazy;",
        "mBlackBoxCore",
        "Ltop/niunaijun/blackbox/BlackBoxCore;",
        "getMBlackBoxCore$annotations",
        "getMBlackBoxCore",
        "()Ltop/niunaijun/blackbox/BlackBoxCore;",
        "mBlackBoxCore$delegate",
        "mRemarkSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getMRemarkSharedPreferences$annotations",
        "getMRemarkSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "mRemarkSharedPreferences$delegate",
        "doAttachBaseContext",
        "",
        "context",
        "Landroid/content/Context;",
        "doOnCreate",
        "initThirdService",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltop/niunaijun/blackboxa/app/AppManager;

.field private static final TAG:Ljava/lang/String; = "AppManager"

.field private static final mBlackBoxCore$delegate:Lkotlin/Lazy;

.field private static final mBlackBoxLoader$delegate:Lkotlin/Lazy;

.field private static final mRemarkSharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$O0966PSzmevJEv2Z1QccSEsKqEQ()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;
    .locals 1

    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxLoader_delegate$lambda$0()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VIdKmJSUjpNhDf3JgUSiyweYaJ8()Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->mRemarkSharedPreferences_delegate$lambda$2()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XEo3Dy_l5g1WzIlyzpRbst90wXw()Ltop/niunaijun/blackbox/BlackBoxCore;
    .locals 1

    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxCore_delegate$lambda$1()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltop/niunaijun/blackboxa/app/AppManager;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/app/AppManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->INSTANCE:Ltop/niunaijun/blackboxa/app/AppManager;

    .line 13
    new-instance v0, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxLoader$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxCore$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/app/AppManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mRemarkSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMBlackBoxCore()Ltop/niunaijun/blackbox/BlackBoxCore;
    .locals 1

    .line 24
    sget-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxCore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/BlackBoxCore;

    return-object v0
.end method

.method public static synthetic getMBlackBoxCore$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;
    .locals 1

    .line 13
    sget-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mBlackBoxLoader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    return-object v0
.end method

.method public static synthetic getMBlackBoxLoader$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getMRemarkSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 34
    sget-object v0, Ltop/niunaijun/blackboxa/app/AppManager;->mRemarkSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic getMRemarkSharedPreferences$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final initThirdService(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private static final mBlackBoxCore_delegate$lambda$1()Ltop/niunaijun/blackbox/BlackBoxCore;
    .locals 4

    .line 26
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->getBlackBoxCore()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting BlackBoxCore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    throw v0
.end method

.method private static final mBlackBoxLoader_delegate$lambda$0()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;
    .locals 3

    .line 15
    :try_start_0
    new-instance v0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;-><init>()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating BlackBoxLoader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;-><init>()V

    return-object v0
.end method

.method private static final mRemarkSharedPreferences_delegate$lambda$2()Landroid/content/SharedPreferences;
    .locals 4

    .line 36
    :try_start_0
    sget-object v0, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UserRemark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating SharedPreferences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    throw v0
.end method


# virtual methods
.method public final doAttachBaseContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->attachBaseContext(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p1

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->addLifecycleCallback()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in doAttachBaseContext: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doOnCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->doOnCreate(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/app/AppManager;->initThirdService(Landroid/content/Context;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in doOnCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
