.class public final synthetic Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackboxa/view/apps/AppsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda7;->f$0:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda7;->f$0:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    check-cast p1, Landroid/view/View;

    check-cast p2, Ltop/niunaijun/blackboxa/bean/AppInfo;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;->$r8$lambda$eB-gbZCyp2uCSqHdfwgarw-6ZFw(Ltop/niunaijun/blackboxa/view/apps/AppsFragment;Landroid/view/View;Ltop/niunaijun/blackboxa/bean/AppInfo;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
