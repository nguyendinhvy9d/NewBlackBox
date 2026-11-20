.class public final synthetic Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ltop/niunaijun/blackboxa/bean/AppInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iput p3, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackboxa/bean/AppInfo;

    iget v2, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    move-object v4, p1

    check-cast v4, Lcom/afollestad/materialdialogs/MaterialDialog;

    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static/range {v0 .. v5}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->$r8$lambda$LlPkFiwxV0D-A8PHdVPppdUgBQs(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
