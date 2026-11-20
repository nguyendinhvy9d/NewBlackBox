.class public Lio/vanta/fake/service/context/providers/ContentProviderStub;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ContentProviderStub.java"

# interfaces
.implements Lio/vanta/fake/service/context/providers/BContentProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentProviderStub"


# instance fields
.field private mAppPkg:Ljava/lang/String;

.field private mBase:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private fixAttributionSourceUid(Ljava/lang/Object;)V
    .registers 2

    .line 167
    invoke-static {p1}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceUid(Ljava/lang/Object;)V

    return-void
.end method

.method private getSafeDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_e8

    goto :goto_49

    .line 73
    :sswitch_13
    const-string v0, "query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_49

    :cond_1c
    const/4 v5, 0x4

    goto :goto_49

    :sswitch_1e
    const-string v0, "call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_49

    :cond_27
    const/4 v5, 0x3

    goto :goto_49

    :sswitch_29
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_49

    :cond_32
    move v5, v1

    goto :goto_49

    :sswitch_34
    const-string v0, "bulkInsert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_49

    :cond_3d
    move v5, v2

    goto :goto_49

    :sswitch_3f
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    move v5, v3

    :goto_49
    packed-switch v5, :pswitch_data_fe

    const/4 p1, 0x0

    return-object p1

    .line 75
    :pswitch_4e
    new-instance p1, Landroid/database/MatrixCursor;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    const-string v0, "android_id"

    const-string v1, "4081652183991078238"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 77
    const-string v0, "gms:checkin:device_checkin_frequency"

    const-string v1, "86400000"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 78
    const-string v0, "market_force_checkin"

    const-string v1, "false"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 79
    const-string v0, "google_play_services_version"

    const-string v2, "233013000"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 80
    const-string v0, "finsky.user_language"

    const-string v2, "en"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 81
    const-string v0, "finsky.user_country"

    const-string v2, "US"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 82
    const-string v0, "finsky.show_services_updates"

    const-string v2, "true"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 83
    const-string v0, "finsky.show_services_updates_opt_in"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 84
    const-string v0, "finsky.self_update_enabled"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 85
    const-string v0, "finsky.auto_update_enabled"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 86
    const-string v0, "gms:gservices:secure"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 87
    const-string v0, "gms:feedback:enabled"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 88
    const-string v0, "gms:auth:account_manager_enabled"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    .line 99
    :pswitch_e1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :pswitch_e7
    return-object v4

    :sswitch_data_e8
    .sparse-switch
        -0x4f997a55 -> :sswitch_3f
        -0x468c9595 -> :sswitch_34
        -0x31ffc737 -> :sswitch_29
        0x2e7a5e -> :sswitch_1e
        0x66f18c8 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_e7
        :pswitch_e7
        :pswitch_e1
        :pswitch_4e
    .end packed-switch
.end method

.method private getSafeDefaultValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_7

    .line 143
    invoke-direct {p0, p1}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->getSafeDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 147
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_e

    .line 148
    const-string p1, "true"

    return-object p1

    .line 149
    :cond_e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_55

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_18

    goto :goto_55

    .line 151
    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_4e

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_21

    goto :goto_4e

    .line 153
    :cond_21
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_47

    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_2a

    goto :goto_47

    .line 155
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_42

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_33

    goto :goto_42

    .line 157
    :cond_33
    const-class v0, Landroid/os/Bundle;

    if-ne p2, v0, :cond_3d

    .line 158
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    .line 162
    :cond_3d
    invoke-direct {p0, p1}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->getSafeDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 156
    :cond_42
    :goto_42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_47
    :goto_47
    const/high16 p1, 0x3f800000    # 1.0f

    .line 154
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4e
    :goto_4e
    const-wide/16 p1, 0x1

    .line 152
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 150
    :cond_55
    :goto_55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private isSystemProviderAuthority(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 115
    :cond_4
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "settings_global"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "settings_system"

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "settings_secure"

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "media"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "telephony"

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.provider.Settings"

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return v0

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    return p1
.end method

.method private isUidMismatchError(Ljava/lang/Throwable;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 128
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return v0

    .line 132
    :cond_b
    const-string v1, "Calling uid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "doesn\'t match source uid"

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_1b
    const-string v1, "uid"

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "permission"

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_2b
    const-string v1, "SecurityException"

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "UID mismatch"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 30
    iget-object v0, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    const-string p1, "asBinder"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 46
    iget-object p1, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :cond_13
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_4a

    .line 51
    array-length v0, p3

    if-lez v0, :cond_4a

    .line 52
    invoke-static {p3}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInArgs([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 53
    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-direct {p0, v1}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->isSystemProviderAuthority(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 56
    iget-object v1, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mAppPkg:Ljava/lang/String;

    aput-object v1, p3, v0

    goto :goto_4a

    :cond_33
    if-eqz v1, :cond_4a

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AttributionSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 59
    aget-object v0, p3, v0

    invoke-direct {p0, v0}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->fixAttributionSourceUid(Ljava/lang/Object;)V

    .line 64
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_51

    return-object p1

    :catchall_51
    move-exception p3

    .line 66
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    .line 67
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProvider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", returning safe default"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ContentProviderStub"

    invoke-static {v0, p3}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->getSafeDefaultValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

.method public wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3

    .line 22
    iput-object p1, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    .line 23
    iput-object p2, p0, Lio/vanta/fake/service/context/providers/ContentProviderStub;->mAppPkg:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->injectHook()V

    .line 25
    invoke-virtual {p0}, Lio/vanta/fake/service/context/providers/ContentProviderStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
