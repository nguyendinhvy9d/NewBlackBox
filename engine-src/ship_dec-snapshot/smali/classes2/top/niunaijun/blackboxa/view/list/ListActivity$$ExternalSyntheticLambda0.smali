.class public final synthetic Ltop/niunaijun/blackboxa/view/list/ListActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackboxa/view/list/ListActivity;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackboxa/view/list/ListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/list/ListActivity$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackboxa/view/list/ListActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/list/ListActivity$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackboxa/view/list/ListActivity;

    check-cast p1, Landroid/view/View;

    check-cast p2, Ltop/niunaijun/blackboxa/bean/InstalledAppBean;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/list/ListActivity;->$r8$lambda$Dmu8W30gpA5FR4lJ6g6ztd6I2SA(Ltop/niunaijun/blackboxa/view/list/ListActivity;Landroid/view/View;Ltop/niunaijun/blackboxa/bean/InstalledAppBean;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
