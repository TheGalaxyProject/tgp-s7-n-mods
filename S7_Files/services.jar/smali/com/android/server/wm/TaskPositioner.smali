.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDimLayerBounds:Landroid/graphics/Rect;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mFreeformFrameThickness:I

.field private mFreeformResizing:Z

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private mHasInputMethodTarget:Z

.field private mHaveToSaveOriginalBounds:Z

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mMinWidth:I

.field private mNotUseDimLayer:Z

.field private mResizing:Z

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field private mSavedGuideDimBounds:Landroid/graphics/Rect;

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mTask:Lcom/android/server/wm/Task;

.field private mTaskBehindFreeform:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wm/TaskPositioner;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/wm/TaskPositioner;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/wm/TaskPositioner;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformFrameThickness:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mHaveToSaveOriginalBounds:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wm/TaskPositioner;Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mHaveToSaveOriginalBounds:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mHaveToSaveOriginalBounds:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    .line 152
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformFrameThickness:I

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    .line 156
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 168
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 169
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 472
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .line 471
    return-void
.end method

.method private endDragLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 739
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 738
    return-void
.end method

.method private getDimSide(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 940
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;->getDimSide(II)I

    move-result v0

    return v0
.end method

.method private getDimSide(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v2, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_3

    .line 948
    :cond_0
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    .line 950
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v2, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    .line 948
    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 953
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_1

    .line 954
    const/4 v0, 0x4

    return v0

    .line 956
    :cond_1
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_2

    .line 957
    const/16 v0, 0x8

    return v0

    .line 961
    :cond_2
    return v3

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 972
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_4

    .line 973
    return v4

    .line 975
    :cond_4
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_5

    .line 976
    return v2

    .line 979
    :cond_5
    return v3
.end method

.method private notifyMoveLocked(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x0

    .line 745
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v9, :cond_0

    .line 746
    sget-object v9, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyMoveLocked: {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v9, :cond_6

    .line 751
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 752
    .local v1, "deltaX":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v9, p2, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 753
    .local v2, "deltaY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 754
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 755
    .local v8, "top":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 756
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 757
    .local v0, "bottom":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 758
    add-int v9, v4, v1

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 760
    :cond_1
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_2

    .line 761
    add-int v9, v8, v2

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v10, v0, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 763
    :cond_2
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    .line 764
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v9, v4

    add-int v10, v7, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 766
    :cond_3
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 767
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int/2addr v9, v8

    add-int v10, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 769
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v8, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 772
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    if-eqz v9, :cond_5

    .line 778
    :goto_0
    return v12

    .line 776
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v12}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    goto :goto_0

    .line 782
    .end local v0    # "bottom":I
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v9, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 787
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_a

    .line 788
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 798
    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 799
    .local v3, "dragEnded":Z
    float-to-int v5, p1

    .line 800
    .local v5, "nX":I
    float-to-int v6, p2

    .line 801
    .local v6, "nY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_8

    .line 805
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 806
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-static {p2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 807
    const/4 v3, 0x1

    .line 810
    :cond_8
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(II)V

    .line 812
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_b

    .line 813
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(II)V

    .line 818
    :goto_2
    return v3

    .line 789
    .end local v3    # "dragEnded":Z
    .end local v5    # "nX":I
    .end local v6    # "nY":I
    :cond_9
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_1

    .line 793
    :cond_a
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v9

    if-nez v9, :cond_7

    .line 794
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_1

    .line 816
    .restart local v3    # "dragEnded":Z
    .restart local v5    # "nX":I
    .restart local v6    # "nY":I
    :cond_b
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(I)V

    goto :goto_2
.end method

.method private showDimLayer()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x2

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 984
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 985
    .local v3, "outBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    .line 986
    .local v0, "dockSide":I
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_5

    .line 987
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 989
    const-wide/16 v8, 0x2bc

    .line 987
    invoke-virtual {v6, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 990
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 991
    .local v4, "skipDimLayer":Z
    :goto_0
    const/4 v2, 0x0

    .line 999
    .local v2, "isFullscreenDim":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1000
    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    .line 1001
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1002
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1013
    :cond_0
    :goto_1
    if-eqz v4, :cond_3

    .line 1014
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 1015
    return-void

    .line 990
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "isFullscreenDim":Z
    .end local v4    # "skipDimLayer":Z
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "skipDimLayer":Z
    goto :goto_0

    .line 1005
    .restart local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .restart local v2    # "isFullscreenDim":Z
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v6, v10}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1006
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1007
    const/4 v2, 0x1

    goto :goto_1

    .line 1016
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_3
    if-eqz v2, :cond_5

    .line 1017
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1018
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1019
    iget-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    if-eqz v6, :cond_4

    .line 1020
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1026
    :goto_2
    return-void

    .line 1022
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1023
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v7

    .line 1024
    const-wide/16 v8, 0x0

    .line 1023
    invoke-virtual {v6, v7, v13, v8, v9}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_2

    .line 1031
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "isFullscreenDim":Z
    .end local v4    # "skipDimLayer":Z
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1032
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v10, :cond_b

    .line 1033
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1035
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_7

    .line 1036
    if-ne v0, v10, :cond_6

    .line 1037
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1039
    :cond_6
    if-ne v0, v14, :cond_7

    .line 1040
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1058
    :cond_7
    :goto_3
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_a

    .line 1059
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v11, :cond_d

    .line 1060
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1061
    if-ne v0, v12, :cond_8

    .line 1062
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1064
    :cond_8
    if-ne v0, v11, :cond_9

    .line 1065
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1078
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1082
    :cond_a
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_f

    .line 1083
    iget-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    .line 1082
    if-eqz v6, :cond_f

    .line 1084
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 982
    :goto_5
    return-void

    .line 1044
    :cond_b
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v12, :cond_7

    .line 1045
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1047
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_7

    .line 1048
    if-ne v0, v14, :cond_c

    .line 1049
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1051
    :cond_c
    if-ne v0, v10, :cond_7

    .line 1052
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 1067
    :cond_d
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_9

    .line 1068
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1069
    if-ne v0, v11, :cond_e

    .line 1070
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1072
    :cond_e
    if-ne v0, v12, :cond_9

    .line 1073
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 1087
    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1088
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v7

    .line 1089
    const-wide/16 v8, 0x0

    .line 1088
    invoke-virtual {v6, v7, v13, v8, v9}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_5
.end method

.method private updateDimLayerVisibility(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(II)V

    .line 875
    return-void
.end method

.method private updateDimLayerVisibility(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x4

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "dimSide":I
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 886
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->getDimSide(II)I

    move-result v0

    .line 891
    :goto_0
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v0, v1, :cond_1

    .line 892
    return-void

    .line 888
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->getDimSide(I)I

    move-result v0

    goto :goto_0

    .line 896
    :cond_1
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_3

    .line 897
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskBehindFreeform:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskBehindFreeform:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 910
    :cond_3
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 912
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ">>> OPEN TRANSACTION updateDimLayerVisibility"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_4
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 914
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-nez v1, :cond_9

    .line 916
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_8

    .line 917
    iget-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    .line 916
    if-eqz v1, :cond_8

    .line 918
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 919
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 928
    :cond_5
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 879
    return-void

    .line 904
    :cond_6
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateDimLayerVisibility, the task behind freeform stack is a home task."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_7
    return-void

    .line 923
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    goto :goto_1

    .line 926
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    goto :goto_1
.end method

.method private updateWindowDragBounds(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    .line 822
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 827
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 871
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWindowDragBounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 871
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    return-void

    .line 829
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v4, p2

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 833
    :cond_3
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_8

    .line 834
    iget-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    .line 833
    if-eqz v3, :cond_8

    .line 835
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 836
    .local v1, "contentRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 837
    int-to-float v3, p2

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 838
    .local v2, "movedY":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_4

    .line 839
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_6

    .line 840
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 841
    .local v0, "bottomDiff":I
    if-gez v2, :cond_5

    sub-int/2addr v2, v0

    .line 848
    .end local v0    # "bottomDiff":I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 855
    .end local v1    # "contentRect":Landroid/graphics/Rect;
    .end local v2    # "movedY":I
    :goto_2
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 856
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 859
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_0

    .line 860
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    .line 841
    .restart local v0    # "bottomDiff":I
    .restart local v1    # "contentRect":Landroid/graphics/Rect;
    .restart local v2    # "movedY":I
    :cond_5
    neg-int v2, v0

    goto :goto_1

    .line 842
    .end local v0    # "bottomDiff":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_7

    .line 843
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    goto :goto_1

    .line 845
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 851
    .end local v1    # "contentRect":Landroid/graphics/Rect;
    .end local v2    # "movedY":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, p2

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 864
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getStatusBarHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 865
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getStatusBarHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1129
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method hideDimLayer()V
    .locals 2

    .prologue
    .line 1096
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1097
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 1108
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 1120
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x1

    return v0
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x12a05f200L

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 484
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v3, :cond_0

    .line 485
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Registering task positioner"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_1

    .line 489
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Task positioner already registered"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 493
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 494
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 495
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 496
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v3, v0, v7

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 497
    aget-object v3, v0, v8

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 498
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v3, v4, v9}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 500
    new-instance v3, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 501
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    .line 500
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 503
    new-instance v3, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v3, v9}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 504
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-object v4, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 505
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v3, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 508
    new-instance v3, Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 509
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 508
    invoke-direct {v3, v4, v9, v5}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 510
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    sget-object v4, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 511
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v4, v3, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 512
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 513
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v7, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 514
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v4, 0x7e0

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 515
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v3, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 517
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v3, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 518
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v3, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 519
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v3, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 520
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v3, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v3, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 522
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 523
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 524
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v7, v3, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 525
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 528
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 531
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v7, v3, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 532
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v7, v3, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 533
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 534
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 535
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 536
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Point;->y:I

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 539
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2

    .line 540
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Pausing rotation during re-position"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 544
    new-instance v3, Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const-string/jumbo v6, "TaskPositioner"

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 546
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_4

    .line 547
    const/16 v2, 0x1e

    .line 548
    .local v2, "side_margin_dip":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v4, 0x1e

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 553
    .end local v2    # "side_margin_dip":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v4, 0x30

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 554
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v4, 0x20

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 556
    iput-boolean v7, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 560
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v3, :cond_3

    .line 561
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 562
    iput-boolean v8, p0, Lcom/android/server/wm/TaskPositioner;->mHaveToSaveOriginalBounds:Z

    .line 564
    :cond_3
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    .line 566
    iput-boolean v8, p0, Lcom/android/server/wm/TaskPositioner;->mNotUseDimLayer:Z

    .line 483
    return-void

    .line 551
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v4, 0x64

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    goto :goto_0
.end method

.method startDragLocked(Lcom/android/server/wm/WindowState;ZFF)V
    .locals 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .prologue
    .line 645
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v10, :cond_0

    .line 646
    sget-object v10, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startDragLocked: win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", resize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 647
    const-string/jumbo v12, ", {"

    .line 646
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 647
    const-string/jumbo v12, ", "

    .line 646
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 647
    const-string/jumbo v12, "}"

    .line 646
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 650
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 651
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 652
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 654
    const/4 v2, 0x0

    .line 655
    .local v2, "delta":I
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_1

    .line 656
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v11, 0x8

    invoke-static {v11, v10}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 657
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 658
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v10, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 659
    .local v5, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v6

    .line 660
    .local v6, "isImeVisible":Z
    :goto_0
    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v10, p1, :cond_1

    .line 661
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    .line 667
    .end local v5    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v6    # "isImeVisible":Z
    :cond_1
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 672
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 682
    :goto_1
    if-eqz p2, :cond_7

    .line 684
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 686
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, p1, v11, v12}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 690
    :cond_2
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    int-to-float v10, v10

    cmpg-float v10, p3, v10

    if-gez v10, :cond_3

    .line 691
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 693
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    int-to-float v10, v10

    cmpl-float v10, p3, v10

    if-lez v10, :cond_4

    .line 694
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 696
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v2

    int-to-float v10, v10

    cmpg-float v10, p4, v10

    if-gez v10, :cond_5

    .line 697
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 699
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    int-to-float v10, v10

    cmpl-float v10, p4, v10

    if-lez v10, :cond_6

    .line 700
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 702
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 706
    :cond_7
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_c

    .line 707
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 708
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 709
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v10, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 710
    .local v7, "stackBehindFreeform":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "task$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    .line 711
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 712
    iput-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mTaskBehindFreeform:Lcom/android/server/wm/Task;

    .line 717
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_9
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v10, :cond_c

    .line 718
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 719
    .local v1, "defaultMinimalSizeOfResizeableTask":I
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformFrameThickness:I

    .line 720
    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    iput-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    .line 721
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMinWidth:I

    if-gez v10, :cond_f

    move v10, v1

    :goto_2
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 722
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMinHeight:I

    if-gez v10, :cond_10

    .end local v1    # "defaultMinimalSizeOfResizeableTask":I
    :goto_3
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 723
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v10, v11, :cond_11

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    :goto_4
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 724
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v10, v11, :cond_12

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    :goto_5
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 725
    new-instance v4, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 726
    .local v4, "displaySize":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-ltz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxWidth:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v10, v11, :cond_13

    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    :goto_6
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 727
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-ltz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxHeight:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v10, v11, :cond_14

    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    :goto_7
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 728
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    if-le v10, v11, :cond_15

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    :goto_8
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 729
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    if-le v10, v11, :cond_16

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    :goto_9
    iput v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 735
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "displaySize":Landroid/graphics/Rect;
    .end local v7    # "stackBehindFreeform":Lcom/android/server/wm/TaskStack;
    .end local v9    # "task$iterator":Ljava/util/Iterator;
    :cond_c
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 644
    return-void

    .line 659
    .restart local v5    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 679
    .end local v5    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_e
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 721
    .restart local v1    # "defaultMinimalSizeOfResizeableTask":I
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v7    # "stackBehindFreeform":Lcom/android/server/wm/TaskStack;
    .restart local v9    # "task$iterator":Ljava/util/Iterator;
    :cond_f
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMinWidth:I

    goto/16 :goto_2

    .line 722
    :cond_10
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v10, Lcom/android/server/wm/Task;->mMinHeight:I

    goto/16 :goto_3

    .line 723
    .end local v1    # "defaultMinimalSizeOfResizeableTask":I
    :cond_11
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    goto :goto_4

    .line 724
    :cond_12
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    goto :goto_5

    .line 726
    .restart local v4    # "displaySize":Landroid/graphics/Rect;
    :cond_13
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto :goto_6

    .line 727
    :cond_14
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_7

    .line 728
    :cond_15
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    goto :goto_8

    .line 729
    :cond_16
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    goto :goto_9
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method unregister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 572
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 573
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unregistering task positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 577
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 584
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 587
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 588
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 590
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 591
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 592
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 596
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 598
    :cond_2
    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 602
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_6

    .line 603
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 606
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->clearSlideOriginalBounds()V

    .line 612
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-nez v0, :cond_5

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateFreeformShadowLightLocationLocked(I)V

    .line 616
    :cond_5
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 617
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTaskBehindFreeform:Lcom/android/server/wm/Task;

    .line 618
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    .line 620
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizing:Z

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_6

    .line 623
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TaskPositioner unregister: guide window is alive, remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskPositioner$1;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 638
    :cond_6
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_7

    .line 639
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 571
    return-void
.end method
