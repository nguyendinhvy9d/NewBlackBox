.class public final Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FollowMyLocationOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowMyLocationOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowMyLocationOverlay.kt\ntop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay\n+ 2 ViewBindingEx.kt\ntop/niunaijun/blackboxa/util/ViewBindingExKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,139:1\n12#2,3:140\n37#3,2:143\n*S KotlinDebug\n*F\n+ 1 FollowMyLocationOverlay.kt\ntop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay\n*L\n28#1:140,3\n122#1:143,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0014J\u0008\u0010\u001c\u001a\u00020\u0017H\u0014J-\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\t2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050 2\u0006\u0010!\u001a\u00020\"H\u0016\u00a2\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0011H\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006&"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "REQUEST_PERMISSIONS_REQUEST_CODE",
        "",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;",
        "getBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "startPoint",
        "Lorg/osmdroid/util/GeoPoint;",
        "getStartPoint",
        "()Lorg/osmdroid/util/GeoPoint;",
        "setStartPoint",
        "(Lorg/osmdroid/util/GeoPoint;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onBackPressed",
        "onResume",
        "onPause",
        "onRequestPermissionsResult",
        "requestCode",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "finishWithResult",
        "geoPoint",
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
.field private final REQUEST_PERMISSIONS_REQUEST_CODE:I

.field private final TAG:Ljava/lang/String;

.field private final binding$delegate:Lkotlin/Lazy;

.field public startPoint:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 24
    const-string v0, "FollowMyLocationOverlay"

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->REQUEST_PERMISSIONS_REQUEST_CODE:I

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 140
    new-instance v1, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$special$$inlined$inflate$1;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$special$$inlined$inflate$1;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 28
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->binding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
    .locals 0

    .line 23
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p0

    return-object p0
.end method

.method private final finishWithResult(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 131
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->setResult(ILandroid/content/Intent;)V

    .line 132
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 136
    :cond_0
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->finish()V

    return-void
.end method

.method private final getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;
    .locals 1

    .line 28
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    return-object v0
.end method


# virtual methods
.method public final getStartPoint()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 30
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->startPoint:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "startPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getStartPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->finishWithResult(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->load(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 48
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/location/BLocation;

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    const-wide v0, 0x403e460aa64c2f83L

    const-wide v2, 0x405e0a00d1b71759L

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lio/vanta/entity/location/BLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lio/vanta/entity/location/BLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object p1, v0

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->setStartPoint(Lorg/osmdroid/util/GeoPoint;)V

    .line 59
    new-instance p1, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-direct {p1, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 60
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getStartPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    const/high16 v0, 0x3f000000

    const/high16 v1, 0x3f800000

    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 63
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;

    invoke-direct {v0, p0, p1}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;-><init>(Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;Lorg/osmdroid/views/overlay/Marker;)V

    check-cast v0, Lorg/osmdroid/events/MapEventsReceiver;

    .line 78
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p1

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lorg/osmdroid/views/overlay/MapEventsOverlay;

    invoke-direct {v1, v0}, Lorg/osmdroid/views/overlay/MapEventsOverlay;-><init>(Lorg/osmdroid/events/MapEventsReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p1

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    const-wide/high16 v0, 0x4029000000000000L

    .line 80
    invoke-interface {p1, v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 82
    invoke-virtual {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getStartPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {p1, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 83
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object p1

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 105
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string p1, "permissions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 121
    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    .line 122
    check-cast p1, Ljava/util/Collection;

    .line 144
    new-array p3, v0, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 123
    iget p3, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->REQUEST_PERMISSIONS_REQUEST_CODE:I

    .line 120
    invoke-static {p2, p1, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 96
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->getBinding()Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onResume()V

    return-void
.end method

.method public final setStartPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->startPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method
