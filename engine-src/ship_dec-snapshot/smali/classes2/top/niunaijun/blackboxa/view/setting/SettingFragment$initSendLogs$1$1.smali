.class public final Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.kt"

# interfaces
.implements Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->initSendLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1",
        "Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;",
        "onSuccess",
        "",
        "onFailure",
        "error",
        "",
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


# instance fields
.field final synthetic $sendLogsPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/setting/SettingFragment;


# direct methods
.method public static synthetic $r8$lambda$7MKTgFygaw-XSFEvRe1xgt7TLMU(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->onFailure$lambda$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_si81smMBSyLVLjd3VrlJ64OuQ(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->onSuccess$lambda$0(Landroidx/preference/Preference;)V

    return-void
.end method

.method constructor <init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->this$0:Ltop/niunaijun/blackboxa/view/setting/SettingFragment;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->$sendLogsPreference:Landroidx/preference/Preference;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onFailure$lambda$1(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private static final onSuccess$lambda$0(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->this$0:Ltop/niunaijun/blackboxa/view/setting/SettingFragment;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->$sendLogsPreference:Landroidx/preference/Preference;

    new-instance v1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 99
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->this$0:Ltop/niunaijun/blackboxa/view/setting/SettingFragment;

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;->$sendLogsPreference:Landroidx/preference/Preference;

    new-instance v2, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1$$ExternalSyntheticLambda1;-><init>(Landroidx/preference/Preference;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
