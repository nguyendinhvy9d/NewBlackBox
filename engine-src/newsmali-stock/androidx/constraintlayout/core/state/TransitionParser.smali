.class public Landroidx/constraintlayout/core/state/TransitionParser;
.super Ljava/lang/Object;
.source "TransitionParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs map(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_11

    .line 154
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method private static varargs map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 162
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_12

    .line 163
    aget-object v1, p3, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 164
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/Transition;->resetProperties()V

    .line 61
    const-string v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_81

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    sparse-switch v4, :sswitch_data_b6

    goto :goto_63

    :sswitch_22
    const-string v4, "below"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_63

    :cond_2b
    move v9, v5

    goto :goto_63

    :sswitch_2d
    const-string v4, "above"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_63

    :cond_36
    move v9, v6

    goto :goto_63

    :sswitch_38
    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_63

    :cond_41
    move v9, v7

    goto :goto_63

    :sswitch_43
    const-string v4, "flip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_63

    :cond_4c
    move v9, v8

    goto :goto_63

    :sswitch_4e
    const-string v4, "startHorizontal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_63

    :cond_57
    move v9, v2

    goto :goto_63

    :sswitch_59
    const-string v4, "startVertical"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_63

    :cond_62
    move v9, v3

    :goto_63
    const/16 v0, 0x1fd

    packed-switch v9, :pswitch_data_d0

    goto :goto_80

    .line 81
    :pswitch_69
    invoke-virtual {v1, v0, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_80

    .line 84
    :pswitch_6d
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_80

    .line 69
    :pswitch_71
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_80

    .line 78
    :pswitch_75
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_80

    .line 75
    :pswitch_79
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_80

    .line 72
    :pswitch_7d
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    :goto_80
    move v3, v2

    .line 89
    :cond_81
    const-string v0, "interpolator"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    const/16 v3, 0x2c1

    .line 92
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    move v3, v2

    .line 95
    :cond_8f
    const-string v0, "staggered"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v0

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a1

    const/16 v3, 0x2c2

    .line 98
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    goto :goto_a2

    :cond_a1
    move v2, v3

    :goto_a2
    if-eqz v2, :cond_a7

    .line 101
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/Transition;->setTransitionProperties(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 104
    :cond_a7
    const-string v0, "onSwipe"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 107
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V

    .line 109
    :cond_b2
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    return-void

    :sswitch_data_b6
    .sparse-switch
        -0x6eaff208 -> :sswitch_59
        -0x3c0665da -> :sswitch_4e
        0x30006d -> :sswitch_43
        0x33af38 -> :sswitch_38
        0x585239d -> :sswitch_2d
        0x5948c31 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
    .end packed-switch
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;Landroidx/constraintlayout/core/state/CorePixelDp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    return-void
.end method

.method private static parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    if-nez v2, :cond_e

    goto/16 :goto_22d

    .line 273
    :cond_e
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    if-nez v3, :cond_18

    goto/16 :goto_22d

    .line 277
    :cond_18
    const-string v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    .line 279
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    .line 290
    new-array v7, v5, [I

    fill-array-data v7, :array_22e

    .line 302
    new-array v11, v5, [Z

    fill-array-data v11, :array_244

    .line 313
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    new-array v13, v12, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move v14, v8

    .line 316
    :goto_61
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_71

    .line 317
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_61

    :cond_71
    move v14, v8

    :goto_72
    if-ge v14, v5, :cond_e9

    .line 322
    aget-object v15, v6, v14

    .line 323
    aget v5, v7, v14

    .line 324
    aget-boolean v16, v11, v14

    move/from16 v17, v9

    .line 325
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v9

    move/from16 v18, v8

    if-eqz v9, :cond_a6

    .line 327
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v8

    if-ne v8, v12, :cond_8b

    goto :goto_a6

    .line 328
    :cond_8b
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incorrect size for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " array, not matching targets array!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_a6
    :goto_a6
    if-eqz v9, :cond_c1

    move/from16 v8, v18

    :goto_aa
    if-ge v8, v12, :cond_df

    .line 334
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v15

    if-eqz v16, :cond_b8

    .line 336
    iget-object v10, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v10, v15}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v15

    .line 338
    :cond_b8
    aget-object v10, v13, v8

    invoke-virtual {v10, v5, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x2

    goto :goto_aa

    .line 341
    :cond_c1
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v8

    .line 342
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_df

    if-eqz v16, :cond_d3

    .line 344
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v8}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v8

    :cond_d3
    move/from16 v9, v18

    :goto_d5
    if-ge v9, v12, :cond_df

    .line 347
    aget-object v10, v13, v9

    invoke-virtual {v10, v5, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    :cond_df
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v17

    move/from16 v8, v18

    const/16 v5, 0x9

    const/4 v10, 0x2

    goto :goto_72

    :cond_e9
    move/from16 v18, v8

    move/from16 v17, v9

    .line 353
    const-string v5, "custom"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    if-eqz v5, :cond_1db

    .line 354
    instance-of v7, v5, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v7, :cond_1db

    .line 355
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 356
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v7

    .line 357
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v8

    const/4 v9, 0x2

    new-array v10, v9, [I

    aput v7, v10, v17

    aput v8, v10, v18

    const-class v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Landroidx/constraintlayout/core/motion/CustomVariable;

    move/from16 v9, v18

    :goto_114
    if-ge v9, v7, :cond_1dc

    .line 359
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/parser/CLKey;

    .line 360
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v14

    instance-of v14, v14, Landroidx/constraintlayout/core/parser/CLArray;

    const-wide/16 v19, -0x1

    if-eqz v14, :cond_18e

    .line 362
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/parser/CLArray;

    .line 363
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ne v14, v12, :cond_189

    if-lez v14, :cond_189

    move/from16 v14, v18

    .line 365
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v15

    instance-of v14, v15, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v14, :cond_163

    const/4 v14, 0x0

    :goto_143
    if-ge v14, v12, :cond_189

    .line 367
    aget-object v15, v8, v14

    new-instance v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 369
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v16

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    move/from16 v22, v7

    const/16 v7, 0x385

    invoke-direct {v6, v11, v7, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v6, v15, v9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v21

    move/from16 v7, v22

    goto :goto_143

    :cond_163
    move-object/from16 v21, v5

    move/from16 v22, v7

    const/4 v14, 0x0

    :goto_168
    if-ge v14, v12, :cond_1d1

    .line 373
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v19

    if-eqz v7, :cond_186

    .line 375
    aget-object v7, v8, v14

    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    long-to-int v5, v5

    const/16 v6, 0x386

    invoke-direct {v15, v11, v6, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v15, v7, v9

    :cond_186
    add-int/lit8 v14, v14, 0x1

    goto :goto_168

    :cond_189
    move-object/from16 v21, v5

    move/from16 v22, v7

    goto :goto_1d1

    :cond_18e
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 383
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 384
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v6, :cond_1af

    .line 385
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    const/4 v14, 0x0

    :goto_19f
    if-ge v14, v12, :cond_1d1

    .line 387
    aget-object v6, v8, v14

    new-instance v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    const/16 v10, 0x385

    invoke-direct {v7, v11, v10, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v7, v6, v9

    add-int/lit8 v14, v14, 0x1

    goto :goto_19f

    .line 392
    :cond_1af
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v19

    if-eqz v7, :cond_1d1

    const/4 v14, 0x0

    :goto_1bc
    if-ge v14, v12, :cond_1d1

    .line 395
    aget-object v7, v8, v14

    new-instance v10, Landroidx/constraintlayout/core/motion/CustomVariable;

    long-to-int v15, v5

    move-wide/from16 v19, v5

    const/16 v5, 0x386

    invoke-direct {v10, v11, v5, v15}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v9

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v5, v19

    goto :goto_1bc

    :cond_1d1
    :goto_1d1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v21

    move/from16 v7, v22

    const/16 v18, 0x0

    goto/16 :goto_114

    :cond_1db
    const/4 v8, 0x0

    .line 406
    :cond_1dc
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    .line 407
    :goto_1e3
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v5

    if-ge v14, v5, :cond_22d

    const/4 v5, 0x0

    :goto_1ea
    if-ge v5, v12, :cond_227

    .line 409
    invoke-virtual {v2, v14}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    aget-object v7, v13, v5

    const/4 v9, 0x2

    if-eqz v0, :cond_20b

    .line 412
    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "spline"

    const/16 v18, 0x0

    aput-object v11, v10, v18

    const-string v11, "linear"

    aput-object v11, v10, v17

    .line 413
    invoke-static {v0, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x1fc

    .line 412
    invoke-virtual {v7, v11, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_20d

    :cond_20b
    const/16 v18, 0x0

    :goto_20d
    const/16 v10, 0x1f5

    .line 415
    invoke-virtual {v7, v10, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 417
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v10

    const/16 v11, 0x64

    .line 418
    invoke-virtual {v7, v11, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    if-eqz v8, :cond_220

    .line 419
    aget-object v10, v8, v5

    goto :goto_221

    :cond_220
    const/4 v10, 0x0

    :goto_221
    invoke-virtual {v1, v6, v7, v10}, Landroidx/constraintlayout/core/state/Transition;->addKeyAttribute(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;[Landroidx/constraintlayout/core/motion/CustomVariable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ea

    :cond_227
    const/4 v9, 0x2

    const/16 v18, 0x0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e3

    :cond_22d
    :goto_22d
    return-void

    :array_22e
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x12f
    .end array-data

    :array_244
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 427
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 428
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 429
    const-string v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 431
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    const/16 v7, 0x9

    const-string v11, "period"

    aput-object v11, v6, v7

    const/16 v7, 0xa

    const-string v11, "offset"

    aput-object v11, v6, v7

    const/16 v7, 0xb

    const-string v11, "phase"

    aput-object v11, v6, v7

    .line 445
    new-array v7, v5, [I

    fill-array-data v7, :array_182

    .line 462
    new-array v11, v5, [I

    fill-array-data v11, :array_19e

    .line 478
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    new-array v13, v12, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move v14, v8

    :goto_6b
    if-ge v14, v12, :cond_77

    .line 480
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6b

    :cond_77
    move v14, v8

    move v15, v14

    :goto_79
    if-ge v14, v5, :cond_8c

    .line 484
    aget-object v8, v6, v14

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_88

    aget v8, v11, v14

    if-ne v8, v9, :cond_88

    move v15, v9

    :cond_88
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_79

    :cond_8c
    const/4 v8, 0x0

    :goto_8d
    if-ge v8, v5, :cond_109

    .line 489
    aget-object v14, v6, v8

    .line 490
    aget v5, v7, v8

    .line 491
    aget v10, v11, v8

    .line 492
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v9

    move-object/from16 v16, v6

    if-eqz v9, :cond_ac

    .line 494
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v6

    if-ne v6, v12, :cond_a4

    goto :goto_ac

    .line 495
    :cond_a4
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v2, "incorrect size for $attrName array, not matching targets array!"

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_ac
    :goto_ac
    if-eqz v9, :cond_d4

    const/4 v6, 0x0

    :goto_af
    if-ge v6, v12, :cond_ff

    .line 502
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v14

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ne v10, v6, :cond_c1

    .line 504
    iget-object v6, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v14

    goto :goto_cc

    :cond_c1
    const/4 v6, 0x2

    if-ne v10, v6, :cond_cc

    if-eqz v15, :cond_cc

    .line 506
    iget-object v6, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v14

    .line 508
    :cond_cc
    :goto_cc
    aget-object v6, v13, v17

    invoke-virtual {v6, v5, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_af

    .line 511
    :cond_d4
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v6

    .line 512
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_ff

    const/4 v9, 0x1

    if-ne v10, v9, :cond_e9

    .line 514
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v6}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v6

    const/4 v9, 0x2

    goto :goto_f4

    :cond_e9
    const/4 v9, 0x2

    if-ne v10, v9, :cond_f4

    if-eqz v15, :cond_f4

    .line 516
    iget-object v10, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v10, v6}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v6

    :cond_f4
    :goto_f4
    const/4 v10, 0x0

    :goto_f5
    if-ge v10, v12, :cond_100

    .line 519
    aget-object v14, v13, v10

    invoke-virtual {v14, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f5

    :cond_ff
    const/4 v9, 0x2

    :cond_100
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    move-object/from16 v6, v16

    const/16 v5, 0xc

    const/4 v9, 0x1

    goto :goto_8d

    .line 524
    :cond_109
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 525
    const-string v6, "easing"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    const-string v7, "waveShape"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    const-string v8, "customWave"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 528
    :goto_122
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_180

    const/4 v9, 0x0

    :goto_129
    if-ge v9, v12, :cond_17d

    .line 530
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 531
    aget-object v11, v13, v9

    if-eqz v5, :cond_153

    .line 535
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v14, "linear"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v15, 0x191

    if-nez v14, :cond_14e

    const-string v14, "spline"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_149

    goto :goto_153

    :cond_149
    const/4 v14, 0x0

    .line 537
    invoke-virtual {v11, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_153

    :cond_14e
    const/4 v14, 0x1

    .line 540
    invoke-virtual {v11, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_154

    :cond_153
    :goto_153
    const/4 v14, 0x1

    :goto_154
    const/16 v15, 0x1f5

    .line 544
    invoke-virtual {v11, v15, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    if-eqz v6, :cond_160

    const/16 v15, 0x1a4

    .line 547
    invoke-virtual {v11, v15, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    :cond_160
    if-eqz v7, :cond_167

    const/16 v15, 0x1a5

    .line 550
    invoke-virtual {v11, v15, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    :cond_167
    if-eqz v0, :cond_16e

    const/16 v15, 0x1a6

    .line 553
    invoke-virtual {v11, v15, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 556
    :cond_16e
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v15

    const/16 v14, 0x64

    .line 557
    invoke-virtual {v11, v14, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 558
    invoke-virtual {v1, v10, v11}, Landroidx/constraintlayout/core/state/Transition;->addKeyCycle(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_129

    :cond_17d
    add-int/lit8 v8, v8, 0x1

    goto :goto_122

    :cond_180
    return-void

    nop

    :array_182
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x193
        0x1a7
        0x1a8
        0x1a9
    .end array-data

    :array_19e
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data
.end method

.method public static parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 177
    const-string v0, "KeyFrames"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_66

    .line 179
    :cond_9
    const-string v0, "KeyPositions"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move v2, v1

    .line 181
    :goto_13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 182
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    .line 183
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_26

    .line 184
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 188
    :cond_29
    const-string v0, "KeyAttributes"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v0

    if-eqz v0, :cond_48

    move v2, v1

    .line 190
    :goto_32
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 191
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    .line 192
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_45

    .line 193
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 197
    :cond_48
    const-string v0, "KeyCycles"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 199
    :goto_50
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 200
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    .line 201
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v2, :cond_63

    .line 202
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_66
    :goto_66
    return-void
.end method

.method private static parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 211
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 212
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 213
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 214
    const-string v4, "percentX"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v4

    .line 215
    const-string v5, "percentY"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v5

    .line 216
    const-string v6, "percentWidth"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v6

    .line 217
    const-string v7, "percentHeight"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v7

    .line 218
    const-string v8, "pathMotionArc"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    const-string v9, "transitionEasing"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    const-string v10, "curveFit"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 221
    const-string v11, "type"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v11, "parentRelative"

    if-nez v0, :cond_48

    move-object v0, v11

    :cond_48
    if-eqz v4, :cond_56

    .line 225
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_56

    goto/16 :goto_107

    :cond_56
    if-eqz v5, :cond_64

    .line 228
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_64

    goto/16 :goto_107

    :cond_64
    const/4 v13, 0x0

    .line 231
    :goto_65
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_107

    .line 232
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    const/16 p0, 0x0

    .line 233
    new-array v12, v15, [Ljava/lang/String;

    const-string v16, "deltaRelative"

    aput-object v16, v12, p0

    const-string v16, "pathRelative"

    const/16 v17, 0x1

    aput-object v16, v12, v17

    move/from16 v16, v15

    const/4 v15, 0x2

    aput-object v11, v12, v15

    invoke-static {v0, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 234
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->clear()V

    const/16 v15, 0x1fe

    .line 235
    invoke-virtual {v1, v15, v12}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    if-eqz v10, :cond_a1

    const/4 v12, 0x2

    .line 237
    new-array v15, v12, [Ljava/lang/String;

    const-string v12, "spline"

    aput-object v12, v15, p0

    const-string v12, "linear"

    aput-object v12, v15, v17

    const/16 v12, 0x1fc

    invoke-static {v1, v12, v10, v15}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_a1
    const/16 v12, 0x1f5

    .line 240
    invoke-virtual {v1, v12, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    if-eqz v8, :cond_cc

    const/4 v12, 0x6

    .line 243
    new-array v12, v12, [Ljava/lang/String;

    const-string v15, "none"

    aput-object v15, v12, p0

    const-string v15, "startVertical"

    aput-object v15, v12, v17

    const-string v15, "startHorizontal"

    const/16 v18, 0x2

    aput-object v15, v12, v18

    const-string v15, "flip"

    aput-object v15, v12, v16

    const/4 v15, 0x4

    const-string v16, "below"

    aput-object v16, v12, v15

    const/4 v15, 0x5

    const-string v16, "above"

    aput-object v16, v12, v15

    const/16 v15, 0x1fd

    invoke-static {v1, v15, v8, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_cc
    move/from16 v12, p0

    .line 247
    :goto_ce
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v15

    if-ge v12, v15, :cond_fd

    .line 248
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v15

    move-object/from16 v16, v0

    const/16 v0, 0x64

    .line 249
    invoke-virtual {v1, v0, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    const/16 v0, 0x1fa

    .line 250
    invoke-static {v1, v0, v4, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1fb

    .line 251
    invoke-static {v1, v0, v5, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1f7

    .line 252
    invoke-static {v1, v0, v6, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1f8

    .line 253
    invoke-static {v1, v0, v7, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    move-object/from16 v0, p1

    .line 255
    invoke-virtual {v0, v14, v1}, Landroidx/constraintlayout/core/state/Transition;->addKeyPosition(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_ce

    :cond_fd
    move-object/from16 v16, v0

    move-object/from16 v0, p1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_65

    :cond_107
    :goto_107
    return-void
.end method

.method private static parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 19

    move-object/from16 v0, p0

    .line 113
    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "side"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->SIDES:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 115
    const-string v3, "direction"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->DIRECTIONS:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 117
    const-string v4, "scale"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v4

    .line 118
    const-string v5, "threshold"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v5

    .line 119
    const-string v6, "maxVelocity"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v6

    .line 120
    const-string v7, "maxAccel"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v7

    .line 121
    const-string v8, "limitBounds"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    const-string v9, "mode"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->MODE:[Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 123
    const-string v10, "touchUp"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_UP:[Ljava/lang/String;

    invoke-static {v10, v11}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 124
    const-string v11, "springMass"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v11

    .line 125
    const-string v12, "springStiffness"

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v12

    .line 126
    const-string v13, "springDamping"

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v13

    .line 127
    const-string v14, "stopThreshold"

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v14

    .line 128
    const-string v15, "springBoundary"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v14

    sget-object v14, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->BOUNDARY:[Ljava/lang/String;

    invoke-static {v15, v14}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 130
    const-string v15, "around"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/Transition;->createOnSwipe()Landroidx/constraintlayout/core/state/Transition$OnSwipe;

    move-result-object v15

    .line 133
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorSide(I)V

    .line 135
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragDirection(I)V

    .line 136
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragScale(F)V

    .line 137
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragThreshold(F)V

    .line 138
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxVelocity(F)V

    .line 139
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxAcceleration(F)V

    .line 140
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setLimitBoundsTo(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAutoCompleteMode(I)V

    .line 142
    invoke-virtual {v15, v10}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setOnTouchUp(I)V

    .line 143
    invoke-virtual {v15, v11}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringMass(F)V

    .line 144
    invoke-virtual {v15, v12}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStiffness(F)V

    .line 145
    invoke-virtual {v15, v13}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringDamping(F)V

    move/from16 v1, v16

    .line 146
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStopThreshold(F)V

    .line 147
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringBoundary(I)V

    .line 148
    invoke-virtual {v15, v0}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setRotationCenterId(Ljava/lang/String;)V

    return-void
.end method

.method private static set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 263
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    :cond_9
    return-void
.end method
