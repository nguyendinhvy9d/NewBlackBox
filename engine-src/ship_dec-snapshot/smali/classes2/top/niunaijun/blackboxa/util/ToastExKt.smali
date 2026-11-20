.class public final Ltop/niunaijun/blackboxa/util/ToastExKt;
.super Ljava/lang/Object;
.source "ToastEx.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c\"\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "toastImpl",
        "Landroid/widget/Toast;",
        "getToastImpl",
        "()Landroid/widget/Toast;",
        "setToastImpl",
        "(Landroid/widget/Toast;)V",
        "toast",
        "",
        "Landroid/content/Context;",
        "msg",
        "",
        "msgID",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static toastImpl:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getToastImpl()Landroid/widget/Toast;
    .locals 1

    .line 9
    sget-object v0, Ltop/niunaijun/blackboxa/util/ToastExKt;->toastImpl:Landroid/widget/Toast;

    return-object v0
.end method

.method public static final setToastImpl(Landroid/widget/Toast;)V
    .locals 0

    .line 9
    sput-object p0, Ltop/niunaijun/blackboxa/util/ToastExKt;->toastImpl:Landroid/widget/Toast;

    return-void
.end method

.method public static final toast(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ltop/niunaijun/blackboxa/util/ResUtilKt;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Ltop/niunaijun/blackboxa/util/ToastExKt;->toastImpl:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 13
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Ltop/niunaijun/blackboxa/util/ToastExKt;->toastImpl:Landroid/widget/Toast;

    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static final toast(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
