.class public final synthetic Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

.field public final synthetic f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackboxa/bean/AppInfo;Ltop/niunaijun/blackboxa/view/apps/AppsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda5;->f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda5;->f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda5;->f$0:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsFragment$$ExternalSyntheticLambda5;->f$1:Ltop/niunaijun/blackboxa/view/apps/AppsFragment;

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsFragment;->$r8$lambda$dzBBgc8vKIm1iXq8735ZIahtEu4(Ltop/niunaijun/blackboxa/bean/AppInfo;Ltop/niunaijun/blackboxa/view/apps/AppsFragment;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
