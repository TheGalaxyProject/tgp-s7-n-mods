.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOwnPosition:[I

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 38
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 372
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 373
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v4

    .line 374
    .local v4, "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;)V

    .line 375
    return-object v4

    .line 377
    .end local v4    # "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x1020427

    if-ne v6, v7, :cond_1

    .line 378
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    .line 379
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;)V

    .line 380
    return-object v0

    .line 382
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    :cond_1
    instance-of v6, p0, Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_2

    .line 383
    invoke-static {}, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->obtain()Lcom/android/systemui/statusbar/notification/HeaderTransformState;

    move-result-object v1

    .line 384
    .local v1, "result":Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->initFrom(Landroid/view/View;)V

    .line 385
    return-object v1

    .line 387
    .end local v1    # "result":Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 388
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v2

    .line 389
    .local v2, "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;)V

    .line 390
    return-object v2

    .line 392
    .end local v2    # "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    :cond_3
    instance-of v6, p0, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_4

    .line 393
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v3

    .line 394
    .local v3, "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;)V

    .line 395
    return-object v3

    .line 397
    .end local v3    # "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v5

    .line 398
    .local v5, "result":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 399
    return-object v5
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    .prologue
    .line 492
    sget-object v1, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    .line 493
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_0

    .line 494
    return-object v0

    .line 496
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .locals 12
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z

    .prologue
    const v11, 0x7f130046

    const v10, 0x7f130044

    const v9, 0x7f130045

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 306
    .local v5, "view":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 307
    .local v1, "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 308
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 309
    .restart local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 311
    :cond_0
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 312
    .local v0, "clipChildren":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 313
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 314
    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 316
    :cond_1
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 317
    .local v2, "clipToPadding":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 318
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 319
    invoke-virtual {v5, v11, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 321
    :cond_2
    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_5

    move-object v4, v5

    .line 322
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 324
    :goto_1
    if-nez p1, :cond_6

    .line 325
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 328
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 329
    invoke-virtual {v5, v9, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 330
    if-eqz v4, :cond_3

    .line 331
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    .line 343
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 346
    :cond_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 347
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    move-object v5, v3

    .line 348
    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_0

    .line 323
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 v4, 0x0

    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 335
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 337
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 338
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_2

    .line 344
    :cond_7
    return-void

    .line 350
    .restart local v3    # "parent":Landroid/view/ViewParent;
    :cond_8
    return-void
.end method

.method private setTransformationStartScaleX(F)V
    .locals 3
    .param p1, "startScaleX"    # F

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 445
    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 3
    .param p1, "startScaleY"    # F

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f130040

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 449
    return-void
.end method

.method private transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 13
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 98
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 99
    .local v10, "transformedView":Landroid/view/View;
    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_9

    const/4 v6, 0x1

    .line 100
    .local v6, "transformX":Z
    :goto_0
    and-int/lit8 v11, p2, 0x10

    if-eqz v11, :cond_a

    const/4 v7, 0x1

    .line 101
    .local v7, "transformY":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v5

    .line 103
    .local v5, "transformScale":Z
    const/4 v11, 0x0

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_0

    .line 104
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_b

    .line 109
    :cond_0
    :goto_2
    const/4 v11, 0x0

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_e

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v2

    .line 114
    .local v2, "otherPosition":[I
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v4

    .line 115
    .local v4, "ownStablePosition":[I
    if-eqz p3, :cond_f

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 140
    :goto_4
    if-nez v6, :cond_1

    .line 141
    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 143
    :cond_1
    if-nez v7, :cond_2

    .line 144
    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 146
    :cond_2
    if-nez v5, :cond_3

    .line 147
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 148
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 150
    :cond_3
    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 152
    .end local v2    # "otherPosition":[I
    .end local v4    # "ownStablePosition":[I
    :cond_4
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move/from16 v0, p4

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 154
    .local v1, "interpolatedValue":F
    if-eqz v6, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    .line 156
    const/4 v12, 0x0

    .line 155
    invoke-static {v11, v12, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    :cond_5
    if-eqz v7, :cond_6

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    .line 161
    const/4 v12, 0x0

    .line 160
    invoke-static {v11, v12, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    :cond_6
    if-eqz v5, :cond_8

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v8

    .line 166
    .local v8, "transformationStartScaleX":F
    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, v8, v11

    if-eqz v11, :cond_7

    .line 169
    const/high16 v11, 0x3f800000    # 1.0f

    .line 168
    invoke-static {v8, v11, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    .line 167
    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleX(F)V

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v9

    .line 173
    .local v9, "transformationStartScaleY":F
    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, v9, v11

    if-eqz v11, :cond_8

    .line 176
    const/high16 v11, 0x3f800000    # 1.0f

    .line 175
    invoke-static {v9, v11, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    .line 174
    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleY(F)V

    .line 97
    .end local v8    # "transformationStartScaleX":F
    .end local v9    # "transformationStartScaleY":F
    :cond_8
    return-void

    .line 99
    .end local v1    # "interpolatedValue":F
    .end local v5    # "transformScale":Z
    .end local v6    # "transformX":Z
    .end local v7    # "transformY":Z
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "transformX":Z
    goto/16 :goto_0

    .line 100
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "transformY":Z
    goto/16 :goto_1

    .line 105
    .restart local v5    # "transformScale":Z
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 106
    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 107
    :cond_d
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 112
    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v2

    .restart local v2    # "otherPosition":[I
    goto/16 :goto_3

    .line 117
    .restart local v4    # "ownStablePosition":[I
    :cond_f
    if-eqz v6, :cond_10

    .line 118
    const/4 v11, 0x0

    aget v11, v2, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 120
    :cond_10
    if-eqz v7, :cond_11

    .line 121
    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 124
    :cond_11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "otherView":Landroid/view/View;
    if-eqz v5, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    if-eq v11, v12, :cond_12

    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v12

    mul-float/2addr v11, v12

    .line 127
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    .line 126
    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    .line 132
    :goto_5
    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eq v11, v12, :cond_13

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v11, v12

    .line 134
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    .line 133
    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 135
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_4

    .line 130
    :cond_12
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto :goto_5

    .line 137
    :cond_13
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_4
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 20
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 228
    .local v17, "transformedView":Landroid/view/View;
    and-int/lit8 v18, p2, 0x1

    if-eqz v18, :cond_9

    const/4 v11, 0x1

    .line 229
    .local v11, "transformX":Z
    :goto_0
    and-int/lit8 v18, p2, 0x10

    if-eqz v18, :cond_a

    const/4 v12, 0x1

    .line 230
    .local v12, "transformY":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v10

    .line 232
    .local v10, "transformScale":Z
    const/16 v18, 0x0

    cmpl-float v18, p4, v18

    if-nez v18, :cond_2

    .line 233
    if-eqz v11, :cond_0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    .line 235
    .local v15, "transformationStartX":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v15, v18

    if-eqz v18, :cond_b

    move v9, v15

    .line 237
    .local v9, "start":F
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 239
    .end local v9    # "start":F
    .end local v15    # "transformationStartX":F
    :cond_0
    if-eqz v12, :cond_1

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v16

    .line 241
    .local v16, "transformationStartY":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v16, v18

    if-eqz v18, :cond_c

    move/from16 v9, v16

    .line 243
    .restart local v9    # "start":F
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 245
    .end local v9    # "start":F
    .end local v16    # "transformationStartY":F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 246
    .local v7, "otherView":Landroid/view/View;
    if-eqz v10, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 247
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScaleX()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 248
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    .line 252
    :goto_4
    if-eqz v10, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 253
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScaleY()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 254
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    .line 258
    :goto_5
    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 260
    .end local v7    # "otherView":Landroid/view/View;
    :cond_2
    sget-object v18, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 262
    .local v5, "interpolatedValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v6

    .line 263
    .local v6, "otherStablePosition":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    .line 264
    .local v8, "ownPosition":[I
    if-eqz v11, :cond_4

    .line 265
    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v19, 0x0

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v3, v0

    .line 266
    .local v3, "endX":F
    if-eqz p3, :cond_3

    .line 267
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v18

    .line 266
    if-eqz v18, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 270
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationX(F)V

    .line 274
    .end local v3    # "endX":F
    :cond_4
    if-eqz v12, :cond_6

    .line 275
    const/16 v18, 0x1

    aget v18, v6, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v4, v0

    .line 276
    .local v4, "endY":F
    if-eqz p3, :cond_5

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v18

    .line 276
    if-eqz v18, :cond_5

    .line 278
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 280
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationY(F)V

    .line 284
    .end local v4    # "endY":F
    :cond_6
    if-eqz v10, :cond_8

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 286
    .restart local v7    # "otherView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v13

    .line 287
    .local v13, "transformationStartScaleX":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_7

    .line 290
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 289
    move/from16 v0, v18

    invoke-static {v13, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    .line 288
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setScaleX(F)V

    .line 293
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v14

    .line 294
    .local v14, "transformationStartScaleY":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_8

    .line 297
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 296
    move/from16 v0, v18

    invoke-static {v14, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    .line 295
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setScaleY(F)V

    .line 224
    .end local v7    # "otherView":Landroid/view/View;
    .end local v13    # "transformationStartScaleX":F
    .end local v14    # "transformationStartScaleY":F
    :cond_8
    return-void

    .line 228
    .end local v5    # "interpolatedValue":F
    .end local v6    # "otherStablePosition":[I
    .end local v8    # "ownPosition":[I
    .end local v10    # "transformScale":Z
    .end local v11    # "transformX":Z
    .end local v12    # "transformY":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "transformX":Z
    goto/16 :goto_0

    .line 229
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "transformY":Z
    goto/16 :goto_1

    .line 236
    .restart local v10    # "transformScale":Z
    .restart local v15    # "transformationStartX":F
    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationX()F

    move-result v9

    goto/16 :goto_2

    .line 242
    .end local v15    # "transformationStartX":F
    .restart local v16    # "transformationStartY":F
    :cond_c
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationY()F

    move-result v9

    goto/16 :goto_3

    .line 250
    .end local v16    # "transformationStartY":F
    .restart local v7    # "otherView":Landroid/view/View;
    :cond_d
    const/high16 v18, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_4

    .line 256
    :cond_e
    const/high16 v18, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_5
.end method


# virtual methods
.method public abortTransformation()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003d

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003e

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f130040

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 484
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    .line 357
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 358
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 359
    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f13003f

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 429
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartScaleY()F
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f130040

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartX()F
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f13003d

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartY()F
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f13003e

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 58
    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 471
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    .line 405
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 455
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 456
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 453
    return-void
.end method

.method protected resetTransformedView()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 475
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public setTransformationEndY(F)V
    .locals 0
    .param p1, "transformationEndY"    # F

    .prologue
    .line 410
    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 409
    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 3
    .param p1, "transformationStartX"    # F

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003d

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 437
    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 3
    .param p1, "transformationStartY"    # F

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f13003e

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 441
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 461
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 466
    if-eqz p1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 459
    :cond_1
    return-void

    .line 464
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 465
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected transformScale()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 67
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 82
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 81
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 209
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 208
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    return v2

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 92
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 91
    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 88
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 87
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 219
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 218
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 215
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 214
    return-void
.end method
