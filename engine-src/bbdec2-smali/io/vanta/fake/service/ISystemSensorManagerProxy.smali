.class public Lio/vanta/fake/service/ISystemSensorManagerProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ISystemSensorManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ISystemSensorManagerProxy$ParsePackageList;,
        Lio/vanta/fake/service/ISystemSensorManagerProxy$Constructor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ISystemSensorManagerProxy"


# direct methods
.method static bridge synthetic -$$Nest$smcreateSafeSensorManager()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lio/vanta/fake/service/ISystemSensorManagerProxy;->createSafeSensorManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private static createSafeSensorManager()Ljava/lang/Object;
    .registers 6

    .line 86
    const-string v0, "ISystemSensorManagerProxy"

    const-string v1, "Could not create safe SystemSensorManager: "

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "android.hardware.SystemSensorManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_38

    const/4 v4, 0x0

    .line 93
    :try_start_c
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 95
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    const-string v4, "Created safe SystemSensorManager using default constructor"

    invoke-static {v0, v4}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_22

    return-object v3

    :catch_22
    move-exception v3

    .line 98
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_38

    return-object v2

    :catch_38
    move-exception v1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating safe SystemSensorManager: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 28
    const-string p1, "ISystemSensorManagerProxy"

    const-string p2, "ISystemSensorManager proxy initialized for UID mismatch prevention"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
