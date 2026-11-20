.class public Lio/vanta/fake/service/context/providers/SystemProviderStub;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "SystemProviderStub.java"

# interfaces
.implements Lio/vanta/fake/service/context/providers/BContentProvider;


# instance fields
.field private mBase:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private static getAuthenticAndroidId()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    return-object v0

    const-wide/16 v0, 0x0

    .line 20
    :try_start_5
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    .line 19
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    const/16 v3, 0x10

    .line 23
    invoke-static {v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_30

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v0

    .line 31
    :catchall_30
    :cond_30
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x75bcd15

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4d

    const-wide v2, 0x38a4f1092b7c4d5eL    # 7.877334150894318E-36

    .line 33
    :cond_4d
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGServicesDefaults()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v1, "gms:checkin:device_checkin_frequency"

    const-string v2, "86400000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "market_force_checkin"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "google_play_services_version"

    const-string v3, "233013000"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "finsky.user_language"

    const-string v3, "en"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "finsky.user_country"

    const-string v3, "US"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "finsky.show_services_updates"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "finsky.show_services_updates_opt_in"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "finsky.self_update_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "finsky.auto_update_enabled"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "gms:gservices:secure"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "gms:feedback:enabled"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "gms:auth:account_manager_enabled"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private isSystemProviderAuthority(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 325
    :cond_4
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "media"

    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "downloads"

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "contacts"

    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "call_log"

    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "telephony"

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "calendar"

    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "browser"

    .line 332
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "user_dictionary"

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "applications"

    .line 334
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "com.android."

    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "android."

    .line 336
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_66

    :cond_65
    return v0

    :cond_66
    :goto_66
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 63
    iget-object v0, p0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 81
    const-string v3, "asBinder"

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v2}, Lio/vanta/fake/XJProfile;->xjSecure([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v2}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInArgs([Ljava/lang/Object;)V

    iget-object v5, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lio/vanta/fake/XJProfile;->xjPatchSecure(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 82
    iget-object v3, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_35
    if-eqz v2, :cond_3d

    .line 85
    array-length v3, v2

    if-lez v3, :cond_3d

    .line 86
    invoke-static {v2}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInArgs([Ljava/lang/Object;)V

    .line 89
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v4, "query"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "gservices"

    const-string v6, "com.google.android.gsf.gservices"

    const-string v7, "0"

    const-string v8, "android_id"

    const-string v9, "value"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_270

    if-eqz v2, :cond_6a

    .line 93
    array-length v4, v2

    if-lez v4, :cond_6a

    .line 94
    array-length v4, v2

    move v13, v12

    :goto_5c
    if-ge v13, v4, :cond_6a

    aget-object v14, v2, v13

    .line 95
    instance-of v15, v14, Landroid/net/Uri;

    if-eqz v15, :cond_67

    .line 96
    check-cast v14, Landroid/net/Uri;

    goto :goto_6b

    :cond_67
    add-int/lit8 v13, v13, 0x1

    goto :goto_5c

    :cond_6a
    const/4 v14, 0x0

    :goto_6b
    if-eqz v14, :cond_270

    .line 101
    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_270

    .line 102
    :cond_81
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-virtual {v14}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d8

    .line 105
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d8

    .line 106
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "prefix"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 108
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v11, :cond_af

    .line 109
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_af
    move v4, v11

    goto :goto_d9

    .line 111
    :cond_b1
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "override"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v11, :cond_d8

    .line 113
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 116
    :cond_cf
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d8
    :goto_d8
    move v4, v12

    .line 119
    :goto_d9
    const-string v5, "name"

    if-eqz v2, :cond_163

    .line 120
    array-length v6, v2

    move v13, v12

    :goto_df
    if-ge v13, v6, :cond_163

    aget-object v14, v2, v13

    .line 121
    instance-of v15, v14, [Ljava/lang/String;

    if-eqz v15, :cond_134

    .line 122
    check-cast v14, [Ljava/lang/String;

    .line 124
    array-length v15, v14

    move v10, v12

    :goto_eb
    if-ge v10, v15, :cond_12f

    move/from16 v16, v11

    aget-object v11, v14, v10

    if-eqz v11, :cond_126

    .line 125
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_126

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_126

    move/from16 v17, v12

    const-string v12, "_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_128

    const-string v12, "count(*)"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_128

    .line 131
    array-length v10, v14

    move/from16 v11, v17

    :goto_114
    if-ge v11, v10, :cond_15b

    aget-object v12, v14, v11

    if-eqz v12, :cond_123

    .line 132
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_123

    .line 133
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_123
    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    :cond_126
    move/from16 v17, v12

    :cond_128
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    move/from16 v12, v17

    goto :goto_eb

    :cond_12f
    move/from16 v16, v11

    move/from16 v17, v12

    goto :goto_15b

    :cond_134
    move/from16 v16, v11

    move/from16 v17, v12

    .line 137
    instance-of v10, v14, Landroid/os/Bundle;

    if-eqz v10, :cond_15b

    .line 138
    check-cast v14, Landroid/os/Bundle;

    .line 139
    const-string v10, "android:query-arg-sql-selection-args"

    invoke-virtual {v14, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_15b

    .line 141
    array-length v11, v10

    move/from16 v12, v17

    :goto_149
    if-ge v12, v11, :cond_15b

    aget-object v14, v10, v12

    if-eqz v14, :cond_158

    .line 142
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_158

    .line 143
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_158
    add-int/lit8 v12, v12, 0x1

    goto :goto_149

    :cond_15b
    :goto_15b
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    move/from16 v12, v17

    goto/16 :goto_df

    :cond_163
    move/from16 v16, v11

    move/from16 v17, v12

    .line 153
    :try_start_167
    iget-object v6, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_175

    .line 155
    check-cast v1, Landroid/database/Cursor;
    :try_end_173
    .catchall {:try_start_167 .. :try_end_173} :catchall_175

    move-object v10, v1

    goto :goto_176

    :catchall_175
    :cond_175
    const/4 v10, 0x0

    .line 160
    :goto_176
    invoke-static {}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->getGServicesDefaults()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v10, :cond_1c0

    .line 162
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1c0

    .line 163
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 165
    :try_start_189
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1bf

    .line 166
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 167
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a8

    .line 168
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 169
    :cond_1a8
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v17

    aput-object v9, v2, v16

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 170
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1be
    .catchall {:try_start_189 .. :try_end_1be} :catchall_1bf

    return-object v3

    :catchall_1bf
    :cond_1bf
    return-object v10

    .line 180
    :cond_1c0
    new-instance v6, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v17

    aput-object v9, v2, v16

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v4, :cond_223

    .line 182
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d5
    :goto_1d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f7

    .line 184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1d5

    .line 186
    :cond_1f7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1fb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1d5

    .line 194
    :cond_223
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_249

    .line 195
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22d
    :goto_22d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_22d

    .line 198
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_22d

    :cond_249
    if-nez v10, :cond_26f

    .line 202
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_253
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_253

    :cond_26f
    return-object v6

    :cond_270
    move/from16 v16, v11

    move/from16 v17, v12

    .line 210
    const-string v4, "call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40c

    .line 215
    const-string v3, "get_string"

    const-string v4, "get_values"

    if-eqz v2, :cond_2c8

    .line 216
    array-length v10, v2

    move/from16 v11, v17

    move v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_289
    if-ge v11, v10, :cond_2cd

    move/from16 v18, v10

    aget-object v10, v2, v11

    move/from16 v19, v11

    .line 217
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_2bc

    .line 218
    check-cast v10, Ljava/lang/String;

    .line 219
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b9

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a4

    goto :goto_2b9

    .line 221
    :cond_2a4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b7

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b1

    goto :goto_2b7

    :cond_2b1
    if-nez v14, :cond_2c3

    if-eqz v13, :cond_2c3

    move-object v14, v10

    goto :goto_2c3

    :cond_2b7
    :goto_2b7
    move-object v13, v10

    goto :goto_2c3

    :cond_2b9
    :goto_2b9
    move/from16 v12, v16

    goto :goto_2c3

    .line 226
    :cond_2bc
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_2c3

    .line 227
    move-object v15, v10

    check-cast v15, Landroid/os/Bundle;

    :cond_2c3
    :goto_2c3
    add-int/lit8 v11, v19, 0x1

    move/from16 v10, v18

    goto :goto_289

    :cond_2c8
    move/from16 v12, v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_2cd
    if-nez v12, :cond_2db

    .line 232
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2db

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d8

    .line 235
    :cond_2db
    :try_start_2db
    iget-object v5, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 236
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_2e8

    .line 237
    check-cast v5, Landroid/os/Bundle;
    :try_end_2e7
    .catchall {:try_start_2db .. :try_end_2e7} :catchall_2e8

    goto :goto_2e9

    :catchall_2e8
    :cond_2e8
    const/4 v5, 0x0

    .line 242
    :goto_2e9
    invoke-static {}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->getGServicesDefaults()Ljava/util/Map;

    move-result-object v6

    .line 244
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_352

    if-eqz v5, :cond_32f

    .line 245
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32f

    .line 246
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_307

    if-eqz v14, :cond_307

    .line 248
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_307
    if-eqz v1, :cond_32f

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32f

    .line 251
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d7

    .line 252
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d7

    :cond_32f
    if-eqz v14, :cond_3d7

    .line 258
    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d7

    if-eqz v5, :cond_33a

    goto :goto_33f

    .line 259
    :cond_33a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 260
    :goto_33f
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 265
    :cond_352
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d5

    if-eqz v5, :cond_35b

    goto :goto_360

    .line 266
    :cond_35b
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :goto_360
    if-eqz v15, :cond_369

    .line 267
    const-string v1, "keys"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_36a

    :cond_369
    const/4 v10, 0x0

    :goto_36a
    if-eqz v10, :cond_394

    .line 268
    array-length v1, v10

    if-lez v1, :cond_394

    .line 269
    array-length v1, v10

    move/from16 v12, v17

    :goto_372
    if-ge v12, v1, :cond_3d4

    aget-object v2, v10, v12

    .line 270
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_386

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_391

    .line 271
    :cond_386
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_391

    .line 273
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_391
    add-int/lit8 v12, v12, 0x1

    goto :goto_372

    .line 278
    :cond_394
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39c
    :goto_39c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39c

    .line 280
    :cond_3c4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39c

    :cond_3d4
    return-object v5

    :cond_3d5
    if-eqz v5, :cond_3d8

    :cond_3d7
    :goto_3d7
    return-object v5

    :cond_3d8
    if-eqz v2, :cond_405

    .line 293
    invoke-static {}, Lvanta/android/content/BRAttributionSource;->getRealClass()Ljava/lang/Class;

    move-result-object v3

    move/from16 v12, v17

    .line 294
    :goto_3e0
    array-length v4, v2

    if-ge v12, v4, :cond_405

    .line 295
    aget-object v4, v2, v12

    if-eqz v4, :cond_402

    if-eqz v3, :cond_402

    .line 297
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_402

    .line 298
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v5

    invoke-static {v4, v5}, Lio/vanta/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V

    :cond_402
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e0

    .line 302
    :cond_405
    iget-object v3, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_40c
    if-eqz v2, :cond_447

    .line 305
    array-length v3, v2

    if-lez v3, :cond_447

    .line 306
    aget-object v3, v2, v17

    .line 307
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_426

    .line 308
    check-cast v3, Ljava/lang/String;

    .line 309
    invoke-direct {v0, v3}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->isSystemProviderAuthority(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_447

    .line 310
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v17

    goto :goto_447

    :cond_426
    if-eqz v3, :cond_447

    .line 313
    invoke-static {}, Lvanta/android/content/BRAttributionSource;->getRealClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_447

    .line 314
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_447

    .line 315
    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v4

    invoke-static {v3, v4}, Lio/vanta/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V

    .line 319
    :cond_447
    :goto_447
    iget-object v3, v0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
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

    .line 56
    iput-object p1, p0, Lio/vanta/fake/service/context/providers/SystemProviderStub;->mBase:Landroid/os/IInterface;

    .line 57
    invoke-virtual {p0}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->injectHook()V

    .line 58
    invoke-virtual {p0}, Lio/vanta/fake/service/context/providers/SystemProviderStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
