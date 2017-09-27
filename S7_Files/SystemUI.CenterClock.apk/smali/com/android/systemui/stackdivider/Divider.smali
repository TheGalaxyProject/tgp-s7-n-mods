.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;,
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mDockSide:I

.field private mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

.field private mDockedStackExists:Z

.field private mFlingToNewSnapTarget:Z

.field private mFocusedStackId:I

.field private mFocusedTaskId:I

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mMinimized:Z

.field private mShouldAutoResize:Z

.field private mTargetStackId:I

.field private final mTargetTaskRect:Landroid/graphics/Rect;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWaitForAppTransitionFinish:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/Divider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/stackdivider/Divider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;II)Z
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "adjustedRect"    # Landroid/graphics/Rect;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->ensureMinimalSize(ILandroid/graphics/Rect;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/Divider;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->alignTaskBoundsTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/Divider;II)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/Divider;->updateFocusedStackAndTask(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/Divider;ZJ)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetTaskRect:Landroid/graphics/Rect;

    .line 66
    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    .line 70
    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    .line 72
    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    .line 73
    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    .line 55
    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 113
    check-cast v4, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 115
    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    const v6, 0x1050021

    .line 116
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, "size":I
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const/4 v1, 0x1

    .line 119
    .local v1, "landscape":Z
    :goto_1
    if-eqz v1, :cond_2

    move v3, v2

    .line 120
    .local v3, "width":I
    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, -0x1

    .line 121
    .local v0, "height":I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    .line 122
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->setWindowManager(Lcom/android/systemui/stackdivider/DividerWindowManager;)V

    .line 112
    return-void

    .line 115
    .end local v0    # "height":I
    .end local v1    # "landscape":Z
    .end local v2    # "size":I
    .end local v3    # "width":I
    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    .restart local v2    # "size":I
    :cond_1
    move v1, v5

    .line 118
    goto :goto_1

    .line 119
    .restart local v1    # "landscape":Z
    :cond_2
    const/4 v3, -0x1

    .restart local v3    # "width":I
    goto :goto_2

    .line 120
    :cond_3
    move v0, v2

    .restart local v0    # "height":I
    goto :goto_3
.end method

.method private alignTaskBoundsTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le p3, v4, :cond_0

    const/4 v1, 0x1

    .line 453
    .local v1, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le p4, v4, :cond_1

    const/4 v0, 0x1

    .line 454
    .local v0, "adjustHeight":Z
    :goto_1
    if-nez v1, :cond_2

    move v4, v0

    :goto_2
    if-nez v4, :cond_3

    .line 455
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 456
    return-void

    .line 452
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "adjustWidth":Z
    goto :goto_0

    .line 453
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "adjustHeight":Z
    goto :goto_1

    .line 454
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 459
    :cond_3
    if-eqz v1, :cond_4

    .line 460
    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 462
    :cond_4
    if-eqz v0, :cond_5

    .line 463
    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 465
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 466
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 467
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 468
    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    .line 467
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 450
    return-void
.end method

.method private ensureMinimalSize(ILandroid/graphics/Rect;II)Z
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "adjustedRect"    # Landroid/graphics/Rect;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 415
    if-ne p3, v2, :cond_0

    if-ne p4, v2, :cond_0

    .line 416
    return v1

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_4

    .line 420
    if-ne p1, v4, :cond_2

    .line 421
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p4

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 422
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 423
    :cond_2
    if-ne p1, v0, :cond_c

    .line 424
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 425
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p3, :cond_c

    .line 428
    if-ne p1, v4, :cond_8

    .line 429
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v0, :cond_6

    .line 430
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 431
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_5

    :goto_2
    return v0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 432
    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v4, :cond_c

    .line 433
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 434
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_7

    :goto_3
    return v0

    :cond_7
    move v0, v1

    goto :goto_3

    .line 436
    :cond_8
    if-ne p1, v0, :cond_c

    .line 437
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v0, :cond_a

    .line 438
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 439
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_9

    :goto_4
    return v0

    :cond_9
    move v0, v1

    goto :goto_4

    .line 440
    :cond_a
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v4, :cond_c

    .line 441
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 442
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_b

    :goto_5
    return v0

    :cond_b
    move v0, v1

    goto :goto_5

    .line 447
    :cond_c
    return v1
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2
    .param p1, "exists"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method private removeDivider()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    .line 125
    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    .line 129
    :cond_0
    return-void
.end method

.method private updateFocusedStackAndTask(II)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 403
    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    if-eq v0, p2, :cond_0

    .line 404
    iput p2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    .line 406
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    if-eq v0, p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowFocusedStackChanged(I)V

    .line 408
    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    .line 401
    :cond_1
    return-void
.end method

.method private updateMinimizedDockedStack(ZJ)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method private updateTouchable()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    .line 189
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 196
    const-string/jumbo v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 197
    const-string/jumbo v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    return-void
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isDividerMinimized()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 79
    new-instance v2, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 80
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 81
    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    new-instance v2, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    .line 83
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 84
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 87
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    .line 88
    .local v0, "multiWindowEventListener":Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 89
    invoke-static {v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->onMultiWindowSystemFeatureInitialized(Z)V

    .line 91
    new-instance v2, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    .line 94
    new-instance v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 78
    return-void
.end method
