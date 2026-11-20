.class public Landroidx/constraintlayout/core/motion/MotionWidget;
.super Ljava/lang/Object;
.source "MotionWidget.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/MotionWidget$Motion;,
        Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;
    }
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1

.field public static final GONE_UNSET:I = -0x80000000

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x0

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final MATCH_PARENT:I = -0x1

.field public static final PARENT_ID:I = 0x0

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x4

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

.field private mProgress:F

.field mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

.field mTransitionPathRotate:F

.field mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    .line 130
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlpha()F
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    return v0
.end method

.method public getBottom()I
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    return v0
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object p1

    return-object p1
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2

    .line 327
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 331
    :cond_0
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->getId(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLeft()I
    .locals 1

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    return v0
.end method

.method public getRotationX()F
    .locals 1

    .line 359
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return v0
.end method

.method public getRotationZ()F
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 415
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return v0
.end method

.method public getTranslationZ()F
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return v0
.end method

.method public getValueAttributes(I)F
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0    # 0x133
    const/high16 p1, 0x7fc00000    # NaNf

    return p1

    .line 318
    :pswitch_1    # 0x13c
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    return p1

    .line 316
    :pswitch_2    # 0x13b
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    return p1

    .line 314
    :pswitch_3    # 0x13a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return p1

    .line 312
    :pswitch_4    # 0x139
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return p1

    .line 310
    :pswitch_5    # 0x138
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return p1

    .line 308
    :pswitch_6    # 0x137
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return p1

    .line 306
    :pswitch_7    # 0x136
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return p1

    .line 304
    :pswitch_8    # 0x135
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return p1

    .line 302
    :pswitch_9    # 0x134
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return p1

    .line 300
    :pswitch_a    # 0x132
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return p1

    .line 298
    :pswitch_b    # 0x131
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return p1

    .line 296
    :pswitch_c    # 0x130
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return p1

    .line 294
    :pswitch_d    # 0x12f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_d    # 0x12f
        :pswitch_c    # 0x130
        :pswitch_b    # 0x131
        :pswitch_a    # 0x132
        :pswitch_0    # 0x133
        :pswitch_9    # 0x134
        :pswitch_8    # 0x135
        :pswitch_7    # 0x136
        :pswitch_6    # 0x137
        :pswitch_5    # 0x138
        :pswitch_4    # 0x139
        :pswitch_3    # 0x13a
        :pswitch_2    # 0x13b
        :pswitch_1    # 0x13c
    .end packed-switch
.end method

.method public getVisibility()I
    .locals 1

    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    return v0
.end method

.method public getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;
    .locals 1

    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getX()I
    .locals 1

    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return v0
.end method

.method public layout(IIII)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    .line 124
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p2, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p3, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    .line 126
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p4, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .locals 1

    .line 464
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .locals 2

    .line 489
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    aget p2, p2, v1

    const/16 v1, 0x385    # 1.263E-42f

    invoke-virtual {v0, p1, v1, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return-void
.end method

.method public setRotationZ(F)V
    .locals 1

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return-void
.end method

.method public setValue(IF)Z
    .locals 1

    .line 153
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(IF)Z

    move-result p1

    return p1
.end method

.method public setValue(II)Z
    .locals 1

    int-to-float v0, p2

    .line 144
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(II)Z

    move-result p1

    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x25d

    if-ne p1, v0, :cond_0

    .line 163
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setValue(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setValueAttributes(IF)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0    # 0x133
    const/4 p1, 0x0

    return p1

    .line 280
    :pswitch_1    # 0x13c
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    goto :goto_0

    .line 277
    :pswitch_2    # 0x13b
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    goto :goto_0

    .line 274
    :pswitch_3    # 0x13a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    goto :goto_0

    .line 271
    :pswitch_4    # 0x139
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    goto :goto_0

    .line 268
    :pswitch_5    # 0x138
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    goto :goto_0

    .line 265
    :pswitch_6    # 0x137
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    goto :goto_0

    .line 262
    :pswitch_7    # 0x136
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    goto :goto_0

    .line 259
    :pswitch_8    # 0x135
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    goto :goto_0

    .line 256
    :pswitch_9    # 0x134
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    goto :goto_0

    .line 253
    :pswitch_a    # 0x132
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    goto :goto_0

    .line 250
    :pswitch_b    # 0x131
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    goto :goto_0

    .line 247
    :pswitch_c    # 0x130
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    goto :goto_0

    .line 244
    :pswitch_d    # 0x12f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_d    # 0x12f
        :pswitch_c    # 0x130
        :pswitch_b    # 0x131
        :pswitch_a    # 0x132
        :pswitch_0    # 0x133
        :pswitch_9    # 0x134
        :pswitch_8    # 0x135
        :pswitch_7    # 0x136
        :pswitch_6    # 0x137
        :pswitch_5    # 0x138
        :pswitch_4    # 0x139
        :pswitch_3    # 0x13a
        :pswitch_2    # 0x13b
        :pswitch_1    # 0x13c
    .end packed-switch
.end method

.method public setValueMotion(IF)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 230
    :pswitch_0    # 0x25a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

    goto :goto_0

    .line 227
    :pswitch_1    # 0x259
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    goto :goto_0

    .line 224
    :pswitch_2    # 0x258
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_2    # 0x258
        :pswitch_1    # 0x259
        :pswitch_0    # 0x25a
    .end packed-switch
.end method

.method public setValueMotion(II)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 196
    :pswitch_0    # 0x264
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

    goto :goto_0

    .line 193
    :pswitch_1    # 0x263
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    goto :goto_0

    .line 190
    :pswitch_2    # 0x262
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    goto :goto_0

    .line 187
    :pswitch_3    # 0x261
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    goto :goto_0

    .line 184
    :pswitch_4    # 0x260
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    goto :goto_0

    .line 181
    :pswitch_5    # 0x25f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    goto :goto_0

    .line 178
    :pswitch_6    # 0x25e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x25e
        :pswitch_6    # 0x25e
        :pswitch_5    # 0x25f
        :pswitch_4    # 0x260
        :pswitch_3    # 0x261
        :pswitch_2    # 0x262
        :pswitch_1    # 0x263
        :pswitch_0    # 0x264
    .end packed-switch
.end method

.method public setValueMotion(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setVisibility(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMotion(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getMotionProperties()Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getMotionProperties()Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    :cond_0
    return-void
.end method
