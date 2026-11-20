.class public final Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;
.super Ljava/lang/Object;
.source "FollowMyLocationOverlay.kt"

# interfaces
.implements Lorg/osmdroid/events/MapEventsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "top/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1",
        "Lorg/osmdroid/events/MapEventsReceiver;",
        "singleTapConfirmedHelper",
        "",
        "p",
        "Lorg/osmdroid/util/GeoPoint;",
        "longPressHelper",
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
.field final synthetic $startMarker:Lorg/osmdroid/views/overlay/Marker;

.field final synthetic this$0:Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->$startMarker:Lorg/osmdroid/views/overlay/Marker;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public longPressHelper(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public singleTapConfirmedHelper(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 5

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->setStartPoint(Lorg/osmdroid/util/GeoPoint;)V

    .line 67
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->$startMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 68
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->$startMarker:Lorg/osmdroid/views/overlay/Marker;

    const/high16 v1, 0x3f000000

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;->access$getBinding(Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;)Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ActivityOsmdroidBinding;->map:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->$startMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay$onCreate$mReceive$1;->this$0:Ltop/niunaijun/blackboxa/view/fake/FollowMyLocationOverlay;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltop/niunaijun/blackboxa/util/ToastExKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
