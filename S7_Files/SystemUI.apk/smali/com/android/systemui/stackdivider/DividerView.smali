.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$GuideView;,
        Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;,
        Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private adjStartPosition:Z

.field private mAdjustedForIme:Z

.field private mAnimateAfterRecentsDrawn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDimming:Z

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDissmissEnd:Z

.field private mDividerFlag:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private final mFocusedStackSnapTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowAfterRecentsDrawn:Z

.field private mGrowRecents:Z

.field private mGuideHeight:I

.field private mGuideRect:Landroid/graphics/Rect;

.field private mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mHasAutoResizingSnapTarget:Z

.field private mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

.field private mLastOrientation:I

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field protected mLiftBackgroundScale:F

.field private mLongPressEntraceAnimDuration:I

.field mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mMaximizeAnimationRunning:Z

.field private mMaximizeGuideView:Z

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private mOriginalDockedTaskRect:Landroid/graphics/Rect;

.field private mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private mResizeTaskToStackBounds:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapGuideVisible:Z

.field protected mSnapModeRunning:Z

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mSure:Z

.field private final mTempInt2:[I

.field private mToggleSplitScreen:Z

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUserId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private personaBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 0
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "anim"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->playTouchSound()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 163
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 162
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 164
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 167
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 166
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 198
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 217
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 218
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 230
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2264
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2273
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2285
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 198
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 217
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 218
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 230
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2264
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2273
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2285
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 198
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 217
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 218
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 230
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2264
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2273
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2285
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 198
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 217
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 218
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 230
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2264
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2273
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2285
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 344
    return-void
.end method

.method private EnterFreeformTask()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2163
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 2164
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    .line 2165
    .local v1, "topLeft":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2166
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    .line 2167
    .local v0, "adjustedFocus":I
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->enterFreeformTask(I)V

    .line 2162
    .end local v0    # "adjustedFocus":I
    .end local v1    # "topLeft":I
    :cond_1
    return-void
.end method

.method private adjustFocusForClose(Z)I
    .locals 5
    .param p1, "topLeft"    # Z

    .prologue
    .line 2198
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2199
    .local v1, "iAm":Landroid/app/IActivityManager;
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2200
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2203
    :cond_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2204
    const/4 v2, 0x1

    .line 2206
    .local v2, "stackId":I
    :goto_0
    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    return v2

    .line 2204
    .end local v2    # "stackId":I
    :cond_1
    const/4 v2, 0x3

    .restart local v2    # "stackId":I
    goto :goto_0

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    return v2

    .line 2209
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 2210
    return v2
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1480
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1481
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1483
    .local v0, "height":I
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v2, :cond_1

    .line 1486
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1488
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 1489
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1488
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1479
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 1493
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 1492
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1497
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 1498
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1497
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1473
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1474
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1475
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1476
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 1475
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1472
    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p4, "position"    # I
    .param p5, "taskPosition"    # I

    .prologue
    const/4 v9, 0x0

    .line 1701
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1702
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    .line 1701
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1703
    .local v1, "fraction":F
    const/4 v0, 0x0

    .line 1704
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v4, 0x0

    .line 1705
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v5, 0x0

    .line 1706
    .local v5, "start":I
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_4

    .line 1707
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    .line 1706
    if-eqz v7, :cond_4

    .line 1708
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1709
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1711
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1714
    :cond_0
    move v5, p5

    .line 1723
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    cmpl-float v7, v1, v9

    if-lez v7, :cond_2

    .line 1724
    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    .line 1723
    if-eqz v7, :cond_2

    .line 1725
    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    .line 1726
    int-to-float v7, v5

    .line 1727
    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 1726
    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 1728
    .local v3, "offsetPosition":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1729
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1730
    .local v2, "height":I
    packed-switch p2, :pswitch_data_0

    .line 1700
    .end local v2    # "height":I
    .end local v3    # "offsetPosition":I
    .end local v6    # "width":I
    :cond_2
    :goto_1
    return-void

    .line 1711
    .restart local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v7, :cond_0

    .line 1712
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1717
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_1

    .line 1718
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    .line 1717
    if-eqz v7, :cond_1

    .line 1719
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1720
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1721
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1732
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v2    # "height":I
    .restart local v3    # "offsetPosition":I
    .restart local v6    # "width":I
    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1733
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1736
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1737
    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1740
    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1741
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1744
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1745
    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1637
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1638
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1640
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1641
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1642
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I
    .locals 7
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "stackId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 992
    const/4 v0, -0x1

    .line 994
    .local v0, "adjustTargetPosition":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 996
    .local v1, "displaySize":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 997
    if-ne p2, v6, :cond_3

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1012
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1013
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1012
    if-eq v4, v5, :cond_9

    .line 1013
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v3, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1015
    .local v3, "startPosition":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1016
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1015
    if-eq v4, v5, :cond_a

    .line 1016
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v2, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1020
    .local v2, "endPosition":I
    :goto_3
    if-ge v0, v3, :cond_b

    .line 1021
    move v0, v3

    .line 1026
    :cond_1
    :goto_4
    return v0

    .line 994
    .end local v1    # "displaySize":I
    .end local v2    # "endPosition":I
    .end local v3    # "startPosition":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .restart local v1    # "displaySize":I
    goto :goto_0

    .line 999
    :cond_3
    if-ne p2, v5, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 1003
    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne p2, v6, :cond_6

    .line 1005
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    .line 1004
    :cond_6
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq p2, v5, :cond_5

    .line 1006
    :cond_7
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne p2, v5, :cond_8

    .line 1008
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 1007
    :cond_8
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p2, v6, :cond_0

    goto :goto_5

    .line 1014
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v3

    .restart local v3    # "startPosition":I
    goto :goto_2

    .line 1017
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v5

    sub-int v2, v4, v5

    .restart local v2    # "endPosition":I
    goto :goto_3

    .line 1022
    :cond_b
    if-le v0, v2, :cond_1

    .line 1023
    move v0, v2

    goto :goto_4
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3
    .param p0, "fraction"    # F
    .param p1, "dockSide"    # I

    .prologue
    .line 1756
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    .line 1759
    .local v0, "result":F
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1760
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1762
    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2
    .param p1, "touchX"    # I

    .prologue
    .line 1465
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2
    .param p1, "touchY"    # I

    .prologue
    .line 1469
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1138
    :cond_0
    return-void
.end method

.method private closeTask()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2123
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    .line 2124
    .local v1, "topLeft":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2125
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    .line 2126
    .local v0, "adjustedFocus":I
    new-instance v2, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z

    .line 2132
    .end local v0    # "adjustedFocus":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SPAC"

    .line 2133
    const-string/jumbo v4, "Close"

    .line 2132
    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5
    .param p1, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1145
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_0

    .line 1146
    return-void

    .line 1149
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v1, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    invoke-interface {v1}, Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;->work()V

    .line 1167
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1144
    return-void

    .line 1154
    :cond_1
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_4

    .line 1155
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_2

    .line 1156
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1161
    .local v0, "dismissOrMaximize":Z
    :goto_1
    if-eqz v0, :cond_7

    .line 1162
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_0

    .line 1155
    .end local v0    # "dismissOrMaximize":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1156
    .end local v0    # "dismissOrMaximize":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1158
    .end local v0    # "dismissOrMaximize":Z
    :cond_4
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1159
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1158
    .end local v0    # "dismissOrMaximize":Z
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1159
    .end local v0    # "dismissOrMaximize":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1164
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_0
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 872
    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1794
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1787
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawGuideView(II)V
    .locals 9
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2372
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    .line 2373
    .local v4, "isPortrait":Z
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2397
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    move p1, v5

    .end local p1    # "positionX":I
    :cond_1
    iput p1, v6, Landroid/graphics/Rect;->left:I

    .line 2398
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    .end local p2    # "positionY":I
    :goto_1
    iput p2, v6, Landroid/graphics/Rect;->top:I

    .line 2399
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_2
    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 2400
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    :goto_3
    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 2402
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->show(Landroid/graphics/Rect;)V

    .line 2371
    return-void

    .line 2374
    .restart local p1    # "positionX":I
    .restart local p2    # "positionY":I
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2375
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040035

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2377
    .local v2, "guideView":Landroid/widget/FrameLayout;
    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 2378
    .local v1, "foucsedStackId":I
    if-ne v1, v8, :cond_4

    .line 2379
    if-eqz v4, :cond_3

    .line 2380
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x2

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2384
    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2393
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_5
    new-instance v6, Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    .line 2394
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7, v1, v0, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V

    .line 2395
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V

    goto :goto_0

    .line 2382
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_4

    .line 2386
    :cond_4
    if-eqz v4, :cond_5

    .line 2387
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x4

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2391
    :goto_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_5

    .line 2389
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_6

    .end local v1    # "foucsedStackId":I
    .end local v2    # "guideView":Landroid/widget/FrameLayout;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local p1    # "positionX":I
    :cond_6
    move p2, v5

    .line 2398
    goto/16 :goto_1

    .line 2399
    .end local p2    # "positionY":I
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    goto/16 :goto_2

    .line 2400
    :cond_8
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto :goto_3
.end method

.method private drawGuideViewDimLayer(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2420
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2423
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 2424
    .local v0, "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    .line 2425
    .local v1, "dimFraction":F
    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 2426
    .local v2, "foucsedStackId":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2427
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 2428
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    .line 2419
    :cond_1
    :goto_0
    return-void

    .line 2421
    .end local v0    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v1    # "dimFraction":F
    .end local v2    # "foucsedStackId":I
    :cond_2
    return-void

    .line 2431
    .restart local v0    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v1    # "dimFraction":F
    .restart local v2    # "foucsedStackId":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 2432
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    goto :goto_0
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 2287
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2288
    .local v5, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v5, :cond_0

    .line 2289
    return-void

    .line 2291
    :cond_0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v4, v7

    .line 2293
    .local v4, "mUid":I
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 2294
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    return-void

    .line 2291
    .end local v4    # "mUid":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    goto :goto_0

    .line 2296
    .restart local v4    # "mUid":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v6

    .line 2297
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v2

    .line 2298
    .local v2, "height":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2299
    .local v1, "badgeW":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2301
    .local v0, "badgeH":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    .line 2302
    .local v3, "landscape":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 2303
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v1, 0x2

    sub-int v9, v6, v9

    sub-int v10, v2, v0

    sub-int v11, v6, v1

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2307
    :goto_2
    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    .line 2308
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2310
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2286
    return-void

    .end local v3    # "landscape":Z
    :cond_5
    move v3, v7

    .line 2301
    goto :goto_1

    .line 2305
    .restart local v3    # "landscape":Z
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    sub-int v9, v6, v1

    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v2, v10

    sub-int v11, v2, v0

    invoke-virtual {v8, v9, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method private fling(IFZZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 879
    .local v7, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 882
    :cond_0
    if-eqz p4, :cond_1

    .line 883
    invoke-direct {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 887
    :cond_1
    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v0, p1, :cond_4

    .line 890
    :cond_2
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v7, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 891
    .local v6, "anim":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v1, p1

    iget v2, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 892
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 895
    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOOF"

    .line 898
    const-string/jumbo v2, "DividerDragging"

    .line 897
    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .end local v6    # "anim":Landroid/animation/ValueAnimator;
    :cond_3
    :goto_0
    return-void

    .line 889
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v0, p1, :cond_2

    .line 902
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 903
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_0
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1046
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1047
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1048
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1049
    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1050
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1045
    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3
    .param p1, "position"    # I
    .param p2, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x0

    .line 1647
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 1648
    return v2

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    .line 1651
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1652
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1653
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    .line 1658
    :cond_1
    return v0
.end method

.method private getDividerButtonsTarget()I
    .locals 5

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v2

    .line 2110
    .local v2, "focusedStackId":I
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2111
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2113
    :cond_0
    const/4 v3, 0x3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 2114
    .local v0, "dockFocus":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    .line 2115
    .local v1, "dockTop":Z
    if-ne v0, v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 2113
    .end local v0    # "dockFocus":Z
    .end local v1    # "dockTop":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "dockFocus":Z
    goto :goto_0

    .line 2116
    .restart local v1    # "dockTop":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "position"    # I
    .param p2, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "endDelay"    # J

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1055
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1059
    .local v2, "taskPositionSameAtEnd":Z
    :goto_0
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v3, v6, :cond_1

    .line 1060
    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 1067
    :goto_1
    new-array v3, v6, [I

    aput p1, v3, v4

    iget v4, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1068
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$5;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1083
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1104
    .local v1, "endAction":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$6;

    invoke-direct {v3, p0, p3, p4, v1}, Lcom/android/systemui/stackdivider/DividerView$6;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1134
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 1135
    return-object v0

    .line 1055
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "endAction":Ljava/lang/Runnable;
    .end local v2    # "taskPositionSameAtEnd":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "taskPositionSameAtEnd":Z
    goto :goto_0

    .line 1062
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    goto :goto_1
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1774
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1775
    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1776
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1774
    if-eqz v0, :cond_2

    .line 1777
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1779
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    .line 2314
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 2315
    .local v6, "mUm":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2316
    .local v4, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_name"

    invoke-static {v10, v11, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 2317
    .local v9, "userName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2318
    .local v5, "mPm":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_3

    .line 2320
    if-eqz v4, :cond_1

    .line 2321
    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2322
    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v1

    .line 2323
    .local v1, "badge":[B
    const/4 v2, 0x0

    .line 2324
    .local v2, "badgeimage":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2325
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "badgeimage":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 2326
    array-length v11, v1

    invoke-static {v1, v12, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 2325
    invoke-direct {v2, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2327
    :cond_0
    return-object v2

    .line 2332
    .end local v1    # "badge":[B
    :cond_1
    if-eqz v5, :cond_3

    .line 2333
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2334
    const-string/jumbo v0, "com.samsung.knox.securefolder"

    .line 2336
    .local v0, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v7

    .line 2337
    .local v7, "packageResources":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 2338
    .local v8, "resid":I
    const-string/jumbo v10, "ic_sf_badge_bottom"

    const-string/jumbo v11, "drawable"

    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2340
    if-eqz v8, :cond_2

    .line 2341
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    .line 2343
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10804c2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 2345
    .end local v7    # "packageResources":Landroid/content/res/Resources;
    .end local v8    # "resid":I
    :catch_0
    move-exception v3

    .line 2346
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2353
    .end local v0    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10803ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    .line 2348
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2349
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v10, v12}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1665
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1666
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1672
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1673
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 1675
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private hideGuideView(Landroid/graphics/Point;Z)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "anim"    # Z

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    if-eqz p2, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V

    .line 2407
    :cond_0
    :goto_0
    return-void

    .line 2412
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->cancelAnimation()V

    goto :goto_0
.end method

.method private initializeSnapAlgorithm()V
    .locals 7

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 639
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 638
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 636
    :cond_0
    return-void
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3
    .param p0, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p1, "position"    # I
    .param p2, "dockSide"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1766
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    .line 1767
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1769
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    .line 1171
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    .line 1172
    return-void

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1189
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1190
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 1189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1198
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 1197
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 1206
    const/4 v2, 0x0

    .line 1205
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->liftFocusedFrameView(II)V

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 1170
    return-void

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 846
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 848
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 845
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 850
    goto :goto_0

    .line 851
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 853
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 852
    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 855
    goto :goto_2

    .line 856
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 857
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 859
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 860
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 861
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 860
    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 863
    goto :goto_3

    .line 864
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 866
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 865
    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    .line 868
    goto :goto_4
.end method

.method private playTouchSound()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1037
    :cond_0
    return-void
.end method

.method private registerKnoxBadgeReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2266
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-nez v1, :cond_0

    .line 2267
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2268
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2269
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2265
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1214
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    .line 1215
    return-void

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1218
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1217
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1225
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1224
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->releaseFocusedFrameView()V

    .line 1236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 1213
    return-void
.end method

.method private resetBackground()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 1401
    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "taskPosition"    # I
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1686
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1688
    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1689
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1688
    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1692
    :cond_1
    return p1
.end method

.method private scrollGuideView(II)V
    .locals 7
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v6, 0x1

    .line 2440
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2443
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    .line 2444
    .local v0, "isPortrait":Z
    if-eqz v0, :cond_3

    move v2, p2

    .line 2445
    .local v2, "scrollStartPosition":I
    :goto_0
    const/4 v1, 0x0

    .line 2447
    .local v1, "scrollEndPosition":I
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v2, v3, :cond_4

    .line 2448
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 2453
    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 2454
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2455
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2456
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerView$9;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView$9;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZII)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2465
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 2466
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2439
    return-void

    .line 2441
    .end local v0    # "isPortrait":Z
    .end local v1    # "scrollEndPosition":I
    .end local v2    # "scrollStartPosition":I
    :cond_2
    return-void

    .line 2444
    .restart local v0    # "isPortrait":Z
    :cond_3
    move v2, p1

    .restart local v2    # "scrollStartPosition":I
    goto :goto_0

    .line 2449
    .restart local v1    # "scrollEndPosition":I
    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v2, v3, :cond_1

    .line 2450
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1
.end method

.method private setBackgroundFraction()V
    .locals 4

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 452
    .local v1, "orig":F
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 453
    .local v0, "lifted":F
    div-float v2, v0, v1

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 450
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 619
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 5

    .prologue
    .line 1446
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1447
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1448
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 1449
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1450
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 1451
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 1452
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 1453
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 1444
    return-void
.end method

.method private updateDockSide()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 627
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    .line 625
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$1(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1084
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 1088
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1089
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1092
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 1094
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->areTasksOverlapping(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void

    .line 1097
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    goto :goto_0
.end method

.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$3()V
    .locals 2

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeFocusedStackByDivider(Z)V

    .line 0
    return-void
.end method

.method public animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z
    .locals 13
    .param p1, "focusedStackId"    # I
    .param p2, "focusedStackWork"    # Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 2175
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    .line 2176
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 2177
    .local v0, "dockSide":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    .line 2193
    :cond_0
    return v2

    .line 2178
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 2180
    .local v11, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v1, v12

    :goto_0
    if-ne v6, v1, :cond_3

    .line 2181
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 2184
    .local v3, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 2185
    iput-boolean v12, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 2186
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 2187
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 2188
    const-wide/16 v8, 0x0

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    move-object v1, p0

    move-wide v6, v4

    .line 2187
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 2190
    return v12

    .end local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    move v1, v2

    .line 2180
    goto :goto_0

    .line 2182
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .restart local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_1
.end method

.method public areTasksOverlapping(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1968
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1969
    .local v0, "focusedTaskRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1970
    .local v1, "otherTaskRect":Landroid/graphics/Rect;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1971
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1975
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1972
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1973
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1976
    :cond_3
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_1
.end method

.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "dockSide"    # I
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1503
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 1504
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    .line 1503
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1502
    return-void
.end method

.method public checkDividerFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 2006
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 2243
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    if-eqz v0, :cond_0

    .line 2244
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->completeToggleSplitScreen()V

    .line 2245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 2242
    :cond_0
    return-void
.end method

.method public dismissDockStack(ZJ)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 1328
    if-eqz p1, :cond_0

    .line 1329
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$7;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2365
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    .line 2363
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2359
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    .line 2357
    :cond_0
    return-void
.end method

.method public flingToFocusedStackSnapTarget(IZ)V
    .locals 12
    .param p1, "stackId"    # I
    .param p2, "resize"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 918
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 920
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 922
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 925
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 926
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 927
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 929
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 931
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 915
    :cond_0
    return-void
.end method

.method public flingToNewFocusedStackSnapTarget(Landroid/graphics/Rect;I)V
    .locals 12
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "stackId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 937
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eq p2, v11, :cond_0

    .line 938
    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 942
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 945
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 946
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 948
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 949
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 950
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 951
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->initiateAutoResizingTargets(Landroid/graphics/Rect;I)V

    .line 953
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 954
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 955
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 935
    return-void
.end method

.method public getAutoResizingTargetPos(I)I
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v0

    .line 1985
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 645
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1814
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1816
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 1817
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1818
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 1814
    goto :goto_0

    .line 1820
    .restart local v0    # "result":Z
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1991
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v1

    .line 1990
    if-ne v0, v1, :cond_0

    .line 1992
    const/4 v0, 0x1

    return v0

    .line 1994
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initTaskBounds(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1940
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1941
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1942
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1948
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v0

    .line 1949
    .local v0, "targetPos":I
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 1938
    return-void

    .line 1943
    .end local v0    # "targetPos":I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1944
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1945
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public initiateAutoResizingTargets(Landroid/graphics/Rect;I)V
    .locals 9
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "stackId"    # I

    .prologue
    const/4 v8, 0x0

    .line 961
    const/4 v6, 0x3

    if-ne p2, v6, :cond_1

    const/4 v1, 0x1

    .line 962
    .local v1, "dockedStackHasFocus":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    .line 963
    .local v0, "currentPosition":I
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 964
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 966
    const/4 v5, 0x0

    .line 967
    .local v5, "taskRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 968
    .local v3, "otherTaskRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 969
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 970
    .local v5, "taskRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 976
    .local v3, "otherTaskRect":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 977
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v4

    .line 978
    .local v4, "targetPos":I
    if-eqz v1, :cond_3

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_3

    .line 980
    :cond_0
    if-eqz v1, :cond_5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    :goto_2
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 986
    :goto_3
    if-eqz v1, :cond_7

    const/4 v2, 0x1

    .line 987
    .local v2, "oppositeStackId":I
    :goto_4
    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v4, v4, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, p2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 988
    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v0, v0, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 959
    return-void

    .line 961
    .end local v0    # "currentPosition":I
    .end local v1    # "dockedStackHasFocus":Z
    .end local v2    # "oppositeStackId":I
    .end local v3    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v4    # "targetPos":I
    .end local v5    # "taskRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "dockedStackHasFocus":Z
    goto :goto_0

    .line 972
    .restart local v0    # "currentPosition":I
    .local v3, "otherTaskRect":Landroid/graphics/Rect;
    .local v5, "taskRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 973
    .local v5, "taskRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .local v3, "otherTaskRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 978
    .restart local v4    # "targetPos":I
    :cond_3
    if-nez v1, :cond_4

    .line 979
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v6, :cond_0

    .line 983
    :cond_4
    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    :goto_5
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 980
    :cond_5
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    goto :goto_2

    .line 983
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_5

    .line 986
    :cond_7
    const/4 v2, 0x3

    .restart local v2    # "oppositeStackId":I
    goto :goto_4
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    .line 2253
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalDivision()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1461
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

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

.method isMoving()Z
    .locals 1

    .prologue
    .line 2239
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return v0
.end method

.method public needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "focusedStackRect"    # Landroid/graphics/Rect;
    .param p2, "focusedTaskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1032
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1034
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDockSideChanged(I)V
    .locals 3
    .param p1, "newDockSide"    # I

    .prologue
    .line 1432
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    .line 1441
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    .line 1431
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v5, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 478
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 479
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 478
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_1

    .line 481
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 485
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 459
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1833
    iget v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1834
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    .line 1835
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    .line 1836
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1838
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1839
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    .line 1840
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 1839
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    .line 1841
    .local v0, "position":I
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1843
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1842
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1846
    invoke-virtual {p0, v4}, Lcom/android/systemui/stackdivider/DividerView;->performHapticFeedback(I)Z

    .line 1832
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 3
    .param p1, "recentsActivityStartingEvent"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    const/4 v2, 0x0

    .line 1825
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1826
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    .line 1827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    .line 1828
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1824
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 12
    .param p1, "undockingTaskEvent"    # Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1877
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 1878
    .local v0, "dockSide":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    .line 1882
    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v4, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_INVISIBLE:I

    invoke-direct {v2, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    .line 1881
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1885
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1886
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1887
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 1891
    .local v3, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1892
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 1893
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    .line 1894
    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1893
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 1897
    invoke-virtual {p0, v11}, Lcom/android/systemui/stackdivider/DividerView;->performHapticFeedback(I)Z

    .line 1902
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DOOF"

    .line 1903
    const-string/jumbo v4, "RecentsLong"

    .line 1902
    invoke-static {v1, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1888
    .end local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .restart local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 9
    .param p1, "drawnEvent"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .prologue
    const/4 v8, 0x0

    .line 1850
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    if-eqz v0, :cond_0

    .line 1851
    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    .line 1852
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1856
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1863
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1864
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v3, v0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1865
    const-wide/16 v6, 0xc8

    move-object v0, p0

    .line 1863
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    .line 1867
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    .line 1868
    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    .line 1869
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1870
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1871
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    .line 1872
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1871
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 1849
    :cond_1
    return-void

    .line 1857
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;)V
    .locals 9
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2018
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 2019
    .local v0, "landscape":Z
    :goto_0
    iget v4, p1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 2013
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 2018
    .end local v0    # "landscape":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 2021
    :pswitch_1
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_0

    .line 2022
    if-nez v0, :cond_0

    .line 2023
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v3

    .line 2024
    .local v3, "topleft":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2026
    if-nez v3, :cond_2

    .line 2027
    const/4 v2, 0x1

    .line 2029
    .local v2, "snapViewTarget":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v6, 0x4

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2030
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 2031
    .local v1, "rect":Landroid/graphics/Rect;
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v4, :cond_4

    .line 2032
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    .line 2033
    invoke-virtual {p0, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    goto :goto_1

    .line 2028
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "snapViewTarget":I
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "snapViewTarget":I
    goto :goto_2

    .line 2030
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .restart local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_3

    .line 2034
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_5

    .line 2035
    invoke-virtual {p0, v8, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto :goto_1

    .line 2037
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    goto :goto_1

    .line 2044
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "snapViewTarget":I
    .end local v3    # "topleft":I
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_6

    .line 2045
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    .line 2047
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    .line 2048
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    .line 2052
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_7

    .line 2053
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    .line 2055
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    .line 2056
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    .line 2060
    :pswitch_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_8

    .line 2061
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    .line 2063
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    .line 2064
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    .line 2019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    .prologue
    .line 2071
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 2070
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    .prologue
    .line 2075
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2076
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 2077
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2082
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    .line 2074
    :cond_0
    return-void

    .line 2080
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 1799
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1800
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    .line 1801
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    .line 1800
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1802
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1803
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 1802
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 1798
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 1411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1414
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 1415
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 1416
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    if-eqz v0, :cond_0

    .line 1417
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getLastDimLayerTargetStack()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1421
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1427
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 1410
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 465
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 467
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 463
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 360
    const v1, 0x7f13012a

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 361
    const v1, 0x7f130127

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 362
    const v1, 0x7f130128

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 365
    const v2, 0x1050021

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    sget v2, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    .line 366
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    .line 372
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    const v2, 0x7f0d02e0

    .line 373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    const v2, 0x7f0c0043

    .line 375
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    .line 378
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    .line 379
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 383
    .local v0, "landscape":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 384
    if-eqz v0, :cond_1

    const/16 v1, 0x3f6

    .line 383
    :goto_1
    invoke-static {v3, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    .line 394
    const v1, 0x7f130129

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 395
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->initialize(Landroid/view/View;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->setBackgroundFraction()V

    .line 358
    return-void

    .line 381
    .end local v0    # "landscape":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 384
    :cond_1
    const/16 v1, 0x3f7

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 490
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, "minimizeLeft":I
    const/4 v2, 0x0

    .line 494
    .local v2, "minimizeTop":I
    const/4 v0, 0x0

    .line 496
    .local v0, "hasCustomDimen":Z
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    .line 499
    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 500
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 509
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 510
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 511
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int v5, v1, v3

    .line 512
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    .line 510
    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    .line 521
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->updateLayout()V

    .line 529
    if-eqz p1, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v6

    .line 531
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v8

    .line 530
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 489
    :cond_1
    return-void

    .line 496
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 501
    :cond_3
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 502
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    .line 503
    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 504
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-eqz v0, :cond_5

    .line 505
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    .line 504
    :goto_4
    sub-int v1, v4, v3

    goto :goto_1

    .line 505
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    goto :goto_4

    .line 513
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    .line 515
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 516
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_5
    add-int/2addr v3, v1

    .line 518
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 515
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    goto :goto_3

    .line 517
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    goto :goto_5
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->onMultiWindowAppTransitionFinished()V

    .line 2256
    return-void
.end method

.method onMultiWindowFocusedStackChanged(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setFocusedStack(I)V

    .line 2216
    return-void
.end method

.method onMultiWindowSettingChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2222
    if-nez p1, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    .line 2224
    .local v0, "focusedStackId":I
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/stackdivider/DividerView$8;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 2220
    .end local v0    # "focusedStackId":I
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 660
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v13, :cond_0

    .line 661
    const/4 v13, 0x1

    return v13

    .line 664
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    .line 667
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 842
    :cond_1
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 669
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 673
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v8

    .line 674
    .local v8, "result":Z
    if-nez v8, :cond_2

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    .line 679
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 682
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    .line 685
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 685
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    .line 694
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 695
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 696
    return v8

    .line 688
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    .line 689
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    .line 690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 689
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    goto :goto_1

    .line 698
    .end local v8    # "result":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 700
    .local v11, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 702
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v13, v14, :cond_7

    const/4 v4, 0x1

    .line 704
    .local v4, "exceededTouchSlop":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v13, :cond_4

    if-eqz v4, :cond_4

    .line 705
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 706
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 707
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 709
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/16 v14, 0x32

    if-le v13, v14, :cond_5

    .line 710
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 712
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    .line 714
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v13, :cond_b

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v13, :cond_b

    .line 715
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 716
    .local v6, "mStartPosition":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    if-eqz v13, :cond_6

    .line 717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v6, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 719
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v13, :cond_9

    .line 720
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 703
    .end local v4    # "exceededTouchSlop":Z
    .end local v6    # "mStartPosition":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v13, v14, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "exceededTouchSlop":Z
    goto :goto_2

    .end local v4    # "exceededTouchSlop":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "exceededTouchSlop":Z
    goto :goto_2

    .line 721
    .restart local v6    # "mStartPosition":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v13, :cond_a

    .line 722
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-eqz v13, :cond_1

    .line 723
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(Z)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 724
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    .line 727
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-eqz v13, :cond_1

    .line 728
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 729
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 728
    invoke-virtual {v13, v6, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 730
    .local v9, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    .line 736
    .end local v6    # "mStartPosition":I
    .end local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v13, :cond_c

    .line 765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 766
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 765
    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 767
    .restart local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    .line 737
    .end local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v7

    .line 738
    .local v7, "position":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v13, :cond_13

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 740
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v7, v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_f

    .line 741
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    .line 762
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideViewDimLayer(I)V

    goto/16 :goto_0

    .line 743
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    .line 746
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v7, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_12

    .line 747
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    goto :goto_3

    .line 749
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    .line 753
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-le v7, v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-ge v7, v13, :cond_e

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 755
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    .line 759
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto :goto_3

    .line 757
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_4

    .line 773
    .end local v4    # "exceededTouchSlop":Z
    .end local v7    # "position":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    float-to-int v11, v13

    .line 776
    .restart local v11    # "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v12, v13

    .line 778
    .restart local v12    # "y":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 779
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v7

    .line 783
    .restart local v7    # "position":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v13, :cond_1c

    .line 784
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 786
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 785
    invoke-virtual {v13, v7, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 787
    .restart local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const v13, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v7, v13, :cond_15

    .line 790
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v7, v13, :cond_18

    .line 791
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v13, v14, :cond_16

    .line 792
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v13, v14, :cond_17

    const/4 v5, 0x1

    .line 793
    .local v5, "fling":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 794
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v11, v7}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_19

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 833
    .end local v5    # "fling":Z
    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 834
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 836
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v13, :cond_1

    .line 837
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    .line 791
    :cond_16
    const/4 v5, 0x1

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 792
    .end local v5    # "fling":Z
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 789
    .end local v5    # "fling":Z
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 794
    :cond_19
    const/4 v13, 0x1

    goto :goto_6

    .line 796
    :cond_1a
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v7, v12}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_1b

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_7

    :cond_1b
    const/4 v13, 0x1

    goto :goto_8

    .line 799
    .end local v5    # "fling":Z
    .end local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 800
    .restart local v9    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v7, v13, :cond_1e

    .line 801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 806
    :cond_1d
    :goto_9
    iget v10, v9, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 807
    .local v10, "snapTargetPosition":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 808
    .local v3, "dismissPosition":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 809
    invoke-virtual {v3, v11, v10}, Landroid/graphics/Point;->set(II)V

    .line 814
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 815
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/systemui/stackdivider/DividerView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v3}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v16

    .line 815
    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    :goto_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto/16 :goto_7

    .line 802
    .end local v3    # "dismissPosition":Landroid/graphics/Point;
    .end local v10    # "snapTargetPosition":I
    :cond_1e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_1d

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    goto :goto_9

    .line 811
    .restart local v3    # "dismissPosition":Landroid/graphics/Point;
    .restart local v10    # "snapTargetPosition":I
    :cond_1f
    invoke-virtual {v3, v10, v12}, Landroid/graphics/Point;->set(II)V

    goto :goto_a

    .line 822
    :cond_20
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 823
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_b

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAutoResizingState(Z)V
    .locals 3
    .param p1, "fullReset"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1955
    if-eqz p1, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1960
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 1961
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 1962
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 1953
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 24
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v3, :cond_0

    .line 1510
    return-void

    .line 1513
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_3

    .line 1520
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1524
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_6

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 1527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1532
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 1533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1532
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1535
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1534
    const/4 v6, 0x0

    .line 1535
    const/4 v8, 0x0

    .line 1534
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1613
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    if-eqz v3, :cond_11

    .line 1614
    return-void

    .line 1516
    :cond_3
    return-void

    .line 1529
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 1530
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1529
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_2

    .line 1536
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    .line 1538
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1537
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1539
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 1540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1539
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1544
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 1543
    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1547
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 1546
    if-eqz v3, :cond_b

    .line 1547
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_b

    .line 1548
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1550
    .local v11, "dockSideInverted":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 1549
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1551
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    const/16 v23, 0x1

    .line 1552
    .local v23, "topFull":Z
    :goto_3
    if-eqz v23, :cond_9

    .line 1553
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1554
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1560
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1562
    if-eqz v23, :cond_a

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1567
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 1568
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 1567
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1551
    .end local v23    # "topFull":Z
    :cond_8
    const/16 v23, 0x0

    goto :goto_3

    .line 1556
    .restart local v23    # "topFull":Z
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1565
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    goto :goto_5

    .line 1570
    .end local v11    # "dockSideInverted":I
    .end local v23    # "topFull":Z
    :cond_b
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 1571
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 1570
    if-eqz v3, :cond_10

    .line 1572
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 1573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 1572
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1576
    .restart local v11    # "dockSideInverted":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    .line 1578
    .local v8, "taskPositionDocked":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    .line 1579
    .local v14, "taskPositionOther":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1583
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    if-eqz v3, :cond_e

    .line 1589
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1601
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 1605
    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1584
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 1598
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 1608
    .end local v8    # "taskPositionDocked":I
    .end local v11    # "dockSideInverted":I
    .end local v14    # "taskPositionOther":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1619
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    .line 1620
    .local v21, "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    .line 1621
    .local v22, "dimFraction":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 1622
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 1621
    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1627
    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_13

    .line 1628
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 1507
    :goto_9
    return-void

    .line 1621
    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    .line 1630
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    goto :goto_9
.end method

.method public setAdjustedForIme(Z)V
    .locals 3
    .param p1, "adjustedForIme"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1340
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1341
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 1342
    if-nez p1, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 1351
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    .line 1352
    if-nez p1, :cond_3

    .line 1353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 1362
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 1339
    return-void

    .line 1341
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1344
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 1356
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_2
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1366
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1368
    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1367
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1370
    if-eqz p1, :cond_3

    move v0, v1

    .line 1367
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1372
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1375
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1374
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1377
    :cond_1
    if-nez p1, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1381
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1380
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    .line 1388
    if-nez p1, :cond_4

    .line 1389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 1398
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 1365
    return-void

    :cond_3
    move v0, v2

    .line 1370
    goto :goto_0

    .line 1392
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_1
.end method

.method public setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V
    .locals 3
    .param p1, "focusedStackSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "focusedStackId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1912
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1913
    return-void

    .line 1916
    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 1925
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 1910
    :cond_3
    return-void

    .line 1919
    :cond_4
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDividerFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "val"    # Z

    .prologue
    .line 1998
    if-eqz p2, :cond_0

    .line 1999
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    .line 1997
    :goto_0
    return-void

    .line 2001
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    goto :goto_0
.end method

.method public setMinimizedDockStack(Z)V
    .locals 6
    .param p1, "minimized"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1241
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1249
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 1250
    if-nez p1, :cond_3

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 1262
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    .line 1267
    if-eqz p1, :cond_1

    .line 1269
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1271
    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 1276
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 1240
    return-void

    :cond_2
    move v0, v2

    .line 1249
    goto :goto_0

    .line 1252
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 1255
    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_5

    .line 1256
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1257
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_6

    move v0, v3

    :goto_3
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 1259
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    move v2, v1

    .line 1262
    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJ)V
    .locals 6
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1282
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1281
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1284
    if-eqz p1, :cond_3

    move v0, v1

    .line 1281
    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1286
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1289
    if-eqz p1, :cond_4

    move v0, v1

    .line 1288
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1298
    :cond_0
    :goto_2
    if-nez p1, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1302
    if-eqz p1, :cond_9

    .line 1301
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1303
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1307
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(ZJ)V

    .line 1314
    if-eqz p1, :cond_2

    .line 1316
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1318
    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 1323
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 1279
    return-void

    :cond_3
    move v0, v2

    .line 1284
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1289
    goto :goto_1

    .line 1290
    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_6

    .line 1291
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1292
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_7

    move v0, v3

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1296
    if-eqz p1, :cond_8

    move v0, v1

    .line 1295
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 1294
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    .line 1296
    goto :goto_5

    :cond_9
    move v2, v1

    .line 1302
    goto :goto_3
.end method

.method public setOriginalTaskBounds(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1931
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerWindowManager;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerWindowManager;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 535
    return-void
.end method

.method public showSnapGuide(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "snapTarget"    # I
    .param p3, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2087
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2086
    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "touching"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 552
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 553
    if-eqz p2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 562
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 564
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startDividerDragging()V

    .line 568
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 569
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public startSnapMode(Z)V
    .locals 2
    .param p1, "isStart"    # Z

    .prologue
    .line 2091
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2090
    return-void
.end method

.method public stopDragging(IFZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->stopDividerDragging()V

    .line 584
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 585
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    .line 592
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 573
    return-void

    .line 590
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    goto :goto_0
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    .line 613
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 614
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 616
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 612
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 603
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 602
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endDelay"    # J

    .prologue
    .line 608
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 607
    return-void
.end method

.method public swapTask()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2139
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2140
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2141
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2142
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    .line 2145
    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    .line 2146
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2147
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2149
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    .line 2154
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SPAC"

    .line 2155
    const-string/jumbo v3, "Switch"

    .line 2154
    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
