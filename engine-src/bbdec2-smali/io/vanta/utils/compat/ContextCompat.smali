.class public Lio/vanta/utils/compat/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/content/Context;)V
    .registers 5

    .line 63
    const-string v0, "ContextCompat"

    if-nez p0, :cond_a

    .line 64
    :try_start_4
    const-string p0, "Context is null, skipping ContextCompat.fix"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 69
    :cond_b
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1d

    .line 70
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_b

    goto/16 :goto_c2

    :cond_1d
    if-nez p0, :cond_25

    .line 79
    const-string p0, "Base context is null after unwrapping, skipping ContextCompat.fix"

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_25
    invoke-static {p0}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lvanta/android/app/ContextImplContext;->_set_mPackageManager(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_a8

    .line 85
    :try_start_2d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v1

    .line 87
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_35
    invoke-static {p0}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lvanta/android/app/ContextImplContext;->_set_mBasePackageName(Ljava/lang/Object;)V

    .line 91
    invoke-static {p0}, Lvanta/android/app/BRContextImplKitkat;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplKitkatContext;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lvanta/android/app/ContextImplKitkatContext;->_set_mOpPackageName(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4b} :catch_a8

    .line 94
    :try_start_4b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lvanta/android/content/BRContentResolver;->get(Ljava/lang/Object;)Lvanta/android/content/ContentResolverContext;

    move-result-object v1

    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lvanta/android/content/ContentResolverContext;->_set_mPackageName(Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_5b

    goto :goto_76

    :catch_5b
    move-exception v1

    .line 96
    :try_start_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fix content resolver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_76
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isS()Z

    move-result v1
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7a} :catch_a8

    if-eqz v1, :cond_c2

    .line 103
    :try_start_7c
    invoke-static {p0}, Lvanta/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lvanta/android/app/ContextImplContext;

    move-result-object p0

    invoke-interface {p0}, Lvanta/android/app/ContextImplContext;->getAttributionSource()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lio/vanta/VantaCore;->getHostUid()I

    move-result v1

    invoke-static {p0, v1}, Lio/vanta/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8b} :catch_8c

    goto :goto_c2

    :catch_8c
    move-exception p0

    .line 105
    :try_start_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fix attribution source state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a7} :catch_a8

    goto :goto_c2

    :catch_a8
    move-exception p0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in ContextCompat.fix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public static fixAttributionSourceState(Ljava/lang/Object;I)V
    .registers 5

    if-nez p0, :cond_4

    goto/16 :goto_93

    .line 24
    :cond_4
    :try_start_4
    invoke-static {p0}, Lvanta/android/content/BRAttributionSource;->get(Ljava/lang/Object;)Lvanta/android/content/AttributionSourceContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/AttributionSourceContext;->_check_mAttributionSourceState()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 25
    invoke-static {p0}, Lvanta/android/content/BRAttributionSource;->get(Ljava/lang/Object;)Lvanta/android/content/AttributionSourceContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/AttributionSourceContext;->mAttributionSourceState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 27
    invoke-static {v0}, Lvanta/android/content/BRAttributionSourceState;->get(Ljava/lang/Object;)Lvanta/android/content/AttributionSourceStateContext;

    move-result-object v0

    .line 28
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/content/AttributionSourceStateContext;->_set_packageName(Ljava/lang/Object;)V

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/content/AttributionSourceStateContext;->_set_uid(Ljava/lang/Object;)V

    .line 31
    :cond_2a
    invoke-static {p0}, Lvanta/android/content/BRAttributionSource;->get(Ljava/lang/Object;)Lvanta/android/content/AttributionSourceContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/AttributionSourceContext;->_check_getNext()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 32
    invoke-static {p0}, Lvanta/android/content/BRAttributionSource;->get(Ljava/lang/Object;)Lvanta/android/content/AttributionSourceContext;

    move-result-object v0

    invoke-interface {v0}, Lvanta/android/content/AttributionSourceContext;->getNext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 34
    invoke-static {v0, p1}, Lio/vanta/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_42

    goto :goto_5b

    :catchall_42
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BRAttributionSource error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextCompat"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAttributionSourceState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_93

    if-eqz p0, :cond_93

    .line 47
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_7f

    .line 52
    :catchall_7f
    :try_start_7f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-static {}, Lio/vanta/VantaCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_93

    :catchall_93
    :cond_93
    :goto_93
    return-void
.end method
