.class public final Lcom/othershe/cornerlabelview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/othershe/cornerlabelview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static CornerLabelView:[I = null

.field public static CornerLabelView_bg_color:I = 0x0

.field public static CornerLabelView_margin_lean_side:I = 0x1

.field public static CornerLabelView_position:I = 0x2

.field public static CornerLabelView_side_length:I = 0x3

.field public static CornerLabelView_text:I = 0x4

.field public static CornerLabelView_text_color:I = 0x5

.field public static CornerLabelView_text_size:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/othershe/cornerlabelview/R$styleable;->CornerLabelView:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f030079
        0x7f030306
        0x7f0303cc
        0x7f03042b
        0x7f030498
        0x7f0304d6
        0x7f0304d7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
