.class public final synthetic Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;

.field public final synthetic f$1:Ltop/niunaijun/blackboxa/bean/FakeLocationBean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;Ltop/niunaijun/blackboxa/bean/FakeLocationBean;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$1:Ltop/niunaijun/blackboxa/bean/FakeLocationBean;

    iput p3, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$0:Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$1:Ltop/niunaijun/blackboxa/bean/FakeLocationBean;

    iget v2, p0, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-static {v0, v1, v2, p1}, Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;->$r8$lambda$4wpT02XtnsTlTEwNl74Tj-irWC4(Ltop/niunaijun/blackboxa/view/fake/FakeManagerActivity;Ltop/niunaijun/blackboxa/bean/FakeLocationBean;ILcom/afollestad/materialdialogs/MaterialDialog;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
