.class public final Ltop/niunaijun/blackboxa/app/rocker/RockerManager;
.super Ljava/lang/Object;
.source "RockerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J(\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0018\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bJ\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001dJ\u0006\u0010\u001e\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/app/rocker/RockerManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "isInitialized",
        "",
        "Ea",
        "",
        "Eb",
        "init",
        "",
        "application",
        "Landroid/app/Application;",
        "userId",
        "",
        "initFloatView",
        "Lcom/imuxuan/floatingview/FloatingMagnetView;",
        "changeLocation",
        "distance",
        "",
        "angle",
        "packageName",
        "isActive",
        "checkPermissions",
        "context",
        "Landroid/content/Context;",
        "getRequiredPermissions",
        "",
        "cleanup",
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
.field private static final Ea:D = 6378137.0

.field private static final Eb:D = 6356725.0

.field public static final INSTANCE:Ltop/niunaijun/blackboxa/app/rocker/RockerManager;

.field private static final TAG:Ljava/lang/String; = "RockerManager"

.field private static isInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$4jDZSGx50QjNzzlG9IKLT24dgq4(Landroid/app/Application;IFF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->init$lambda$0(Landroid/app/Application;IFF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->INSTANCE:Ltop/niunaijun/blackboxa/app/rocker/RockerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final changeLocation(FFLjava/lang/String;I)V
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 138
    const-string v4, ", "

    const-string v5, "RockerManager"

    .line 0
    const-string v6, "Location updated - New: "

    const-string v7, "Changing location - Distance: "

    const-string v8, "No current location found for package: "

    .line 139
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v9

    invoke-virtual {v9, v3, v2}, Lio/vanta/fake/frameworks/BLocationManager;->getLocation(ILjava/lang/String;)Lio/vanta/entity/location/BLocation;

    move-result-object v9

    if-nez v9, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLongitude()D

    move-result-wide v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "m, Angle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u00b0, Current: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v7, v0

    float-to-double v0, v1

    const-wide v10, 0x400921fb54442d18L    # 3.141592653589793

    mul-double/2addr v0, v10

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v12

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v7

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    .line 155
    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v0

    const-wide v16, 0x4056800000000000L    # 90.0

    sub-double v0, v16, v0

    const-wide v18, 0x40d4e90000000000L    # 21412.0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    const-wide v16, 0x41583fbd40000000L    # 6356725.0

    add-double v0, v0, v16

    .line 156
    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v16

    mul-double v16, v16, v10

    move-wide/from16 p1, v10

    const/16 v10, 0xb4    # 8.9E-322

    int-to-double v10, v10

    div-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v0

    div-double/2addr v14, v10

    .line 158
    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLongitude()D

    move-result-wide v10

    mul-double v10, v10, p1

    div-double/2addr v10, v12

    add-double/2addr v14, v10

    mul-double/2addr v14, v12

    div-double v14, v14, p1

    div-double/2addr v7, v0

    .line 159
    invoke-virtual {v9}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v0

    mul-double v0, v0, p1

    div-double/2addr v0, v12

    add-double/2addr v7, v0

    mul-double/2addr v7, v12

    div-double v7, v7, p1

    .line 161
    new-instance v0, Lio/vanta/entity/location/BLocation;

    invoke-direct {v0, v7, v8, v14, v15}, Lio/vanta/entity/location/BLocation;-><init>(DD)V

    .line 164
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->get()Lio/vanta/fake/frameworks/BLocationManager;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lio/vanta/fake/frameworks/BLocationManager;->setLocation(ILjava/lang/String;Lio/vanta/entity/location/BLocation;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error changing location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v1, "Stack trace: "

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static final init$lambda$0(Landroid/app/Application;IFF)Lkotlin/Unit;
    .locals 2

    .line 59
    sget-object v0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->INSTANCE:Ltop/niunaijun/blackboxa/app/rocker/RockerManager;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getPackageName(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p3, p2, p0, p1}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->changeLocation(FFLjava/lang/String;I)V

    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final initFloatView()Lcom/imuxuan/floatingview/FloatingMagnetView;
    .locals 4

    .line 116
    const-string v0, "RockerManager"

    .line 118
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    .line 123
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    new-instance v2, Ltop/niunaijun/blackboxa/widget/EnFloatView;

    sget-object v3, Ltop/niunaijun/blackboxa/app/App;->Companion:Ltop/niunaijun/blackboxa/app/App$Companion;

    invoke-virtual {v3}, Ltop/niunaijun/blackboxa/app/App$Companion;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ltop/niunaijun/blackboxa/widget/EnFloatView;-><init>(Landroid/content/Context;)V

    .line 125
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Ltop/niunaijun/blackboxa/widget/EnFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sget-object v1, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    invoke-virtual {v1}, Lcom/imuxuan/floatingview/FloatingView$Companion;->get()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v1

    check-cast v2, Lcom/imuxuan/floatingview/FloatingMagnetView;

    invoke-virtual {v1, v2}, Lcom/imuxuan/floatingview/FloatingView;->customView(Lcom/imuxuan/floatingview/FloatingMagnetView;)Lcom/imuxuan/floatingview/FloatingView;

    .line 128
    const-string v1, "Floating view created successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lcom/imuxuan/floatingview/FloatingView;->Companion:Lcom/imuxuan/floatingview/FloatingView$Companion;

    invoke-virtual {v1}, Lcom/imuxuan/floatingview/FloatingView$Companion;->get()Lcom/imuxuan/floatingview/FloatingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imuxuan/floatingview/FloatingView;->getView()Lcom/imuxuan/floatingview/FloatingMagnetView;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating floating view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final checkPermissions(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "RockerManager"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 182
    :try_start_0
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const-string p1, "Overlay permission not granted - RockerManager cannot show floating view"

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 200
    const-string p1, "All required permissions are granted"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 196
    :cond_1
    const-string p1, "Location permission not granted - RockerManager cannot access location"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking permissions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final cleanup()V
    .locals 4

    .line 219
    const-string v0, "RockerManager"

    const/4 v1, 0x0

    .line 220
    :try_start_0
    sput-boolean v1, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->isInitialized:Z

    .line 221
    const-string v1, "RockerManager cleaned up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error during cleanup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getRequiredPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 211
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 212
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 213
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    .line 210
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/app/Application;I)V
    .locals 11

    .line 31
    const-string v1, "RockerManager"

    .line 0
    const-string v0, "Please grant: "

    const-string v2, "Initializing RockerManager for userId: "

    .line 32
    :try_start_0
    sget-boolean v3, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->isInitialized:Z

    if-eqz v3, :cond_0

    .line 33
    const-string p1, "RockerManager already initialized, skipping..."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 38
    const-string p1, "Application is null, cannot initialize RockerManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p0, v3}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->checkPermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 44
    const-string p1, "Required permissions not granted, RockerManager cannot initialize"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->getRequiredPermissions()Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, ", "

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_2
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BLocationManager;->isFakeLocationEnable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    const-string p1, "Fake location is not enabled, RockerManager will not initialize"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->initFloatView()Lcom/imuxuan/floatingview/FloatingMagnetView;

    move-result-object v0

    .line 57
    instance-of v2, v0, Ltop/niunaijun/blackboxa/widget/EnFloatView;

    if-eqz v2, :cond_4

    .line 58
    check-cast v0, Ltop/niunaijun/blackboxa/widget/EnFloatView;

    new-instance v2, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Application;I)V

    invoke-virtual {v0, v2}, Ltop/niunaijun/blackboxa/widget/EnFloatView;->setListener(Lkotlin/jvm/functions/Function2;)V

    .line 61
    const-string p2, "Floating view initialized successfully"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p2, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$init$2;

    invoke-direct {p2}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$init$2;-><init>()V

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 68
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 104
    sput-boolean p1, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->isInitialized:Z

    .line 107
    const-string p1, "RockerManager initialized successfully - Floating GPS joystick is now active!"

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_4
    const-string p1, "Failed to initialize floating view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error initializing RockerManager: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string p2, "Stack trace: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final isActive()Z
    .locals 1

    .line 175
    sget-boolean v0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->isInitialized:Z

    return v0
.end method
