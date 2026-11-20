.class public final Ltop/niunaijun/blackboxa/util/ShortcutUtil;
.super Ljava/lang/Object;
.source "ShortcutUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortcutUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutUtil.kt\ntop/niunaijun/blackboxa/util/ShortcutUtil\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,77:1\n362#2,4:78\n362#2,4:82\n*S KotlinDebug\n*F\n+ 1 ShortcutUtil.kt\ntop/niunaijun/blackboxa/util/ShortcutUtil\n*L\n31#1:78,4\n63#1:82,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/util/ShortcutUtil;",
        "",
        "<init>",
        "()V",
        "createShortcut",
        "",
        "context",
        "Landroid/content/Context;",
        "userID",
        "",
        "info",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        "showAllowPermissionDialog",
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
.field public static final INSTANCE:Ltop/niunaijun/blackboxa/util/ShortcutUtil;


# direct methods
.method public static synthetic $r8$lambda$4U0yGMm_i4qnjX1u0ZdldfVzyCo(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->showAllowPermissionDialog$lambda$4$lambda$3(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LlPkFiwxV0D-A8PHdVPppdUgBQs(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->createShortcut$lambda$1$lambda$0(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W4m1RdTCKRfVpXLuFKESyD7iEyc(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->showAllowPermissionDialog$lambda$4$lambda$2(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltop/niunaijun/blackboxa/util/ShortcutUtil;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/ShortcutUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createShortcut$lambda$1$lambda$0(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)Lkotlin/Unit;
    .locals 6

    const-string v0, "<unused var>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "input"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p4, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p0, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p4, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    .line 42
    invoke-virtual {p2, p5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 46
    invoke-static {p0, p1, p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    .line 47
    sget-object p1, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/ShortcutUtil;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/util/ShortcutUtil;->showAllowPermissionDialog(Landroid/content/Context;)V

    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showAllowPermissionDialog(Landroid/content/Context;)V
    .locals 7

    .line 59
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->showShortcutPermissionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    sget p1, Ltop/niunaijun/blackboxa/R$string;->try_add_shortcut:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1, v0, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 65
    sget p1, Ltop/niunaijun/blackboxa/R$string;->add_shortcut_fail_msg:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 66
    sget p1, Ltop/niunaijun/blackboxa/R$string;->done:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 67
    sget p1, Ltop/niunaijun/blackboxa/R$string;->permission_setting:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 71
    sget p1, Ltop/niunaijun/blackboxa/R$string;->no_reminders:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 84
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method private static final showAllowPermissionDialog$lambda$4$lambda$2(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object p0, Ltop/niunaijun/blackboxa/util/ContextUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/ContextUtil;

    sget-object v0, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/util/ContextUtil;->openAppSystemSettings(Landroid/content/Context;)V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showAllowPermissionDialog$lambda$4$lambda$3(Lcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->invalidShortcutPermissionDialog(Z)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final createShortcut(Landroid/content/Context;ILtop/niunaijun/blackboxa/bean/AppInfo;)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "info"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    new-instance v4, Landroid/content/Intent;

    const-class v5, Ltop/niunaijun/blackboxa/view/main/ShortcutActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 29
    const-string v5, "pkg"

    invoke-virtual {v2}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 30
    const-string v5, "userId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "putExtra(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v6, Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-direct {v6, v0, v5, v7, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    sget v8, Ltop/niunaijun/blackboxa/R$string;->app_shortcut:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8, v5, v7, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 34
    sget v5, Ltop/niunaijun/blackboxa/R$string;->shortcut_name:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 35
    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    .line 33
    new-instance v15, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;

    invoke-direct {v15, v0, v2, v1, v4}, Ltop/niunaijun/blackboxa/util/ShortcutUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ltop/niunaijun/blackboxa/bean/AppInfo;ILandroid/content/Intent;)V

    const/16 v16, 0xf9

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v17}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->input$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 49
    sget v0, Ltop/niunaijun/blackboxa/R$string;->done:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 50
    sget v0, Ltop/niunaijun/blackboxa/R$string;->cancel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v6 .. v11}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 80
    invoke-virtual {v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void

    .line 54
    :cond_0
    sget v0, Ltop/niunaijun/blackboxa/R$string;->cannot_create_shortcut:I

    invoke-static {v0}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(I)V

    return-void
.end method
