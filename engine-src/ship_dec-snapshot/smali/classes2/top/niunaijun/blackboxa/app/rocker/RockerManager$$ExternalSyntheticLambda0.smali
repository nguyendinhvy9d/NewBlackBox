.class public final synthetic Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroid/app/Application;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    iput p2, p0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    iget v1, p0, Ltop/niunaijun/blackboxa/app/rocker/RockerManager$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, v1, p1, p2}, Ltop/niunaijun/blackboxa/app/rocker/RockerManager;->$r8$lambda$4jDZSGx50QjNzzlG9IKLT24dgq4(Landroid/app/Application;IFF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
