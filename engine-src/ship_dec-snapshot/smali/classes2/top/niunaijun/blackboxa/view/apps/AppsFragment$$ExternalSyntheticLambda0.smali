.class public final synthetic Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

.field public final synthetic f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackboxa/bean/AppInfo;Ltop/niunaijun/blackboxa/view/apps/AppsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;->$r8$lambda$QMQ1QzLhnwsdr5YQGJJBP_TibDA(Ltop/niunaijun/blackboxa/bean/AppInfo;Ltop/niunaijun/blackboxa/view/apps/AppsFragment;Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
