.class public Lio/vanta/fake/service/IJobServiceProxy$Enqueue;
.super Lio/vanta/fake/hook/MethodHook;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enqueue"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "enqueue"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private isUIDValidationError(Ljava/lang/Exception;)Z
    .registers 6

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    const-string v2, "cannot schedule job"

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    return v3

    .line 248
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/RemoteException;

    if-eqz v0, :cond_37

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    return v1

    :cond_37
    return v3
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    const-string v2, "JobServiceStub"

    if-eqz p3, :cond_6e

    :try_start_9
    array-length v3, p3

    if-nez v3, :cond_d

    goto :goto_6e

    .line 201
    :cond_d
    :goto_d
    array-length v3, p3

    const/4 v4, -0x1

    if-ge v0, v3, :cond_1b

    .line 202
    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/app/job/JobInfo;

    if-eqz v3, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    move v0, v4

    :goto_1c
    if-eq v0, v4, :cond_62

    .line 209
    aget-object v3, p3, v0

    check-cast v3, Landroid/app/job/JobInfo;

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enqueue: Processing JobInfo for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3e

    :cond_3c
    const-string v5, "unknown"

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_6c

    .line 212
    :try_start_49
    invoke-static {}, Lio/vanta/VantaCore;->getBJobManager()Lio/vanta/fake/frameworks/BJobManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/vanta/fake/frameworks/BJobManager;->schedule(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 214
    aput-object v3, p3, v0

    .line 215
    const-string v0, "Enqueue: Successfully created proxy JobInfo"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_5b

    goto :goto_67

    :catch_5b
    move-exception v0

    .line 218
    :try_start_5c
    const-string v3, "Enqueue: VantaCore job manager failed, trying system fallback"

    invoke-static {v2, v3, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 221
    :cond_62
    const-string v0, "Enqueue: No JobInfo in args, delegating directly"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_67
    :goto_67
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_6c
    move-exception v0

    goto :goto_78

    .line 196
    :cond_6e
    :goto_6e
    const-string v0, "Enqueue: No arguments provided"

    invoke-static {v2, v0}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_77} :catch_6c

    return-object p1

    .line 226
    :goto_78
    const-string v3, "Enqueue: Error processing job"

    invoke-static {v2, v3, v0}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    invoke-direct {p0, v0}, Lio/vanta/fake/service/IJobServiceProxy$Enqueue;->isUIDValidationError(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "UID validation failed for job enqueuing, returning RESULT_FAILURE: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_99

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_9d

    :cond_99
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_9d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 234
    :cond_a9
    :try_start_a9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ad} :catch_ae

    return-object p1

    :catch_ae
    move-exception p1

    .line 236
    const-string p2, "Enqueue: Fallback also failed"

    invoke-static {v2, p2, p1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
