.class Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungAccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;,
        Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0xc8L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x1f4L

.field private static final DEBUG:Z = false

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAccessibilityGestureDetector"

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final MSG_MULTI_FINGER_HOLD:I = 0x1

.field private static final MSG_MULTI_FINGER_STOP:I = 0x2

.field private static final MSG_MULTI_FINGER_TAP:I = 0x0

.field private static final MULTI_FINGER_DETECTION_TIMEOUT:J = 0x7d0L

.field private static final MULTI_FINGER_LONG_PRESS_TIMEOUT:J

.field private static final MULTI_FINGER_MAX:I = 0x3

.field private static final MULTI_FINGER_RECOGNIZE_TIMEOUT:J = 0x64L

.field private static final MULTI_FINGER_TAP_TIMEOUT:J = 0xc8L

.field private static final MULTI_FINGER_TAP_TIMEOUT_OFFSET:J = 0x1eL

.field private static final STATE_DONE:I = 0x1

.field private static final STATE_READY:I = 0x0

.field private static final STATE_THREE_FINGER_DETECTION:I = 0x3

.field private static final STATE_TWO_FINGER_DETECTION:I = 0x2

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field public TOUCH_SLOP:I

.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private mDoubleTapDetected:Z

.field private mFingerNumberByPointerId:[I

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private mGestureStarted:Z

.field private mLastNumberOfFingers:I

.field private final mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

.field private mMultiFingerDetectionState:I

.field private mMultiFingerDownTime:[J

.field private mMultiFingerDownX:[F

.field private mMultiFingerDownY:[F

.field private mMultiFingerGestureState:Z

.field private final mMultiFingerHandler:Landroid/os/Handler;

.field private final mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFingerTapTimes:I

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mPrimaryPointerId:I

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTwoFingerGestureEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->MULTI_FINGER_LONG_PRESS_TIMEOUT:J

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 504
    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    .line 506
    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    .line 508
    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    .line 510
    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    .line 512
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    .line 514
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    .line 516
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    .line 520
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    .line 521
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    .line 522
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    .line 523
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    .line 529
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    .line 201
    const-string/jumbo v0, "SamsungAccessibilityGestureDetector"

    const-string/jumbo v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    .line 204
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 207
    const v0, 0x1100002

    invoke-static {p1, v0}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 209
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->load()Z

    .line 212
    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 212
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 213
    const/high16 v1, 0x41200000    # 10.0f

    .line 212
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetectionThreshold:F

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->initMultiFingerDetection(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method private addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V
    .locals 2
    .param p1, "pointerId"    # I
    .param p2, "point"    # Landroid/gesture/GesturePoint;

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    aget v0, v1, p1

    .line 600
    .local v0, "pointerIndex":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 601
    :cond_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method private cancelGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 432
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    return-void
.end method

.method private clearMultiFingerDetection()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection(I)V

    .line 585
    return-void
.end method

.method private clearMultiFingerDetection(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 566
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    if-eqz v0, :cond_0

    .line 567
    const-string/jumbo v0, "SamsungAccessibilityGestureDetector"

    const-string/jumbo v1, "GestureCancelled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    .line 569
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, v3, v4}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerStopped(I)V

    .line 572
    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    .line 573
    iput v4, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    .line 574
    iput v4, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    .line 575
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 577
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 578
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 579
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 580
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    .line 427
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private initMultiFingerDetection(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/16 v3, 0x64

    .line 553
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 554
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 557
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 558
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 559
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 560
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 562
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    .line 552
    return-void
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 462
    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-eqz v0, :cond_0

    .line 463
    return-object v5

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 472
    :cond_1
    return-object v5

    .line 475
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 477
    .local v4, "action":I
    if-ne v4, v2, :cond_4

    .line 478
    const/4 v4, 0x0

    .line 484
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 485
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    .line 484
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 479
    :cond_4
    if-ne v4, v3, :cond_3

    .line 480
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    .line 414
    return-void
.end method

.method private onMotionEventForMultiFinger(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 606
    const-wide/16 v8, -0x1

    .line 607
    .local v8, "deltaTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    .line 608
    .local v18, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 609
    .local v6, "actionIndex":I
    const/16 v19, -0x1

    .line 610
    .local v19, "pointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 744
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 745
    const/16 v20, 0x1

    return v20

    .line 612
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 615
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 616
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    aput v21, v20, v19

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    aput v21, v20, v19

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    aput-wide v22, v20, v19

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v19

    .line 621
    new-instance v20, Landroid/gesture/GesturePoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    move-object/from16 v21, v0

    aget v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    move-object/from16 v22, v0

    aget v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v19

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    goto/16 :goto_0

    .line 624
    :pswitch_2
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 625
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 626
    const/16 v20, 0x0

    return v20

    .line 628
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    move/from16 v23, v0

    aget-wide v22, v22, v23

    sub-long v8, v20, v22

    .line 630
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    mul-long v20, v20, v22

    cmp-long v20, v8, v20

    if-gez v20, :cond_4

    .line 631
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    aput v21, v20, v19

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    aput v21, v20, v19

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    aput-wide v22, v20, v19

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, -0x1

    aput v21, v20, v19

    .line 636
    new-instance v20, Landroid/gesture/GesturePoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    move-object/from16 v21, v0

    aget v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    move-object/from16 v22, v0

    aget v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v19

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 638
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerStarted(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const-wide/16 v22, 0x7d0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 651
    :goto_1
    const/16 v20, 0x0

    return v20

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    sget-wide v22, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->MULTI_FINGER_LONG_PRESS_TIMEOUT:J

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 649
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    goto :goto_1

    .line 653
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 654
    const/16 v20, 0x0

    return v20

    .line 656
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 657
    const/16 v20, 0x1

    return v20

    .line 660
    :cond_6
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_2
    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 662
    new-instance v20, Landroid/gesture/GesturePoint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    .line 660
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 665
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 701
    :cond_8
    :goto_3
    const/16 v20, 0x1

    return v20

    .line 667
    :cond_9
    const-wide/16 v14, 0xc8

    .line 668
    .local v14, "minDeltaTime":J
    const/4 v12, 0x0

    .line 669
    .local v12, "isMoving":Z
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v13, v0, :cond_a

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 671
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    move-object/from16 v21, v0

    aget v21, v21, v19

    sub-float v7, v20, v21

    .line 672
    .local v7, "deltaX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    move-object/from16 v21, v0

    aget v21, v21, v19

    sub-float v10, v20, v21

    .line 674
    .local v10, "deltaY":F
    float-to-double v0, v7

    move-wide/from16 v20, v0

    float-to-double v0, v10

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    .line 675
    .local v16, "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v20, v16, v20

    if-lez v20, :cond_c

    .line 676
    const/4 v12, 0x1

    .line 685
    .end local v7    # "deltaX":F
    .end local v10    # "deltaY":F
    .end local v16    # "moveDelta":D
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 692
    :cond_b
    if-eqz v12, :cond_8

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureStarted()Z

    goto/16 :goto_3

    .line 679
    .restart local v7    # "deltaX":F
    .restart local v10    # "deltaY":F
    .restart local v16    # "moveDelta":D
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v19

    sub-long v8, v20, v22

    .line 680
    cmp-long v20, v14, v8

    if-lez v20, :cond_d

    .line 681
    move-wide v14, v8

    .line 669
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 686
    .end local v7    # "deltaX":F
    .end local v10    # "deltaY":F
    .end local v16    # "moveDelta":D
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 687
    if-nez v12, :cond_f

    const-wide/16 v20, 0x64

    cmp-long v20, v14, v20

    if-lez v20, :cond_10

    .line 688
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 690
    :cond_10
    const/16 v20, 0x0

    return v20

    .line 703
    .end local v12    # "isMoving":Z
    .end local v13    # "p":I
    .end local v14    # "minDeltaTime":J
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_12

    .line 704
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 705
    new-instance v20, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    .line 707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeMultiFingerGesture()I

    move-result v11

    .line 709
    .local v11, "gestureId":I
    if-lez v11, :cond_12

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 712
    const/16 v20, 0x1

    return v20

    .line 715
    .end local v11    # "gestureId":I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    move/from16 v23, v0

    aget-wide v22, v22, v23

    sub-long v8, v20, v22

    .line 716
    const-wide/16 v20, 0xc8

    cmp-long v20, v8, v20

    if-gez v20, :cond_12

    .line 717
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    .line 720
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1e

    mul-long v22, v22, v24

    const-wide/16 v24, 0xc8

    add-long v22, v22, v24

    .line 719
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    const/16 v20, 0x1

    return v20

    .line 726
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    goto/16 :goto_0

    .line 729
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 730
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 731
    new-instance v20, Landroid/gesture/GesturePoint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 738
    :cond_13
    const/16 v20, 0x0

    return v20

    .line 740
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 741
    const/16 v20, 0x0

    return v20

    .line 748
    :cond_14
    const/16 v20, 0x0

    return v20

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private recognizeGesture(Landroid/gesture/Gesture;)I
    .locals 8
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 800
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v3, p1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 801
    .local v2, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 802
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 803
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v4, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 809
    :try_start_0
    iget-object v3, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SamsungAccessibilityGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non numeric gesture id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 437
    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    .line 438
    .local v1, "gesture":Landroid/gesture/Gesture;
    new-instance v5, Landroid/gesture/GestureStroke;

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 440
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, v1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v4

    .line 441
    .local v4, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 442
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 443
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_0

    .line 449
    :try_start_0
    iget-object v5, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 450
    .local v2, "gestureId":I
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v5, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 451
    .end local v2    # "gestureId":I
    :catch_0
    move-exception v3

    .line 452
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "SamsungAccessibilityGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non numeric gesture id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v5, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v5

    return v5
.end method

.method private recognizeMultiFingerGesture()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 752
    iget v6, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-ne v6, v10, :cond_1

    .line 753
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 754
    .local v0, "finger0":Landroid/gesture/Gesture;
    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    .line 755
    .local v1, "finger1":Landroid/gesture/Gesture;
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 756
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/gesture/Gesture;)I

    move-result v3

    .line 758
    .local v3, "gestureId0":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/gesture/Gesture;)I

    move-result v4

    .line 759
    .local v4, "gestureId1":I
    const-string/jumbo v6, "SamsungAccessibilityGestureDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recognizeMultiFingerGesture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-ne v3, v4, :cond_0

    .line 761
    packed-switch v3, :pswitch_data_0

    .line 796
    .end local v0    # "finger0":Landroid/gesture/Gesture;
    .end local v1    # "finger1":Landroid/gesture/Gesture;
    .end local v3    # "gestureId0":I
    .end local v4    # "gestureId1":I
    :cond_0
    :goto_0
    const/4 v6, -0x1

    return v6

    .line 763
    .restart local v0    # "finger0":Landroid/gesture/Gesture;
    .restart local v1    # "finger1":Landroid/gesture/Gesture;
    .restart local v3    # "gestureId0":I
    .restart local v4    # "gestureId1":I
    :pswitch_0
    const/16 v6, 0x11

    return v6

    .line 765
    :pswitch_1
    const/16 v6, 0x12

    return v6

    .line 767
    :pswitch_2
    const/16 v6, 0x13

    return v6

    .line 769
    :pswitch_3
    const/16 v6, 0x14

    return v6

    .line 772
    .end local v0    # "finger0":Landroid/gesture/Gesture;
    .end local v1    # "finger1":Landroid/gesture/Gesture;
    .end local v3    # "gestureId0":I
    .end local v4    # "gestureId1":I
    :cond_1
    iget v6, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 773
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 774
    .restart local v0    # "finger0":Landroid/gesture/Gesture;
    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    .line 775
    .restart local v1    # "finger1":Landroid/gesture/Gesture;
    new-instance v2, Landroid/gesture/Gesture;

    invoke-direct {v2}, Landroid/gesture/Gesture;-><init>()V

    .line 776
    .local v2, "finger2":Landroid/gesture/Gesture;
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 777
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 778
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v7, v7, v10

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 779
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/gesture/Gesture;)I

    move-result v3

    .line 780
    .restart local v3    # "gestureId0":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/gesture/Gesture;)I

    move-result v4

    .line 781
    .restart local v4    # "gestureId1":I
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/gesture/Gesture;)I

    move-result v5

    .line 782
    .local v5, "gestureId2":I
    const-string/jumbo v6, "SamsungAccessibilityGestureDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recognizeMultiFingerGesture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-ne v3, v4, :cond_0

    if-ne v3, v5, :cond_0

    .line 784
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 786
    :pswitch_4
    const/16 v6, 0x19

    return v6

    .line 788
    :pswitch_5
    const/16 v6, 0x1a

    return v6

    .line 790
    :pswitch_6
    const/16 v6, 0x1b

    return v6

    .line 792
    :pswitch_7
    const/16 v6, 0x1c

    return v6

    .line 761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 784
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 379
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 380
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 381
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    .line 382
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    .line 377
    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    .line 390
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->onMotionEventForMultiFinger(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 236
    const/16 v20, 0x1

    return v20

    .line 240
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 241
    .local v18, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 242
    .local v19, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 244
    .local v14, "time":J
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPolicyFlags:I

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 359
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 361
    .local v9, "newEvent":Landroid/view/MotionEvent;
    if-nez v9, :cond_9

    .line 362
    const/16 v20, 0x0

    return v20

    .line 247
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :pswitch_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 248
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 249
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 250
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    .line 251
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    .line 252
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    .line 257
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    .line 258
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    goto :goto_0

    .line 262
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    move/from16 v20, v0

    sub-float v6, v20, v18

    .line 264
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    move/from16 v20, v0

    sub-float v7, v20, v19

    .line 265
    .local v7, "deltaY":F
    float-to-double v0, v6

    move-wide/from16 v20, v0

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 266
    .local v10, "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetectionThreshold:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v20, v10, v20

    if-lez v20, :cond_2

    .line 269
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    .line 270
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    .line 271
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    .line 275
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 276
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 280
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 281
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v20

    return v20

    .line 284
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    move-wide/from16 v20, v0

    sub-long v16, v14, v20

    .line 288
    .local v16, "timeDelta":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 289
    const-wide/16 v12, 0x1f4

    .line 294
    .local v12, "threshold":J
    :goto_1
    cmp-long v20, v16, v12

    if-lez v20, :cond_4

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 290
    .end local v12    # "threshold":J
    :cond_3
    const-wide/16 v12, 0xc8

    goto :goto_1

    .line 300
    .end local v16    # "timeDelta":J
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 301
    .local v4, "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 302
    .local v5, "dY":F
    const/high16 v20, 0x40400000    # 3.0f

    cmpl-float v20, v4, v20

    if-gez v20, :cond_5

    const/high16 v20, 0x40400000    # 3.0f

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_1

    .line 303
    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    .line 304
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 311
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v10    # "moveDelta":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 312
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 314
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 324
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 328
    const/16 v20, 0x0

    return v20

    .line 332
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 335
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 336
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_0

    .line 340
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    goto/16 :goto_0

    .line 347
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 348
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 353
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    goto/16 :goto_0

    .line 364
    .restart local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 365
    .local v8, "handled":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 366
    return v8

    .line 369
    .end local v8    # "handled":Z
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 370
    const/16 v20, 0x0

    return v20

    .line 374
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    return v20

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public resetMultiFingerGestureState()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    .line 591
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    .line 589
    return-void
.end method

.method public setTwoFingerEnabled(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    .line 595
    return-void
.end method
