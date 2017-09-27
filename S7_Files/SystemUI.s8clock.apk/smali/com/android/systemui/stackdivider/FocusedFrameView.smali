.class public Lcom/android/systemui/stackdivider/FocusedFrameView;
.super Landroid/view/View;
.source "FocusedFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;
    }
.end annotation


# static fields
.field static mFocusedStackId:I


# instance fields
.field mAdjustedForIme:Z

.field private mAnimating:Z

.field mBackground:Landroid/view/View;

.field mDividerButtonsVisible:Z

.field mDockSide:I

.field mDockedStackMinimized:Z

.field mGuideView:Z

.field private mLiftFocusedFrameRatio:F

.field mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 51
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 55
    return-void
.end method

.method private isHorizontalDivision()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutFocusedFrameView()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->needToHideFocusedFrameView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    .line 237
    return-void

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "minimizeTop":I
    const/4 v0, 0x0

    .line 243
    .local v0, "minimizeLeft":I
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 244
    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 266
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layout(IIII)V

    .line 269
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    .line 234
    return-void

    .line 247
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v1, v2, v3

    goto :goto_0

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0

    .line 253
    :cond_4
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 254
    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_5

    .line 255
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    .line 257
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 259
    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v2, v4, :cond_1

    .line 260
    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_7

    .line 261
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 263
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method private needToHideFocusedFrameView()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    return v2

    .line 275
    :cond_0
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 276
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 277
    :cond_1
    return v2

    .line 278
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_3

    .line 279
    return v2

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    if-nez v0, :cond_4

    .line 281
    return v2

    .line 282
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    if-eqz v0, :cond_5

    .line 283
    return v2

    .line 284
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    if-eqz v0, :cond_6

    .line 285
    return v3

    .line 288
    :cond_6
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v4, :cond_9

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    .line 291
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v4, :cond_9

    .line 292
    :cond_8
    return v2

    .line 295
    :cond_9
    return v3
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$1()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$2()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$3()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$4()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$5()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$6(Z)V
    .locals 1
    .param p1, "minimized"    # Z

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$7()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 0
    return-void
.end method

.method initialize(Landroid/view/View;)V
    .locals 1
    .param p1, "background"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    sput v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 83
    return-void
.end method

.method liftFocusedFrameView(II)V
    .locals 5
    .param p1, "dividerSize"    # I
    .param p2, "touchElevation"    # I

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x3

    .line 124
    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mLiftFocusedFrameRatio:F

    mul-float v0, v1, v2

    .line 125
    .local v0, "transitionPoint":F
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 126
    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v3, :cond_0

    .line 127
    mul-float/2addr v0, v4

    .line 139
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 146
    const-wide/16 v2, 0x96

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 147
    int-to-float v2, p2

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 122
    return-void

    .line 129
    :cond_1
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 130
    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v3, :cond_0

    .line 131
    mul-float/2addr v0, v4

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v1, v3, :cond_0

    .line 134
    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-eq v1, v3, :cond_0

    .line 135
    mul-float/2addr v0, v4

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 63
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    .line 228
    :cond_0
    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 71
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 79
    .local v1, "orig":F
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 80
    .local v0, "lifted":F
    div-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mLiftFocusedFrameRatio:F

    .line 76
    return-void
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    .line 215
    :cond_1
    return-void
.end method

.method releaseFocusedFrameView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 164
    const-wide/16 v2, 0xc8

    .line 163
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 155
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method setAdjustedForIme(Z)V
    .locals 0
    .param p1, "adjustedForIme"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 201
    return-void
.end method

.method setDockSide(IZ)V
    .locals 1
    .param p1, "newDockSide"    # I
    .param p2, "relayout"    # Z

    .prologue
    .line 100
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eq v0, p1, :cond_0

    .line 101
    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    return-void
.end method

.method setFocusedStack(I)V
    .locals 1
    .param p1, "newFocusedStackId"    # I

    .prologue
    .line 113
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-eq v0, p1, :cond_0

    .line 114
    sput p1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 115
    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

.method setGuideView(Z)V
    .locals 0
    .param p1, "guideview"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 208
    return-void
.end method

.method setMinimizedDockStack(Z)V
    .locals 1
    .param p1, "minimized"    # Z

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 179
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 173
    return-void
.end method

.method setMinimizedDockStack(ZJ)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    .line 184
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method updateLayout()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    .line 92
    return-void
.end method
