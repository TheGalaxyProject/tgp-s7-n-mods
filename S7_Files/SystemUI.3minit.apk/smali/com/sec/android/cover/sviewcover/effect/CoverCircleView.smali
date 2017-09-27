.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.super Landroid/widget/FrameLayout;
.source "CoverCircleView.java"

# interfaces
.implements Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$4;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$5;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues:[I

.field private static final synthetic -com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues:[I

.field private static final synthetic -com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mActionDown:Z

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatingViews:[Landroid/view/View;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field private mBlinkAnimator:Landroid/animation/ValueAnimator;

.field private mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlpha:I

.field private mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowBitmap:Landroid/graphics/Bitmap;

.field private mCArrowDiagSize:F

.field private final mCArrowPaint:Landroid/graphics/Paint;

.field private mCArrowRect:Landroid/graphics/RectF;

.field private mCArrowScale:F

.field private mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mClearMoveCircle:Z

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field protected mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

.field private mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mDistance:D

.field private mFirstBorder:I

.field private mFling:Z

.field private mImageScale:F

.field private mIsIgnoreTouch:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxRadius:F

.field private mMoveCircleAnimator:Landroid/animation/ValueAnimator;

.field private mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mMoveCirclePaint:Landroid/graphics/Paint;

.field private mMoveCircleRadius:F

.field protected mNeedTochangeParent:Z

.field private mOldDistance:F

.field private mOpenApplication:Z

.field protected mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

.field protected mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

.field protected mPreviewGroup:Landroid/view/ViewGroup;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mSecondBorder:I

.field private mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mStartX:F

.field private mStartY:F

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected final mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

.field protected mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    return v0
.end method

.method static synthetic -get13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    return-wide v0
.end method

.method static synthetic -get14(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFirstBorder:I

    return v0
.end method

.method static synthetic -get15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    return v0
.end method

.method static synthetic -get16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    return v0
.end method

.method static synthetic -get17(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    return v0
.end method

.method static synthetic -get18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get19(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    return v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    return v0
.end method

.method static synthetic -get20(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    return v0
.end method

.method static synthetic -get21(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSecondBorder:I

    return v0
.end method

.method static synthetic -get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    return-object v0
.end method

.method static synthetic -get23(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    return v0
.end method

.method static synthetic -get24(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    return v0
.end method

.method static synthetic -get6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    return v0
.end method

.method static synthetic -get8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set10(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic -set11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    return-wide p1
.end method

.method static synthetic -set12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    return p1
.end method

.method static synthetic -set13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    return p1
.end method

.method static synthetic -set14(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    return p1
.end method

.method static synthetic -set15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    return p1
.end method

.method static synthetic -set17(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    return p1
.end method

.method static synthetic -set18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    return p1
.end method

.method static synthetic -set19(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    return p1
.end method

.method static synthetic -set20(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    return p1
.end method

.method static synthetic -set3(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    return p1
.end method

.method static synthetic -set5(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    return p1
.end method

.method static synthetic -set7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic -set8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCancelFling(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p1, "d"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->showHideCArrow(F)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->shrinkMoveCircle()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p1, "unlocked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->changeParent()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p1, "appear"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAnimator(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowBlinker()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p1, "appear"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;ZZ)V
    .locals 0
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAnimator(ZZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircluRadius(F)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewColor(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v10, 0x3e2e147b    # 0.17f

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    .line 67
    iput v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    .line 68
    iput v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    .line 74
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    .line 83
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .line 87
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    invoke-direct {v3, p0, v9}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    .line 93
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    .line 97
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    .line 98
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    .line 99
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    .line 100
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    .line 106
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    .line 110
    iput v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    .line 146
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    .line 147
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 148
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    .line 168
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 709
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 749
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 755
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$4;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 761
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$5;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$5;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 767
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 773
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    .line 781
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 206
    instance-of v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;

    if-eqz v3, :cond_0

    .line 207
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    .line 214
    :goto_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 217
    new-instance v3, Lcom/android/keyguard/util/ShortcutManager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, v5, p0}, Lcom/android/keyguard/util/ShortcutManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    .line 220
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWillNotDraw(Z)V

    .line 222
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v10, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f547ae1    # 0.83f

    const v6, 0x3f547ae1    # 0.83f

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 225
    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    .line 226
    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    .line 228
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_arrow:I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    .line 231
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3edeb852    # 0.435f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    .line 233
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    .line 237
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$color;->shortcut_affordance_bg:I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 240
    .local v0, "color":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    .line 243
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFirstBorder:I

    .line 248
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_second_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSecondBorder:I

    .line 249
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    .line 203
    return-void

    .line 208
    .end local v0    # "color":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    instance-of v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleRightView;

    if-eqz v3, :cond_1

    .line 209
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    goto/16 :goto_0

    .line 211
    :cond_1
    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    goto/16 :goto_0
.end method

.method private cancelAllAnimators()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 898
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "debugName"    # Ljava/lang/String;

    .prologue
    .line 884
    if-eqz p1, :cond_0

    .line 885
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 887
    const-string/jumbo v0, "mCircleAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAlphaAnimator:mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    const-string/jumbo v0, "mTranslateAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCArrowAnimator:mCArrowScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :cond_2
    const-string/jumbo v0, "mBlinkAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBlinkAnimator:alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 528
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 529
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 532
    .local v1, "viewParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 538
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 540
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    .line 525
    return-void
.end method

.method private checkIsReallyCustom(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .prologue
    .line 276
    const/4 v0, 0x1

    .line 277
    .local v0, "isCustom":Z
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 284
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 290
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private draw4CornerArrows(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 873
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 874
    return-void

    .line 877
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 879
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 872
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 829
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 831
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 828
    :cond_0
    return-void
.end method

.method private drawMovingCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 836
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 838
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 835
    :cond_0
    return-void
.end method

.method private getCurrentVelocity(FF)F
    .locals 10
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 1168
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 1169
    const/4 v6, 0x0

    return v6

    .line 1173
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1174
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 1175
    .local v0, "aX":F
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 1177
    .local v1, "aY":F
    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    sub-float v3, p1, v6

    .line 1178
    .local v3, "bX":F
    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    sub-float v4, p2, v6

    .line 1179
    .local v4, "bY":F
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 1181
    .local v2, "bLen":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    div-float v5, v6, v2

    .line 1183
    .local v5, "projectedVelocity":F
    return v5
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 863
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 864
    .local v1, "mTempPoint":[I
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getLocationInWindow([I)V

    .line 865
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 866
    .local v2, "rootWidth":F
    const/4 v4, 0x0

    aget v4, v1, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 867
    .local v3, "width":F
    sub-float v4, v2, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 868
    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 869
    .local v0, "height":F
    float-to-double v4, v3

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1143
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1139
    return-void
.end method

.method private isCancelFling(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    .line 1154
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getCurrentVelocity(FF)F

    move-result v0

    .line 1155
    .local v0, "velocity":F
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCancelFling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/high16 v1, -0x3a860000    # -4000.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1158
    const/4 v1, 0x0

    return v1

    .line 1161
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1162
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->shrinkMoveCircle()V

    .line 1163
    return v4
.end method

.method private isSecureLockScreen()Z
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraUnlock()V
    .locals 4

    .prologue
    .line 678
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 690
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 691
    const-string/jumbo v2, "CS02"

    .line 690
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 677
    return-void

    .line 682
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 683
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v2

    .line 684
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 682
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onContactUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 614
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    .line 617
    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    .line 618
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$11;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$11;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 616
    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 625
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getTPhoneDialIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    .line 657
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 658
    const-string/jumbo v2, "CS01"

    .line 657
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 613
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    .line 630
    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_popup_favorite:I

    .line 631
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 629
    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 638
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getRegularFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    .line 639
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    invoke-interface {v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->resetPreviewView()V

    goto :goto_0

    .line 644
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick : Launching favorite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 649
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    .line 650
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 649
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCArrowAlphaAnimator(ZZ)V
    .locals 6
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1016
    .local v2, "mCArrowAlphaStart":I
    const/16 v1, 0xff

    .line 1022
    .local v1, "mCArrowAlphaEnd":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCArrowAlphaAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1025
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1026
    if-eqz p2, :cond_1

    const-wide/16 v4, 0x96

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1027
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1028
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1029
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1040
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1011
    return-void

    .line 1018
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "mCArrowAlphaEnd":I
    .end local v2    # "mCArrowAlphaStart":I
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1019
    .restart local v2    # "mCArrowAlphaStart":I
    const/4 v1, 0x0

    .restart local v1    # "mCArrowAlphaEnd":I
    goto :goto_0

    .line 1026
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v4, 0x15e

    goto :goto_1

    .line 1028
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private setCArrowAnimator(Z)V
    .locals 1
    .param p1, "appear"    # Z

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowScaleAnimator(ZZ)V

    .line 973
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAlphaAnimator(ZZ)V

    .line 971
    return-void
.end method

.method private setCArrowBlinker()V
    .locals 4

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setArrowBlinker:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/16 v1, 0xff

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1047
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    .line 1048
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1049
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1050
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1051
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1052
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1063
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1043
    return-void
.end method

.method private setCArrowScaleAnimator(ZZ)V
    .locals 6
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 982
    .local v2, "mCArrowScaleStart":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 989
    .local v1, "mCArrowScaleEnd":F
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCArrowScaleAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 992
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    .line 993
    if-eqz p2, :cond_1

    const-wide/16 v4, 0x96

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 994
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 995
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 996
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1007
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 977
    return-void

    .line 984
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "mCArrowScaleEnd":F
    .end local v2    # "mCArrowScaleStart":F
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 985
    .restart local v2    # "mCArrowScaleStart":F
    const/4 v1, 0x0

    .restart local v1    # "mCArrowScaleEnd":F
    goto :goto_0

    .line 993
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v4, 0x15e

    goto :goto_1

    .line 995
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setCameraImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 704
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setContactImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 663
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$ContentStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 665
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 5
    .param p1, "appear"    # Z

    .prologue
    const/4 v4, 0x0

    .line 944
    if-eqz p1, :cond_0

    .line 945
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    .line 946
    const/16 v1, 0x59

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    .line 952
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDCircleAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    aput v2, v1, v4

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 955
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 956
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 957
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 958
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 943
    return-void

    .line 948
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    .line 949
    iput v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    goto :goto_0

    .line 957
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 4
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 917
    if-eqz p1, :cond_0

    .line 918
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 919
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    .line 925
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDCircleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 927
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 928
    if-eqz p2, :cond_1

    const-wide/16 v2, 0xc8

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 929
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 930
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$13;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$13;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 940
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 916
    return-void

    .line 921
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 922
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    goto :goto_0

    .line 928
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    .line 929
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private varargs setEnabled(Z[Landroid/view/View;)V
    .locals 3
    .param p1, "value"    # Z
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 490
    if-nez p2, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p2, v1

    .line 495
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 494
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setMoveCircleAnimator(ZZ)V
    .locals 7
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v6, 0x0

    .line 1069
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 1074
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    .line 1077
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMoveCircleAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    aput v4, v1, v6

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1079
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    .line 1080
    iget-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    if-eqz v1, :cond_2

    .line 1081
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1083
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1084
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1089
    :goto_1
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1100
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1068
    return-void

    .line 1070
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 1071
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    goto :goto_0

    .line 1086
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1087
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 1086
    :cond_3
    const-wide/16 v2, 0x15e

    goto :goto_2

    .line 1087
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    goto :goto_3
.end method

.method private setMoveCircluRadius(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 844
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    .line 843
    return-void
.end method

.method private setPreviewColor(F)V
    .locals 6
    .param p1, "distance"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 850
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    div-float/2addr v1, v5

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 851
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    div-float v0, p1, v1

    .line 858
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 859
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 848
    return-void

    .line 852
    .end local v0    # "alpha":F
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 853
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 855
    .end local v0    # "alpha":F
    :cond_1
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    div-float v0, v1, v5

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private showHideCArrow(F)V
    .locals 2
    .param p1, "d"    # F

    .prologue
    .line 1104
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1112
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 1113
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    goto :goto_0
.end method

.method private shrinkMoveCircle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 911
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    .line 912
    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V

    .line 909
    return-void
.end method

.method private startHideAnimations(Z)V
    .locals 2
    .param p1, "unlocked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAllAnimators()V

    .line 1120
    invoke-direct {p0, v1, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAnimator(ZZ)V

    .line 1121
    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V

    .line 1123
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircleAnimator(ZZ)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1126
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1131
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 1132
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1118
    return-void

    .line 1123
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1147
    :cond_0
    return-void
.end method

.method private varargs transitOtherViews(Z[Landroid/view/View;)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 446
    if-nez p2, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    const/4 v2, 0x0

    .line 451
    .local v2, "startAlpha":F
    array-length v7, p2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v4, p2, v5

    .line 454
    .local v4, "vTemp":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 451
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    .end local v4    # "vTemp":Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    .line 459
    move v1, v2

    .line 460
    .local v1, "from":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 461
    .local v3, "to":F
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 466
    :goto_1
    cmpl-float v5, v1, v3

    if-nez v5, :cond_3

    .line 468
    return-void

    .line 463
    .end local v1    # "from":F
    .end local v3    # "to":F
    :cond_2
    move v1, v2

    .line 464
    .restart local v1    # "from":F
    const/4 v3, 0x0

    .restart local v3    # "to":F
    goto :goto_1

    .line 471
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 472
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 473
    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    new-instance v5, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;

    invoke-direct {v5, p0, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;[Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 445
    return-void

    .line 473
    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 606
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 605
    :goto_0
    return-void

    .line 609
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 336
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 338
    iget-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-eqz v1, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->changeParent()V

    .line 332
    :cond_0
    return-void
.end method

.method public isCustom()Z
    .locals 2

    .prologue
    .line 601
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 602
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 346
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 344
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 353
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-nez v0, :cond_0

    .line 354
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 355
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    .line 356
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 803
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->draw4CornerArrows(Landroid/graphics/Canvas;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->drawMovingCircle(Landroid/graphics/Canvas;)V

    .line 806
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 807
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 808
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 809
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 801
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 308
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    .line 309
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 815
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    .line 819
    new-instance v0, Landroid/graphics/RectF;

    .line 820
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 821
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 822
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 823
    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 819
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowRect:Landroid/graphics/RectF;

    .line 825
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    .line 814
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 377
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnlockExecuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    .line 364
    return-void

    .line 367
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onContactUnlock()V

    goto :goto_0

    .line 370
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onCameraUnlock()V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 374
    .local v0, "startIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEnabled(Z[Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendShortcutDrag(Z)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnlockViewReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 404
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendShortcutDrag(Z)V

    .line 405
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEnabled(Z[Landroid/view/View;)V

    .line 403
    return-void
.end method

.method public refreshChildView()V
    .locals 4

    .prologue
    .line 566
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    const/4 v1, 0x0

    .line 570
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 571
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 572
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 549
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAllAnimators()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    .line 551
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    .line 552
    iput v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    .line 553
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 557
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 548
    return-void
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 441
    return-void
.end method

.method public setPreviewViewGroup(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPreviewViewGroup, null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 514
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    .line 509
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "coverView"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 501
    return-void
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 423
    return-void

    .line 426
    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShortCutImageResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 428
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setContactImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    goto :goto_0

    .line 431
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCameraImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    goto :goto_0

    .line 434
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V
    .locals 3
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .prologue
    .line 253
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->checkIsReallyCustom(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 257
    .local v0, "hasShortcut":Z
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetSideSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 265
    .end local v0    # "hasShortcut":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 266
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .line 270
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 271
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->updateVisibility()V

    .line 252
    return-void

    .line 254
    :cond_1
    return-void

    .line 259
    .restart local v0    # "hasShortcut":Z
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v0

    .local v0, "hasShortcut":Z
    goto :goto_0

    .line 262
    .local v0, "hasShortcut":Z
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v0

    .local v0, "hasShortcut":Z
    goto :goto_0

    .line 268
    .end local v0    # "hasShortcut":Z
    :cond_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateShortcutIconOnly(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 585
    :cond_0
    return-void
.end method

.method public updateShortcutView(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 578
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimerWithInterval()V

    .line 360
    return-void
.end method
