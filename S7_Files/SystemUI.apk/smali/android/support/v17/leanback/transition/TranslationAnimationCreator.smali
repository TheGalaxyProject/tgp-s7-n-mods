.class Landroid/support/v17/leanback/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 43
    .local v7, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 44
    .local v8, "terminalY":F
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Landroid/support/v17/leanback/R$id;->transitionPosition:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 45
    .local v12, "startPosition":[I
    if-eqz v12, :cond_0

    .line 46
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int/2addr v3, p2

    int-to-float v3, v3

    add-float p4, v3, v7

    .line 47
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float p5, v3, v8

    .line 50
    :cond_0
    sub-float v3, p4, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v5, p2, v3

    .line 51
    .local v5, "startPosX":I
    sub-float v3, p5, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, p3, v3

    .line 53
    .local v6, "startPosY":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    cmpl-float v3, p4, p6

    if-nez v3, :cond_1

    cmpl-float v3, p5, p7

    if-nez v3, :cond_1

    .line 56
    const/4 v3, 0x0

    return-object v3

    .line 58
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 59
    .local v11, "path":Landroid/graphics/Path;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 64
    .local v10, "anim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;)V

    .line 66
    .local v2, "listener":Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 67
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 69
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    return-object v10
.end method
