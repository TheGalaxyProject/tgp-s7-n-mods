.class public Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DcmTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;,
        Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;,
        Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;
    }
.end annotation


# instance fields
.field private final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAlpha:I

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimating:Z

.field private mCurAlpha:I

.field private mCurAnimator:Landroid/animation/Animator;

.field private mCurInnerRadius:F

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mInnerRadiusEnter:F

.field private final mInnerRadiusExit:F

.field private final mInnerRadiusVisibleMax:F

.field private final mInnerRadiusVisibleMin:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mState:I

.field private final mThickness:F

.field private mTrustManaged:Z

.field private final mVisibleAnimator:Landroid/animation/Animator;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Z)V
    .locals 0
    .param p1, "allowTransientState"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    iput v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    .line 263
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    .line 262
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 272
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    .line 271
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0d02bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMin:F

    .line 79
    const v1, 0x7f0d02bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    .line 80
    const v1, 0x7f0d02b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusExit:F

    .line 81
    const v1, 0x7f0d02b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    .line 82
    const v1, 0x7f0d02b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    .line 84
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    .line 87
    const v1, 0x10c000e

    .line 86
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    const v1, 0x10c000d

    .line 88
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 90
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    return-void
.end method

.method private configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "duration"    # J
    .param p4, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "repeating"    # Z

    .prologue
    .line 252
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 253
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    if-eqz p6, :cond_0

    .line 256
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 257
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 259
    :cond_0
    return-object p1
.end method

.method private makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;
    .locals 11
    .param p1, "startRadius"    # F
    .param p2, "endRadius"    # F
    .param p3, "startAlpha"    # I
    .param p4, "endAlpha"    # I
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "repeating"    # Z
    .param p9, "stateUpdateListener"    # Z

    .prologue
    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 236
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 238
    .local v7, "alphaAnimator":Landroid/animation/ValueAnimator;
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 241
    .local v9, "sizeAnimator":Landroid/animation/ValueAnimator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v8, "set":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    if-eqz p9, :cond_0

    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    :cond_0
    return-object v8
.end method

.method private makeEnterAnimator(FI)Landroid/animation/Animator;
    .locals 11
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .prologue
    .line 220
    iget v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    .line 221
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v5, 0xbc

    const-wide/16 v6, 0x1f4

    .line 222
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 220
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeExitAnimator(FI)Landroid/animation/Animator;
    .locals 11
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .prologue
    const/4 v5, 0x0

    .line 226
    iget v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusExit:F

    .line 227
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x1f4

    .line 228
    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v9, v5

    .line 226
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeVisibleAnimator()Landroid/animation/Animator;
    .locals 11

    .prologue
    .line 213
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMin:F

    .line 215
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 214
    const/16 v4, 0xbc

    const/16 v5, 0x66

    const-wide/16 v6, 0x3e8

    .line 216
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    .line 213
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private updateState(Z)V
    .locals 8
    .param p1, "allowTransientState"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    .line 166
    .local v0, "nextState":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v7, :cond_9

    .line 167
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 177
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 178
    if-ne v0, v4, :cond_2

    const/4 v0, 0x2

    .line 179
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v0, 0x0

    .line 182
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-eq v0, v1, :cond_7

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 185
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 188
    :cond_4
    if-nez v0, :cond_d

    .line 189
    iput v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    .line 190
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    .line 204
    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_6

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 208
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    .line 160
    :cond_7
    return-void

    .line 167
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-nez v1, :cond_a

    .line 169
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v4, :cond_b

    .line 171
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 173
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 174
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v5, :cond_1

    .line 175
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :cond_d
    if-ne v0, v4, :cond_e

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeEnterAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v7, :cond_5

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_1

    .line 196
    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 197
    const/16 v1, 0xbc

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    .line 198
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_1

    .line 200
    :cond_f
    if-ne v0, v5, :cond_5

    .line 201
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeExitAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    mul-int/2addr v2, v3

    div-int/lit16 v0, v2, 0x100

    .line 104
    .local v0, "newAlpha":I
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 108
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrustManaged(Z)V
    .locals 2
    .param p1, "trustManaged"    # Z

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    .line 154
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    .line 135
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    .line 132
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 142
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 145
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 147
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    .line 148
    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    .line 140
    :cond_1
    return-void
.end method
