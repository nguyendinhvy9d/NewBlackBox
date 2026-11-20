.class final Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->launchApk(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "top.niunaijun.blackboxa.view.apps.AppsViewModel$launchApk$1"
    f = "AppsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $userID:I

.field label:I

.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$packageName:Ljava/lang/String;

    iput p3, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$userID:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$packageName:Ljava/lang/String;

    iget v2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$userID:I

    invoke-direct {p1, v0, v1, v2, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 71
    iget v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;

    invoke-static {p1}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->access$getRepo$p(Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;)Ltop/niunaijun/blackboxa/data/AppsRepository;

    move-result-object p1

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$packageName:Ljava/lang/String;

    iget v1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->$userID:I

    iget-object v2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel$launchApk$1;->this$0:Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/view/apps/AppsViewModel;->getLaunchLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ltop/niunaijun/blackboxa/data/AppsRepository;->launchApk(Ljava/lang/String;ILandroidx/lifecycle/MutableLiveData;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
