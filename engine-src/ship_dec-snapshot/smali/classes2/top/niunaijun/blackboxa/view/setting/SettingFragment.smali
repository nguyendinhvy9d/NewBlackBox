.class public final Ltop/niunaijun/blackboxa/view/setting/SettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0016\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/setting/SettingFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "initGms",
        "invalidHideState",
        "block",
        "Lkotlin/Function0;",
        "Landroidx/preference/Preference;",
        "initSendLogs",
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


# direct methods
.method public static synthetic $r8$lambda$-tYbeMF0EYEZPws9kfu1qy3e9eU(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->onCreatePreferences$lambda$2(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AI6beXoSPg6SlT4vmvpd1g7XSsE(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->invalidHideState$lambda$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CM-mqrmeXq_6661iIgmFKEujtSo(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->initGms$lambda$4(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U4bhgAXgh8SQOdK5NYnxU3i3qWU(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->onCreatePreferences$lambda$3(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gzg_afEbKM5EUwcJUuOuS2iEB7Y(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->initSendLogs$lambda$6(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j3SMB2ymHdnOSif-SBDIXzmq_Ag(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->onCreatePreferences$lambda$1(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xA8cAxahoUzllaIS2yzD16rEDvM(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 0

    invoke-static {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->onCreatePreferences$lambda$0(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private final initGms()V
    .locals 2

    .line 51
    const-string v0, "gms_manager"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->isSupportGms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void

    .line 60
    :cond_0
    sget v1, Ltop/niunaijun/blackboxa/R$string;->no_gms:I

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private static final initGms$lambda$4(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 1

    .line 56
    sget-object p1, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity;->Companion:Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;

    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ltop/niunaijun/blackboxa/view/gms/GmsManagerActivity$Companion;->start(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final initSendLogs()V
    .locals 2

    .line 90
    const-string v0, "send_logs"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private static final initSendLogs$lambda$6(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 93
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p2

    .line 97
    new-instance v0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;

    invoke-direct {v0, p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$initSendLogs$1$1;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;Landroidx/preference/Preference;)V

    check-cast v0, Ltop/niunaijun/blackbox/BlackBoxCore$LogSendListener;

    .line 94
    const-string p0, "Manual Log Upload from Settings"

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1, v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->sendLogs(Ljava/lang/String;ZLtop/niunaijun/blackbox/BlackBoxCore$LogSendListener;)V

    .line 107
    const-string p0, "Sending logs... (Check notifications for status)"

    invoke-static {p0}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(Ljava/lang/String;)V

    return p1
.end method

.method private final invalidHideState(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 67
    new-instance v0, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static final invalidHideState$lambda$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x17706f9e
    const-string v1, "daemon_enable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->invalidDaemonEnable(Z)V

    goto :goto_0

    .line 69
    :sswitch_1    # 0x1632ccd3
    const-string v1, "disable_flag_secure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->invalidDisableFlagSecure(Z)V

    goto :goto_0

    .line 69
    :sswitch_2    # -0x33b2ad81
    const-string v1, "root_hide"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->invalidHideRoot(Z)V

    goto :goto_0

    .line 69
    :sswitch_3    # -0x521458d5
    const-string v1, "use_vpn_network"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->invalidUseVpnNetwork(Z)V

    .line 85
    :cond_4
    :goto_0
    sget p0, Ltop/niunaijun/blackboxa/R$string;->restart_module:I

    invoke-static {p0}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(I)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x521458d5 -> :sswitch_3
        -0x33b2ad81 -> :sswitch_2
        0x1632ccd3 -> :sswitch_1
        0x17706f9e -> :sswitch_0

    .end sparse-switch
.end method

.method private static final onCreatePreferences$lambda$0(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 1

    .line 20
    const-string v0, "root_hide"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->hideRoot()Z

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final onCreatePreferences$lambda$1(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 1

    .line 27
    const-string v0, "daemon_enable"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->daemonEnable()Z

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final onCreatePreferences$lambda$2(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 1

    .line 34
    const-string v0, "use_vpn_network"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->useVpnNetwork()Z

    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final onCreatePreferences$lambda$3(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)Landroidx/preference/Preference;
    .locals 1

    .line 41
    const-string v0, "disable_flag_secure"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Ltop/niunaijun/blackboxa/app/AppManager;->getMBlackBoxLoader()Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackboxa/view/main/BlackBoxLoader;->disableFlagSecure()Z

    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 15
    sget p1, Ltop/niunaijun/blackboxa/R$xml;->setting:I

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->initGms()V

    .line 19
    new-instance p1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda3;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)V

    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->invalidHideState(Lkotlin/jvm/functions/Function0;)V

    .line 26
    new-instance p1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda4;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)V

    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->invalidHideState(Lkotlin/jvm/functions/Function0;)V

    .line 33
    new-instance p1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda5;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)V

    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->invalidHideState(Lkotlin/jvm/functions/Function0;)V

    .line 40
    new-instance p1, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment$$ExternalSyntheticLambda6;-><init>(Ltop/niunaijun/blackboxa/view/setting/SettingFragment;)V

    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->invalidHideState(Lkotlin/jvm/functions/Function0;)V

    .line 47
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/setting/SettingFragment;->initSendLogs()V

    return-void
.end method
